from __future__ import annotations

import argparse
import json
import os
import re
import sys
import time
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Dict, Iterable, List, Mapping, Sequence, Tuple

ANTHROPIC_API_URL = "https://api.anthropic.com/v1/messages"
ANTHROPIC_VERSION = "2023-06-01"


@dataclass(frozen=True)
class ChangedStrings:
    strings: Dict[str, str]
    dataset_titles: Dict[str, str]
    item_texts: Dict[str, str]


def write_change_report(
    *,
    report_path: Path,
    changed: ChangedStrings,
    upstream_repo: str | None = None,
    upstream_ref: str | None = None,
    upstream_sha: str | None = None,
    base_tag: str | None = None,
    report_format: str = "md",
) -> None:
    report_path.parent.mkdir(parents=True, exist_ok=True)

    meta = {
        "upstream_repo": upstream_repo or "",
        "upstream_ref": upstream_ref or "",
        "upstream_sha": upstream_sha or "",
        "base_tag": base_tag or "",
        "counts": {
            "ui_strings": len(changed.strings),
            "dataset_titles": len(changed.dataset_titles),
            "dataset_item_texts": len(changed.item_texts),
        },
        "ui_strings": changed.strings,
        "dataset_titles": changed.dataset_titles,
        "dataset_item_texts": changed.item_texts,
    }

    fmt = report_format.strip().lower()
    if fmt == "json":
        report_path.write_text(json.dumps(meta, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        return
    if fmt != "md":
        raise ValueError("--report-format must be 'md' or 'json'")

    def _md_list(items: Mapping[str, str]) -> str:
        if not items:
            return "(none)\n"
        lines: List[str] = []
        for k in sorted(items.keys()):
            # Use JSON string escaping so \n / quotes are unambiguous.
            lines.append(f"- `{k}`: {json.dumps(items[k], ensure_ascii=False)}")
        return "\n".join(lines) + "\n"

    upstream_line = ""
    if upstream_repo or upstream_ref or upstream_sha:
        upstream_line = f"- Upstream: `{upstream_repo or ''}`@`{upstream_ref or ''}` (`{upstream_sha or ''}`)\n"

    base_line = f"- Baseline tag: `{base_tag}`\n" if base_tag else "- Baseline tag: `<none>`\n"

    out = (
        "# Upstream enUS change report\n\n"
        "This report lists English (enUS) strings that changed upstream.\n"
        "Use it as the source-of-truth for updating translated locale files.\n\n"
        f"{upstream_line}"
        f"{base_line}"
        "\n"
        f"## UI strings changed ({len(changed.strings)})\n"
        f"{_md_list(changed.strings)}\n"
        f"## Dataset titles changed ({len(changed.dataset_titles)})\n"
        f"{_md_list(changed.dataset_titles)}\n"
        f"## Dataset item texts changed ({len(changed.item_texts)})\n"
        f"{_md_list(changed.item_texts)}"
    )

    report_path.write_text(out, encoding="utf-8")


def _read_text(path: Path) -> str:
    # Preserve CRLF when writing by detecting line endings later.
    return path.read_text(encoding="utf-8")


def _detect_line_ending(text: str) -> str:
    return "\r\n" if "\r\n" in text else "\n"


_STRING_LINE_RE = re.compile(
    r"^(?P<indent>[ \t]*)(?P<key>[A-Z0-9_]+)\s*=\s*\"(?P<value>(?:\\.|[^\"])*)\"\s*,\s*$",
    re.M,
)


def parse_strings_table(lua_text: str) -> Dict[str, str]:
    # Extracts simple top-level KEY = "value", lines inside STRINGS tables.
    # Ignores nested blocks such as TRACKING_CREST_NAMES_BY_ID.
    result: Dict[str, str] = {}
    for match in _STRING_LINE_RE.finditer(lua_text):
        key = match.group("key")
        value = match.group("value")
        result[key] = value
    return result


_DATASET_TITLE_RE = re.compile(
    r"\bid\s*=\s*\"(?P<id>[^\"]+)\"\s*,\s*\n\s*title\s*=\s*\"(?P<title>(?:\\.|[^\"])*)\"\s*,",
    re.M,
)

_DATASET_ITEM_TEXT_RE = re.compile(
    r"\{\s*id\s*=\s*\"(?P<id>[^\"]+)\"\s*,\s*text\s*=\s*\"(?P<text>(?:\\.|[^\"])*)\"\s*\}\s*,",
    re.M,
)


def parse_dataset_titles(lua_text: str) -> Dict[str, str]:
    out: Dict[str, str] = {}
    for match in _DATASET_TITLE_RE.finditer(lua_text):
        out[match.group("id")] = match.group("title")
    return out


def parse_dataset_item_texts(lua_text: str) -> Dict[str, str]:
    # Note: item IDs can repeat; we keep the first-seen text as canonical.
    out: Dict[str, str] = {}
    for match in _DATASET_ITEM_TEXT_RE.finditer(lua_text):
        item_id = match.group("id")
        if item_id not in out:
            out[item_id] = match.group("text")
    return out


def compute_changed_strings(old_enus: str, new_enus: str, old_data: str, new_data: str) -> ChangedStrings:
    old_strings = parse_strings_table(old_enus)
    new_strings = parse_strings_table(new_enus)
    changed_strings: Dict[str, str] = {}
    for key, new_value in new_strings.items():
        old_value = old_strings.get(key)
        if old_value != new_value:
            changed_strings[key] = new_value

    old_titles = parse_dataset_titles(old_data)
    new_titles = parse_dataset_titles(new_data)
    changed_titles: Dict[str, str] = {}
    for ds_id, title in new_titles.items():
        if old_titles.get(ds_id) != title:
            changed_titles[ds_id] = title

    old_items = parse_dataset_item_texts(old_data)
    new_items = parse_dataset_item_texts(new_data)
    changed_items: Dict[str, str] = {}
    for item_id, text in new_items.items():
        if old_items.get(item_id) != text:
            changed_items[item_id] = text

    return ChangedStrings(strings=changed_strings, dataset_titles=changed_titles, item_texts=changed_items)


def chunk_dict(d: Mapping[str, str], chunk_size: int) -> List[Dict[str, str]]:
    items = list(d.items())
    chunks: List[Dict[str, str]] = []
    for i in range(0, len(items), chunk_size):
        chunk = dict(items[i : i + chunk_size])
        chunks.append(chunk)
    return chunks


def lua_escape(s: str) -> str:
    # Input is the inner content of a Lua double-quoted string.
    # Output should be safe to embed inside "...".
    s = s.replace("\\", "\\\\")
    s = s.replace('"', '\\"')
    return s


def _format_spec_counts(s: str) -> Dict[str, int]:
    # Extremely small validator: keep %s/%d/%f and escaped %% counts.
    tokens = re.findall(r"%(?:%|[sdif])", s)
    counts: Dict[str, int] = {}
    for t in tokens:
        counts[t] = counts.get(t, 0) + 1
    return counts


def validate_format_specs(src: str, translated: str) -> None:
    if _format_spec_counts(src) != _format_spec_counts(translated):
        raise ValueError(
            f"Format specifiers mismatch. src={_format_spec_counts(src)} translated={_format_spec_counts(translated)}"
        )


def anthropic_translate_map(
    *,
    locale: str,
    model: str,
    api_key: str,
    glossary: Mapping[str, str],
    items: Mapping[str, str],
    item_kind: str,
    max_retries: int = 3,
) -> Dict[str, str]:
    """Translate a mapping of ids/keys->English strings. Returns mapping with same keys."""

    try:
        import requests  # type: ignore
    except Exception as e:  # noqa: BLE001
        raise RuntimeError(
            "Missing dependency 'requests'. Install it (pip install requests) or run with --mock/--dry-run."
        ) from e

    glossary_lines = "\n".join([f"- {k} -> {v}" for k, v in glossary.items()]) if glossary else "(none)"
    payload = {
        "model": model,
        "max_tokens": 4096,
        "temperature": 0.2,
        "messages": [
            {
                "role": "user",
                "content": (
                    "You are translating World of Warcraft addon text.\n"
                    "Return ONLY valid JSON (no markdown, no commentary).\n\n"
                    f"Target locale: {locale}\n"
                    f"Item type: {item_kind}\n\n"
                    "Glossary (must be respected exactly when these English terms appear):\n"
                    f"{glossary_lines}\n\n"
                    "Rules:\n"
                    "- Preserve meaning; keep WoW terminology consistent.\n"
                    "- Keep any formatting tokens exactly (e.g., %s, %d, %f, %%).\n"
                    "- Keep explicit \\n sequences as \\n (do not turn them into real newlines).\n"
                    "- Keep punctuation like trailing ':' if present in the source.\n"
                    "- Output JSON object where keys are unchanged and values are translated strings.\n\n"
                    "Input JSON:\n"
                    + json.dumps(items, ensure_ascii=False)
                ),
            }
        ],
    }

    headers = {
        "content-type": "application/json",
        "x-api-key": api_key,
        "anthropic-version": ANTHROPIC_VERSION,
    }

    last_error: Exception | None = None
    for attempt in range(1, max_retries + 1):
        try:
            resp = requests.post(ANTHROPIC_API_URL, headers=headers, data=json.dumps(payload), timeout=120)
            if resp.status_code >= 400:
                raise RuntimeError(f"Anthropic API error {resp.status_code}: {resp.text[:500]}")

            data = resp.json()
            content = data.get("content")
            if not content or not isinstance(content, list) or not content[0].get("text"):
                raise RuntimeError("Unexpected Anthropic response shape")
            text = content[0]["text"].strip()

            translated = json.loads(text)
            if not isinstance(translated, dict):
                raise ValueError("Model output is not a JSON object")

            # Normalize types
            out: Dict[str, str] = {}
            for k in items.keys():
                if k not in translated:
                    raise ValueError(f"Missing key in output: {k}")
                v = translated[k]
                if not isinstance(v, str):
                    raise ValueError(f"Non-string value for {k}")
                out[k] = v
            return out
        except Exception as e:  # noqa: BLE001
            last_error = e
            sleep_s = 2**attempt
            print(f"Translate attempt {attempt}/{max_retries} failed: {e}. Retrying in {sleep_s}s...", file=sys.stderr)
            time.sleep(sleep_s)

    raise RuntimeError(f"Translation failed after {max_retries} attempts") from last_error


def mock_translate_map(items: Mapping[str, str], locale: str) -> Dict[str, str]:
    # Deterministic placeholder translation for local testing.
    # Keeps original content intact and appends a suffix to force a file change.
    return {k: f"{v} (mock:{locale})" for k, v in items.items()}


def update_strings_file(path: Path, updates: Mapping[str, str]) -> None:
    if not updates:
        return

    original = _read_text(path)
    line_ending = _detect_line_ending(original)
    # Work in LF internally; restore original EOL style at write time.
    original_norm = original.replace("\r\n", "\n")
    text = original_norm

    for key, new_value in updates.items():
        # Replace existing key line if present.
        pattern = re.compile(
            rf"^(?P<indent>[ \t]*){re.escape(key)}\s*=\s*\"(?P<value>(?:\\.|[^\"])*)\"\s*,\s*$",
            re.M,
        )
        if pattern.search(text):
            def _repl(m: re.Match[str]) -> str:
                indent = m.group("indent")
                return f"{indent}{key} = \"{lua_escape(new_value)}\","  # keep trailing comma

            text = pattern.sub(_repl, text, count=1)
        else:
            # Insert before closing '}' of STRINGS table.
            m = re.search(r"\n\}\s*\n\s*for\s+key\s*,\s*value\s+in\s+pairs\(STRINGS\)\s+do", text)
            if not m:
                raise RuntimeError(f"Could not find STRINGS table end in {path}")
            insert_at = m.start() + 1  # after the newline

            # Guess indentation from nearby keys.
            indent_match = re.search(r"\n(?P<indent>[ \t]+)[A-Z0-9_]+\s*=\s*\"", text)
            indent = indent_match.group("indent") if indent_match else "    "
            insertion = f"{indent}{key} = \"{lua_escape(new_value)}\",\n"
            text = text[:insert_at] + insertion + text[insert_at:]

    if text != original_norm:
        out = text
        if line_ending == "\r\n":
            out = out.replace("\n", "\r\n")
        path.write_text(out, encoding="utf-8")


def update_dataset_file(path: Path, title_updates: Mapping[str, str], item_updates: Mapping[str, str]) -> None:
    if not title_updates and not item_updates:
        return

    original = _read_text(path)
    line_ending = _detect_line_ending(original)
    original_norm = original.replace("\r\n", "\n")
    text = original_norm

    for ds_id, new_title in title_updates.items():
        # Replace title for a specific dataset block based on its id.
        pattern = re.compile(
            rf"(\bid\s*=\s*\"{re.escape(ds_id)}\"\s*,\s*\n\s*title\s*=\s*\")(?:\\.|[^\"])*(\"\s*,)",
            re.M,
        )
        text, n = pattern.subn(rf"\1{lua_escape(new_title)}\2", text, count=1)
        if n == 0:
            # Non-fatal: dataset might not exist in locale yet.
            continue

    for item_id, new_text in item_updates.items():
        # Replace all occurrences of this item id (it may appear in multiple weeks).
        pattern = re.compile(
            rf"(\{{\s*id\s*=\s*\"{re.escape(item_id)}\"\s*,\s*text\s*=\s*\")(?:\\.|[^\"])*(\"\s*\}}\s*,)",
            re.M,
        )
        text = pattern.sub(rf"\1{lua_escape(new_text)}\2", text)

    if text != original_norm:
        out = text
        if line_ending == "\r\n":
            out = out.replace("\n", "\r\n")
        path.write_text(out, encoding="utf-8")


def main(argv: Sequence[str]) -> int:
    parser = argparse.ArgumentParser(description="Translate locale files from upstream enUS diffs using Claude.")
    parser.add_argument("--context", required=True, type=Path)
    parser.add_argument("--old-enus", required=True, type=Path)
    parser.add_argument("--new-enus", required=True, type=Path)
    parser.add_argument("--old-enus-data", required=True, type=Path)
    parser.add_argument("--new-enus-data", required=True, type=Path)
    parser.add_argument("--locales-dir", required=True, type=Path)
    parser.add_argument("--languages", nargs="+", required=True)
    parser.add_argument("--chunk-size", type=int, default=30)
    parser.add_argument(
        "--report",
        type=Path,
        default=None,
        help="Write a change report (md or json) describing what changed in enUS.",
    )
    parser.add_argument(
        "--report-format",
        choices=["md", "json"],
        default="md",
        help="Format for --report output.",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Do not translate or write files; print what would be translated.",
    )
    parser.add_argument(
        "--mock",
        action="store_true",
        help="Use a deterministic mock translator (no API calls) and write results.",
    )
    args = parser.parse_args(argv)

    api_key = os.environ.get("ANTHROPIC_API_KEY", "").strip()
    model = os.environ.get("ANTHROPIC_MODEL", "claude-sonnet-4-6").strip()

    if not args.dry_run and not args.mock:
        if not api_key:
            print("ANTHROPIC_API_KEY is not set", file=sys.stderr)
            return 2
        if not model:
            print("ANTHROPIC_MODEL is not set", file=sys.stderr)
            return 2

    # Tolerate a UTF-8 BOM if an editor/formatter added it.
    context_data = json.loads(args.context.read_text(encoding="utf-8-sig"))
    if not isinstance(context_data, dict):
        raise SystemExit("translation context must be a JSON object")

    old_enus = _read_text(args.old_enus)
    new_enus = _read_text(args.new_enus)
    old_data = _read_text(args.old_enus_data)
    new_data = _read_text(args.new_enus_data)

    changed = compute_changed_strings(old_enus, new_enus, old_data, new_data)
    if not changed.strings and not changed.dataset_titles and not changed.item_texts:
        print("No changed strings detected; nothing to translate.")
        return 0

    if args.report:
        write_change_report(
            report_path=args.report,
            changed=changed,
            upstream_repo=os.environ.get("UPSTREAM_REPO"),
            upstream_ref=os.environ.get("UPSTREAM_REF"),
            upstream_sha=os.environ.get("UPSTREAM_SHA"),
            base_tag=os.environ.get("BASE_TAG"),
            report_format=args.report_format,
        )

    if args.dry_run:
        print("Dry run: would translate the following changes from enUS:")
        print(f"- UI strings changed: {len(changed.strings)}")
        print(f"- Dataset titles changed: {len(changed.dataset_titles)}")
        print(f"- Dataset item texts changed: {len(changed.item_texts)}")
        if changed.strings:
            sample = list(changed.strings.keys())[:10]
            print(f"  UI keys (sample): {', '.join(sample)}")
        return 0

    locales_dir: Path = args.locales_dir
    for locale in args.languages:
        print(f"==> Translating locale {locale}")
        glossary = context_data.get(locale, {})
        if glossary is None:
            glossary = {}
        if not isinstance(glossary, dict):
            raise SystemExit(f"Glossary for {locale} must be an object")

        strings_path = locales_dir / f"{locale}.lua"
        data_path = locales_dir / f"{locale}_Data.lua"

        # --- UI strings ---
        existing_strings = parse_strings_table(_read_text(strings_path)) if strings_path.exists() else {}
        pending_strings: Dict[str, str] = {}
        for k, en_text in changed.strings.items():
            # If key exists and en text changed, re-translate; if missing, translate.
            pending_strings[k] = en_text
        if pending_strings:
            translated_strings: Dict[str, str] = {}
            for chunk in chunk_dict(pending_strings, args.chunk_size):
                if args.mock:
                    out = mock_translate_map(chunk, locale)
                else:
                    out = anthropic_translate_map(
                        locale=locale,
                        model=model,
                        api_key=api_key,
                        glossary=glossary,
                        items=chunk,
                        item_kind="ui_strings",
                    )
                # Validate format tokens for each string
                for key, src in chunk.items():
                    validate_format_specs(src, out[key])
                translated_strings.update(out)

            update_strings_file(strings_path, translated_strings)

        # --- Dataset titles + items ---
        existing_titles = parse_dataset_titles(_read_text(data_path)) if data_path.exists() else {}
        existing_items = parse_dataset_item_texts(_read_text(data_path)) if data_path.exists() else {}

        pending_titles = dict(changed.dataset_titles)
        pending_items = dict(changed.item_texts)

        translated_titles: Dict[str, str] = {}
        translated_items: Dict[str, str] = {}

        if pending_titles:
            for chunk in chunk_dict(pending_titles, args.chunk_size):
                if args.mock:
                    out = mock_translate_map(chunk, locale)
                else:
                    out = anthropic_translate_map(
                        locale=locale,
                        model=model,
                        api_key=api_key,
                        glossary=glossary,
                        items=chunk,
                        item_kind="dataset_titles",
                    )
                translated_titles.update(out)

        if pending_items:
            for chunk in chunk_dict(pending_items, args.chunk_size):
                if args.mock:
                    out = mock_translate_map(chunk, locale)
                else:
                    out = anthropic_translate_map(
                        locale=locale,
                        model=model,
                        api_key=api_key,
                        glossary=glossary,
                        items=chunk,
                        item_kind="dataset_item_texts",
                    )
                translated_items.update(out)

        if translated_titles or translated_items:
            update_dataset_file(data_path, translated_titles, translated_items)

    print("Translation complete.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
