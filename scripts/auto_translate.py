#!/usr/bin/env python3
"""
auto_translate.py  –  Translate missing checklist data using the Claude API.

Reads enUS_Data.lua as the master dataset, compares each locale _Data.lua file
to find missing section titles and item texts (matched by stable `id` values),
then calls Claude with WoW translation context to fill the gaps.

New items are appended inside the correct section's items block and flagged with
  -- ⚠️ UNVERIFIED  so native speakers can review.
Completely new sections are appended before the final  reg.data[LOCALE] = DATASET
line.

Setup:
    pip install anthropic
    set ANTHROPIC_API_KEY=sk-ant-...   (Windows)
    $env:ANTHROPIC_API_KEY = "sk-ant-..."  (PowerShell)

Usage:
    python scripts/auto_translate.py                      # all 8 locales
    python scripts/auto_translate.py --locale deDE        # one locale
    python scripts/auto_translate.py --dry-run            # preview, no API call
    python scripts/auto_translate.py --model claude-haiku-4-5  # cheaper/faster model
"""

import argparse
import json
import os
import pathlib
import re
import sys

# Load .env if present (local dev convenience – never committed)
_env_file = pathlib.Path(__file__).resolve().parent.parent / ".env"
if _env_file.exists():
    for _line in _env_file.read_text(encoding="utf-8").splitlines():
        _line = _line.strip()
        if _line and not _line.startswith("#") and "=" in _line:
            _k, _, _v = _line.partition("=")
            os.environ.setdefault(_k.strip(), _v.strip())

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
SCRIPT_DIR   = pathlib.Path(__file__).resolve().parent
REPO_ROOT    = SCRIPT_DIR.parent
LOCALES_DIR  = REPO_ROOT / "locales"
CONTEXT_FILE = REPO_ROOT / "translation-context.json"

# enUS.lua – use MAIN_ADDON_PATH env var if set, else fall back to sibling repo layout
_addon_root  = (pathlib.Path(os.environ["MAIN_ADDON_PATH"])
                if "MAIN_ADDON_PATH" in os.environ
                else REPO_ROOT.parent / "Larias-Weekly-Midnight-Checklist")
ENUS_FILE    = _addon_root / "locales" / "enUS_Data.lua"

SUPPORTED_LOCALES = ["deDE", "esES", "esMX", "frFR", "itIT", "koKR", "ptBR", "ruRU"]

# ---------------------------------------------------------------------------
# Data file parser
# ---------------------------------------------------------------------------

def _count_braces(line: str):
    """Return (opens, closes) ignoring characters after -- comments."""
    code = line.split("--")[0]
    return code.count("{"), code.count("}")


def parse_data_file(text: str) -> list:
    """Parse a _Data.lua file and return a list of section dicts:

    [
        {
            "id":        "e225d803",
            "title":     "Early Access ...",
            "start_pos": <char offset of opening { line>,
            "end_pos":   <char offset just past closing }, line>,
            "items": [
                {"id": "f4b92a82", "text": "...",
                 "line_pos": <start offset>, "line_end": <end offset>},
                ...
            ],
        },
        ...
    ]
    """
    _re_id    = re.compile(r'\bid\s*=\s*"([^"]+)"')
    _re_title = re.compile(r'\btitle\s*=\s*"((?:[^"\\]|\\.)*)"')
    _re_text  = re.compile(r'\btext\s*=\s*"((?:[^"\\]|\\.)*)"')
    _re_items = re.compile(r'\bitems\s*=\s*\{')

    sections = []
    current  = None
    in_items = False
    depth    = 0
    pos      = 0

    for line in text.splitlines(keepends=True):
        opens, closes = _count_braces(line)

        # A '{' at depth 1 starts a new section block (depth 1 == inside DATASET)
        if depth == 1 and opens > closes:
            current  = {"id": None, "title": None, "items": [], "start_pos": pos}
            in_items = False

        if current is not None:
            code = line.split("--")[0]

            if not in_items:
                if _re_items.search(code):
                    in_items = True
                else:
                    m = _re_id.search(code)
                    if m and current["id"] is None:
                        current["id"] = m.group(1)
                    m = _re_title.search(code)
                    if m:
                        current["title"] = m.group(1)
            else:
                # Single-line items: { id = "...", text = "..." },
                m_id   = _re_id.search(code)
                m_text = _re_text.search(code)
                if m_id and m_text:
                    current["items"].append({
                        "id":       m_id.group(1),
                        "text":     m_text.group(1),
                        "line_pos": pos,
                        "line_end": pos + len(line),
                    })

        depth += opens - closes

        # Returning to depth 1 means the section block just closed
        if depth == 1 and current is not None:
            current["end_pos"] = pos + len(line)
            if current["id"]:
                sections.append(current)
            current  = None
            in_items = False

        pos += len(line)

    return sections


def build_lookup(sections: list) -> dict:
    """Return {section_id: {item_id: text, ...}, ...}"""
    return {
        s["id"]: {item["id"]: item["text"] for item in s["items"]}
        for s in sections
    }


def prune_locale(file_text: str, locale_sections: list,
                 valid_section_ids: set, valid_items: dict) -> tuple:
    """Remove stale sections and items whose IDs no longer exist in enUS.

    valid_section_ids: set of section IDs still present in enUS_Data.lua
    valid_items:       {section_id: set(item_ids)} from enUS_Data.lua

    Returns (updated_text, sections_pruned, items_pruned).
    """
    removals = []  # list of (start, end) char ranges to delete

    for sec in locale_sections:
        sid = sec["id"]
        if sid not in valid_section_ids:
            removals.append((sec["start_pos"], sec["end_pos"]))
        else:
            en_ids = valid_items.get(sid, set())
            for item in sec["items"]:
                if item["id"] not in en_ids:
                    removals.append((item["line_pos"], item["line_end"]))

    if not removals:
        return file_text, 0, 0

    sections_pruned = sum(
        1 for s in locale_sections if s["id"] not in valid_section_ids
    )
    items_pruned = sum(
        1 for s in locale_sections if s["id"] in valid_section_ids
        for item in s["items"]
        if item["id"] not in valid_items.get(s["id"], set())
    )

    # Apply removals in reverse order so earlier offsets stay valid
    result = file_text
    for start, end in sorted(removals, key=lambda r: r[0], reverse=True):
        result = result[:start] + result[end:]

    return result, sections_pruned, items_pruned


# ---------------------------------------------------------------------------
# Build the translation prompt
# ---------------------------------------------------------------------------

def build_prompt(locale_code: str, missing_sections: list, context: dict) -> str:
    """missing_sections is a list of:
        {"id": sec_id, "title": en_title, "items": [{"id": item_id, "text": en_text}, ...]}
    Only items that need translation are present; a section with no title_needs_translation
    but with items is still included.
    """
    lctx  = context.get(locale_code, {})
    notes = lctx.get("_notes", {})

    terms_lines = []
    for term, val in lctx.items():
        if term.startswith("_"):
            continue
        if isinstance(val, str):
            terms_lines.append(f"  {term} → {val}")
        elif isinstance(val, dict) and term == "Crest tiers":
            for tid, tname in val.items():
                terms_lines.append(f"  Crest tier [{tid}] → {tname}")

    notes_lines = [f"  {k}: {v}" for k, v in notes.items()]

    # Build the items-to-translate block
    lines = []
    for sec in missing_sections:
        lines.append(f"  -- SECTION {sec['id']}")
        if sec.get("translate_title"):
            lines.append(f'  {sec["id"]}__title = "{sec["title"]}"')
        for item in sec["items"]:
            lines.append(f'  {item["id"]} = "{item["text"]}"')
    items_block = "\n".join(lines)

    return f"""\
You are translating a World of Warcraft addon from English to {locale_code}.
This is checklist data – section titles and task descriptions for weekly WoW activities.

\u2550\u2550\u2550 CRITICAL FORMAT RULES \u2550\u2550\u2550
\u2022 Output ONLY lines matching one of these two patterns:
      SOMEID = "translated value",
      SOMEID__title = "translated section title",
\u2022 Do NOT write \\uXXXX unicode escapes \u2014 write literal UTF-8 characters only.
\u2022 Preserve ALL % format specifiers exactly (%s, %d, \\n, etc.) \u2014 never translate them.
\u2022 Do NOT add or remove entries. Translate exactly the entries listed below.
\u2022 Append  -- \u26a0\ufe0f UNVERIFIED  after lines containing WoW-specific terms you are not 100% certain about.
\u2022 Do not add commentary, code blocks, or explanations \u2014 only the assignment lines.
\u2022 IDs (the left-hand side) must never be changed.

\u2550\u2550\u2550 VERIFIED WoW TERMINOLOGY for {locale_code} \u2550\u2550\u2550
{chr(10).join(terms_lines) if terms_lines else "  (none provided)"}

\u2550\u2550\u2550 IMPORTANT NOTES \u2550\u2550\u2550
{chr(10).join(notes_lines) if notes_lines else "  (none)"}

\u2550\u2550\u2550 ENTRIES TO TRANSLATE (English values shown) \u2550\u2550\u2550
{items_block}

Return the translated lines only, preserving the entry order above."""


# ---------------------------------------------------------------------------
# File updaters
# ---------------------------------------------------------------------------

def _find_items_block_end(text: str, search_from: int) -> int:
    """Starting at search_from, find 'items = {' then return the index of
    the CHARACTER JUST BEFORE the matching closing '}' of that items block.
    Returns -1 if not found."""
    items_open = text.find("items = {", search_from)
    if items_open == -1:
        return -1
    # Start counting from the '{' of 'items = {'
    brace_start = text.index("{", items_open)
    depth = 0
    for i in range(brace_start, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return i   # index of the closing }
    return -1


def insert_items_into_section(file_text: str, section_id: str,
                               new_items: list, enus_item_ids: list) -> str:
    """Insert (item_id, lua_line) pairs into the items block in enUS order.

    new_items:     list of (item_id, lua_line_string)
    enus_item_ids: ordered list of item IDs from the enUS section

    For each new item, finds the first enUS item that comes after it which
    already exists in the locale file, and inserts before that line.
    Items with no following anchor are appended before the closing brace.
    Re-parses the section from file_text each call so positions are always fresh.
    """
    # Re-parse to get current positions (may have shifted from earlier inserts)
    sections   = parse_data_file(file_text)
    locale_sec = next((s for s in sections if s["id"] == section_id), None)
    if locale_sec is None:
        raise ValueError(f"Section id '{section_id}' not found in locale file.")

    locale_pos = {item["id"]: item["line_pos"] for item in locale_sec["items"]}

    positional = []  # (insert_before_pos, lua_line)
    end_lines  = []  # lines with no following anchor → append before closing }

    for item_id, lua_line in new_items:
        try:
            idx = enus_item_ids.index(item_id)
        except ValueError:
            idx = len(enus_item_ids)

        insert_pos = None
        for next_id in enus_item_ids[idx + 1:]:
            if next_id in locale_pos:
                insert_pos = locale_pos[next_id]
                break

        if insert_pos is not None:
            positional.append((insert_pos, lua_line))
        else:
            end_lines.append(lua_line)

    result = file_text

    # Apply positional insertions in reverse order so earlier offsets stay valid
    for pos, lua_line in sorted(positional, key=lambda x: x[0], reverse=True):
        formatted = f"            {lua_line.strip()}\n"
        result = result[:pos] + formatted + result[pos:]

    # Append remaining items before the items block closing brace
    if end_lines:
        id_pat    = re.compile(r'\bid\s*=\s*"' + re.escape(section_id) + r'"')
        m         = id_pat.search(result)
        close_idx = _find_items_block_end(result, m.start())
        if close_idx == -1:
            raise ValueError(f"Cannot find items block end for section '{section_id}'.")
        block = (
            "\n"
            + "\n".join(f"            {ln.strip()}" for ln in end_lines)
            + "\n        "
        )
        result = result[:close_idx] + block + result[close_idx:]

    return result


# Regex to find the end of DATASET (closing '}' followed by blank line then reg.data)
_DATASET_END = re.compile(r'^}\s*\r?\n(?:\r?\n)*reg\.data\b', re.MULTILINE)


def append_new_section(file_text: str, section_lua: str) -> str:
    """Append a complete section block before the reg.data[...] = DATASET line."""
    m = _DATASET_END.search(file_text)
    if not m:
        raise ValueError("Cannot locate end of DATASET table (expected '}\\n\\nreg.data ...')")
    insert_at = m.start() + 1  # just after the closing '}'
    return file_text[:insert_at] + "\n" + section_lua + "\n" + file_text[insert_at:]


def build_section_lua(section_id: str, section_title: str,
                      item_pairs: list, unverified_title: bool) -> str:
    """Build a complete Lua section block string from translated data.

    item_pairs: list of (item_id, translated_text, unverified_flag)
    """
    lines = []
    title_flag = "  -- \u26a0\ufe0f UNVERIFIED" if unverified_title else ""
    lines.append("    {")
    lines.append(f'        id = "{section_id}",')
    lines.append(f'        title = "{section_title}",{title_flag}')
    lines.append("        items = {")
    for item_id, item_text, item_unv in item_pairs:
        flag = "  -- \u26a0\ufe0f UNVERIFIED" if item_unv else ""
        lines.append(f'            {{ id = "{item_id}", text = "{item_text}" }},{flag}')
    lines.append("        },")
    lines.append("    },")
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Parse Claude's response
# ---------------------------------------------------------------------------
_RESPONSE_LINE = re.compile(
    r'^([A-Za-z0-9_]+(?:__title)?)\s*=\s*"((?:[^"\\]|\\.)*)"'
)


def parse_response(raw: str) -> dict:
    """Return {id_or_id__title: (translated_text, unverified_flag)}."""
    raw = re.sub(r"^```[a-z]*\n?", "", raw, flags=re.MULTILINE)
    raw = re.sub(r"\n?```$", "", raw)
    result = {}
    for line in raw.splitlines():
        line = line.strip()
        m = _RESPONSE_LINE.match(line)
        if m:
            key  = m.group(1)
            text = m.group(2)
            unverified = "UNVERIFIED" in line
            result[key] = (text, unverified)
    return result


# ---------------------------------------------------------------------------
# Per-locale translation
# ---------------------------------------------------------------------------

def translate_locale(locale_code: str, enus_sections: list, context: dict,
                     client, args) -> int:
    data_path = LOCALES_DIR / f"{locale_code}_Data.lua"
    if not data_path.exists():
        print(f"  [{locale_code}] SKIP – file not found: {data_path}")
        return 0

    file_text       = data_path.read_text(encoding="utf-8")
    locale_sections = parse_data_file(file_text)

    # ── Prune stale entries ───────────────────────────────────────────────
    valid_section_ids = {s["id"] for s in enus_sections}
    valid_items       = {s["id"]: {it["id"] for it in s["items"]}
                         for s in enus_sections}
    pruned_text, secs_pruned, items_pruned = prune_locale(
        file_text, locale_sections, valid_section_ids, valid_items
    )
    if secs_pruned or items_pruned:
        print(f"  [{locale_code}] Pruning {secs_pruned} stale section(s) and "
              f"{items_pruned} stale item(s) no longer in enUS.")
        if not args.dry_run:
            file_text       = pruned_text
            locale_sections = parse_data_file(file_text)

    locale_lookup = build_lookup(locale_sections)
    locale_ids    = {s["id"] for s in locale_sections}

    # ── Collect what needs translating ────────────────────────────────────
    work = []   # list of {id, en_title, translate_title, items, new_section}
    for sec in enus_sections:
        sid = sec["id"]
        if sid not in locale_ids:
            # Whole section is missing – translate title + all items
            work.append({
                "id":              sid,
                "title":           sec["title"],
                "translate_title": True,
                "items":           [{"id": it["id"], "text": it["text"]}
                                    for it in sec["items"]],
                "new_section":     True,
            })
        else:
            existing_items = locale_lookup.get(sid, {})
            missing_items = [
                {"id": it["id"], "text": it["text"]}
                for it in sec["items"]
                if it["id"] not in existing_items
            ]
            if missing_items:
                work.append({
                    "id":              sid,
                    "title":           sec["title"],
                    "translate_title": False,
                    "items":           missing_items,
                    "new_section":     False,
                })

    # ── If only pruning was needed, write and return ──────────────────────
    if not work:
        if (secs_pruned or items_pruned) and not args.dry_run:
            data_path.write_text(file_text, encoding="utf-8")
            print(f"  [{locale_code}] \u2713 Pruning written; no new translations needed.")
        elif not secs_pruned and not items_pruned:
            print(f"  [{locale_code}] \u2713 Fully up to date – nothing to do.")
        return 0

    total_items = sum(len(s["items"]) for s in work)
    new_secs    = sum(1 for s in work if s.get("new_section"))
    print(f"  [{locale_code}] {len(work)} section(s) need attention "
          f"({total_items} item(s), {new_secs} new section(s)).")
    for s in work:
        label = "NEW SECTION" if s.get("new_section") else "missing items"
        print(f"    \u2022 [{s['id']}] {s['title'][:60]}  ({label})")

    if args.dry_run:
        print(f"  [{locale_code}] DRY RUN \u2013 skipping API call.")
        return total_items

    # ── Call Claude ───────────────────────────────────────────────────────
    prompt = build_prompt(locale_code, work, context)
    response = client.messages.create(
        model=args.model,
        max_tokens=4096,
        messages=[{"role": "user", "content": prompt}],
    )
    translated = parse_response(response.content[0].text)

    if not translated:
        print(f"  [{locale_code}] WARNING: API returned no translatable lines.")
        # Still write if pruning happened
        if secs_pruned or items_pruned:
            data_path.write_text(file_text, encoding="utf-8")
        return 0

    # ── Apply translations (starting from post-prune file_text) ───────────
    enus_sec_map = {s["id"]: s for s in enus_sections}
    updated = file_text
    applied = 0
    for sec in work:
        sid = sec["id"]

        if sec.get("new_section"):
            title_key = f"{sid}__title"
            trans_title, title_unv = translated.get(title_key, (sec["title"], True))
            item_pairs = []
            for it in sec["items"]:
                iid = it["id"]
                trans_text, item_unv = translated.get(iid, (it["text"], True))
                item_pairs.append((iid, trans_text, item_unv))
            section_lua = build_section_lua(sid, trans_title, item_pairs, title_unv)
            try:
                updated = append_new_section(updated, section_lua)
                applied += len(item_pairs)
                print(f"    [{locale_code}] Appended new section [{sid}] "
                      f"with {len(item_pairs)} item(s).")
            except ValueError as e:
                print(f"    [{locale_code}] ERROR appending section [{sid}]: {e}")
        else:
            enus_item_ids = [it["id"] for it in enus_sec_map[sid]["items"]]
            new_items = []
            for it in sec["items"]:
                iid = it["id"]
                trans_text, item_unv = translated.get(iid, (it["text"], True))
                flag = "  -- \u26a0\ufe0f UNVERIFIED" if item_unv else ""
                new_items.append((iid, f'{{ id = "{iid}", text = "{trans_text}" }},{flag}'))
            try:
                updated = insert_items_into_section(updated, sid, new_items, enus_item_ids)
                applied += len(new_items)
                print(f"    [{locale_code}] Inserted {len(new_items)} item(s) "
                      f"into section [{sid}].")
            except ValueError as e:
                print(f"    [{locale_code}] ERROR inserting into section [{sid}]: {e}")

    data_path.write_text(updated, encoding="utf-8")
    print(f"  [{locale_code}] \u2713 Wrote {applied} translated entry(ies).")
    return applied


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description="Translate missing WoW addon checklist data using Claude.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    parser.add_argument(
        "--locale", metavar="CODE",
        help="Translate a single locale (e.g. deDE). Omit to do all 8.",
    )
    parser.add_argument(
        "--api-key", metavar="KEY",
        help="Anthropic API key. Defaults to ANTHROPIC_API_KEY environment variable.",
    )
    parser.add_argument(
        "--model", default="claude-sonnet-4-5",
        help="Claude model to use (default: claude-sonnet-4-5).",
    )
    parser.add_argument(
        "--enus", metavar="PATH", default=str(ENUS_FILE),
        help="Path to enUS_Data.lua if the main repo is in a non-standard location.",
    )
    parser.add_argument(
        "--dry-run", action="store_true",
        help="Show what is missing without calling the API.",
    )
    args = parser.parse_args()

    # ── Validate / resolve enUS path ──────────────────────────────────────
    enus_path = pathlib.Path(args.enus)
    if not enus_path.exists():
        print(f"ERROR: enUS_Data.lua not found at:\n  {enus_path}")
        print("Pass the correct path with --enus or check the repo layout.")
        sys.exit(1)

    # ── Load shared resources ─────────────────────────────────────────────
    context       = json.loads(CONTEXT_FILE.read_text(encoding="utf-8-sig"))
    enus_sections = parse_data_file(enus_path.read_text(encoding="utf-8"))
    total_items   = sum(len(s["items"]) for s in enus_sections)
    print(f"Loaded {len(enus_sections)} sections / {total_items} items from {enus_path.name}")

    # ── API client ────────────────────────────────────────────────────────
    client = None
    if not args.dry_run:
        api_key = args.api_key or os.environ.get("ANTHROPIC_API_KEY")
        if not api_key:
            print("ERROR: Anthropic API key required.\n"
                  "Set the ANTHROPIC_API_KEY environment variable or pass --api-key.")
            sys.exit(1)
        try:
            import anthropic as _ant
        except ImportError:
            print("ERROR: anthropic package not installed.\nRun:  pip install anthropic")
            sys.exit(1)
        client = _ant.Anthropic(api_key=api_key)

    # ── Run ───────────────────────────────────────────────────────────────
    targets = [args.locale] if args.locale else SUPPORTED_LOCALES
    total   = 0
    for loc in targets:
        total += translate_locale(loc, enus_sections, context, client, args)

    mode = "DRY RUN" if args.dry_run else "Done"
    print(f"\n{mode}. {total} item(s) translated across {len(targets)} locale(s).")


if __name__ == "__main__":
    main()
