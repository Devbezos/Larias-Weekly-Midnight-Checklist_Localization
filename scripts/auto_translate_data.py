#!/usr/bin/env python3
"""
auto_translate_data.py  -  Sync _Data.lua locale files to English hash IDs and fill translations.

Workflow
--------
1. Parse enUS_Data.lua (master) → ordered sections/items with hash IDs.
2. For each locale _Data.lua: parse existing translations by POSITION (section_idx,
   item_idx), since slug-style IDs in old locale files don't match hash IDs.
3. Build a per-locale JSON batch of every entry that needs translation
   (missing in locale, or still showing English text).
4. Call Claude with JSON in / JSON out – one API call per locale.
5. Merge translated entries with position-matched translations.
6. Rewrite each _Data.lua from scratch using hash IDs + merged translations.

JSON batch format (also written to disk with --save-batch):
  {
    "deDE": { "entries": [ {"id": "abc12345", "field": "title", "english": "..."}, ... ] },
    "frFR": { ... }
  }

Claude response format (per locale):
  [ {"id": "abc12345", "translated": "...", "unverified": false}, ... ]

Setup:
    pip install anthropic
    set ANTHROPIC_API_KEY=sk-ant-...         (Windows CMD)
    $env:ANTHROPIC_API_KEY = "sk-ant-..."   (PowerShell)

Usage:
    python scripts/auto_translate_data.py                        # all 8 locales
    python scripts/auto_translate_data.py --locale deDE         # one locale
    python scripts/auto_translate_data.py --dry-run             # preview, no API calls
    python scripts/auto_translate_data.py --save-batch out.json # dump batch JSON only
    python scripts/auto_translate_data.py --apply-batch out.json# apply pre-translated JSON
    python scripts/auto_translate_data.py --model claude-sonnet-4-5
"""

import argparse
import json
import os
import pathlib
import re
import sys

# Ensure stdout/stderr handle UTF-8 on Windows (Python 3.7+)
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

# ---------------------------------------------------------------------------
# .env loader (local dev convenience – never committed)
# ---------------------------------------------------------------------------
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
CONTEXT_FILE = REPO_ROOT / "translation-context.json"
LOCALES_DIR  = REPO_ROOT / "locales"

_addon_root = (
    pathlib.Path(os.environ["MAIN_ADDON_PATH"])
    if "MAIN_ADDON_PATH" in os.environ
    else REPO_ROOT.parent / "Larias-Weekly-Midnight-Checklist"
)
ENUS_DATA_FILE = _addon_root / "Locales" / "enUS_Data.lua"

SUPPORTED_LOCALES = ["deDE", "esES", "esMX", "frFR", "itIT", "koKR", "ptBR", "ruRU"]

LOCALE_NAMES = {
    "deDE": "German",
    "esES": "Spanish (Spain)",
    "esMX": "Spanish (Latin America)",
    "frFR": "French",
    "itIT": "Italian",
    "koKR": "Korean",
    "ptBR": "Portuguese (Brazil)",
    "ruRU": "Russian",
}

# ---------------------------------------------------------------------------
# Parsers
# ---------------------------------------------------------------------------

# Matches full section block:
#   {
#       id = "HASH",
#       title = "TITLE",
#       items = { ... },
#   }
_SEC_BLOCK_RE = re.compile(
    r'\{\s*\n\s*id\s*=\s*"([^"]+)",\s*\n\s*title\s*=\s*"((?:[^"\\]|\\.)*)",\s*\n\s*items\s*=\s*\{(.*?)\n\s*\},\s*\n\s*\}',
    re.DOTALL,
)
# Matches:  { id = "HASH", text = "TEXT" }
_ITEM_RE = re.compile(
    r'\{\s*id\s*=\s*"([^"]+)"\s*,\s*text\s*=\s*"((?:[^"\\]|\\.)*)"'
)


def parse_enus(text: str) -> list:
    """
    Parse enUS_Data.lua → ordered list of section dicts:
      [ {"id": str, "title": str, "items": [{"id": str, "text": str}]}, ... ]
    Preserves section and item order exactly.
    """
    sections = []
    for sm in _SEC_BLOCK_RE.finditer(text):
        sec_id      = sm.group(1)
        sec_title   = sm.group(2)
        items_block = sm.group(3)
        items = []
        for im in _ITEM_RE.finditer(items_block):
            items.append({"id": im.group(1), "text": im.group(2)})
        sections.append({"id": sec_id, "title": sec_title, "items": items})
    return sections


def parse_locale_positional(text: str) -> list:
    """
    Parse a locale _Data.lua → ordered list of section dicts using POSITION only.
    IDs are discarded (they may be old slugs); only translated text matters.
    Returns:
      [ {"title": str, "title_unverified": bool,
         "items": [{"text": str, "unverified": bool}]}, ... ]
    """
    sections = []
    for sm in _SEC_BLOCK_RE.finditer(text):
        raw_title    = sm.group(2)
        # The title line is the second line of the match (index 1 when split by \n)
        match_lines  = sm.group(0).split("\n")
        title_line   = next((l for l in match_lines if 'title' in l), "")
        title_unver  = "⚠️" in title_line

        items_block = sm.group(3)
        items       = []
        for im in _ITEM_RE.finditer(items_block):
            line_start = items_block.rfind("\n", 0, im.start()) + 1
            line_end   = items_block.find("\n", im.end())
            full_line  = items_block[line_start: line_end if line_end != -1 else len(items_block)]
            items.append({
                "text":       im.group(2),
                "unverified": "⚠️" in full_line,
            })
        sections.append({
            "title":            raw_title,
            "title_unverified": title_unver,
            "items":            items,
        })
    return sections


# ---------------------------------------------------------------------------
# Batch builder
# ---------------------------------------------------------------------------

def build_batch(enus_sections: list, locale_sections_map: dict) -> dict:
    """
    Compare each locale's positional translations against the English master.
    Returns a batch dict:
      { "deDE": {"entries": [{id, field, english}, ...]}, ... }
    Only entries that are missing or still showing English text are included.
    """
    batch = {}
    for locale, loc_sections in locale_sections_map.items():
        entries = []
        for si, sec in enumerate(enus_sections):
            loc_sec = loc_sections[si] if si < len(loc_sections) else None

            # Section title
            loc_title = loc_sec["title"] if loc_sec else None
            if loc_title is None or loc_title == sec["title"]:
                entries.append({"id": sec["id"], "field": "title", "english": sec["title"]})

            # Items
            for ii, item in enumerate(sec["items"]):
                loc_text = (
                    loc_sec["items"][ii]["text"]
                    if loc_sec and ii < len(loc_sec["items"])
                    else None
                )
                if loc_text is None or loc_text == item["text"]:
                    entries.append({"id": item["id"], "field": "text", "english": item["text"]})

        if entries:
            batch[locale] = {"entries": entries}
    return batch


# ---------------------------------------------------------------------------
# Translation map builder (positional → by-id)
# ---------------------------------------------------------------------------

def build_translation_map(enus_sections: list, locale_sections_map: dict) -> dict:
    """
    Returns: { locale: { hash_id: {"translated": str, "unverified": bool} } }
    Populated from existing locale translations (position-matched).
    """
    result = {}
    for locale, loc_sections in locale_sections_map.items():
        tmap = {}
        for si, sec in enumerate(enus_sections):
            loc_sec = loc_sections[si] if si < len(loc_sections) else None
            if not loc_sec:
                continue

            # Section title – carry over only if translated
            if loc_sec["title"] and loc_sec["title"] != sec["title"]:
                tmap[sec["id"]] = {
                    "translated": loc_sec["title"],
                    "unverified": loc_sec.get("title_unverified", False),
                }

            # Items
            for ii, item in enumerate(sec["items"]):
                if ii >= len(loc_sec["items"]):
                    break
                loc_item = loc_sec["items"][ii]
                if loc_item["text"] and loc_item["text"] != item["text"]:
                    tmap[item["id"]] = {
                        "translated": loc_item["text"],
                        "unverified": loc_item.get("unverified", False),
                    }
        result[locale] = tmap
    return result


# ---------------------------------------------------------------------------
# Claude prompt / call
# ---------------------------------------------------------------------------

def build_prompt(locale_code: str, entries: list, context: dict) -> str:
    lctx  = context.get(locale_code, {})
    notes = lctx.get("_notes", {})

    terms_lines = []
    for term, val in lctx.items():
        if term.startswith("_"):
            continue
        if isinstance(val, str):
            terms_lines.append(f"  {term} -> {val}")
        elif isinstance(val, dict):
            for tid, tname in val.items():
                terms_lines.append(f"  [{tid}] -> {tname}")

    notes_lines = [f"  {k}: {v}" for k, v in notes.items()]

    entries_json = json.dumps(
        [{"id": e["id"], "field": e["field"], "english": e["english"]} for e in entries],
        ensure_ascii=False,
        indent=2,
    )

    return f"""\
You are translating a World of Warcraft addon's weekly checklist data into {LOCALE_NAMES.get(locale_code, locale_code)} ({locale_code}).

═══ CRITICAL FORMAT RULES ═══
• Respond with a JSON ARRAY only. No markdown, no code fences, no explanation.
• Each element: {{"id": "<id>", "translated": "<translation>", "unverified": <true|false>}}
• Set "unverified": true if you are not 100% certain about any WoW-specific term in that line.
• Preserve ALL % format specifiers (%s, %d, \\n) verbatim.
• Write literal UTF-8 characters — NEVER \\uXXXX escape sequences.
• ALL-CAPS STATUS MARKERS at end of strings (e.g. "- NOT AVAILABLE IN EARLY ACCESS") must be
  translated into {locale_code} and remain ALL-CAPS at the end of the string.
• Output exactly the same number of elements as the input, in the same order.

═══ VERIFIED WoW TERMINOLOGY for {locale_code} ═══
{chr(10).join(terms_lines) if terms_lines else "  (none provided)"}

═══ IMPORTANT NOTES ═══
{chr(10).join(notes_lines) if notes_lines else "  (none)"}

═══ ENTRIES TO TRANSLATE (JSON) ═══
{entries_json}

Return only the JSON array."""


def call_claude(locale_code: str, entries: list, context: dict, client, model: str) -> dict:
    """
    Returns { hash_id: {"translated": str, "unverified": bool} }
    """
    prompt   = build_prompt(locale_code, entries, context)
    response = client.messages.create(
        model=model,
        max_tokens=8192,
        messages=[{"role": "user", "content": prompt}],
    )
    raw = response.content[0].text.strip()
    # Strip accidental code fences
    raw = re.sub(r"^```[a-z]*\n?", "", raw, flags=re.MULTILINE)
    raw = re.sub(r"\n?```$", "", raw)

    try:
        results = json.loads(raw)
    except json.JSONDecodeError as e:
        print(f"  [{locale_code}] WARNING: Claude returned invalid JSON: {e}")
        print(f"    First 500 chars:\n{raw[:500]}")
        return {}

    if not isinstance(results, list):
        print(f"  [{locale_code}] WARNING: Claude returned non-list JSON: {type(results)}")
        return {}

    out = {}
    for item in results:
        if isinstance(item, dict) and "id" in item and "translated" in item:
            out[item["id"]] = {
                "translated": item["translated"],
                "unverified": bool(item.get("unverified", False)),
            }
    return out


# ---------------------------------------------------------------------------
# Lua file writer
# ---------------------------------------------------------------------------

_LUA_ESCAPE_RE = re.compile(r'([\\"])')


def lua_escape(s: str) -> str:
    """Escape backslashes and double-quotes for a Lua double-quoted string."""
    return s.replace("\\", "\\\\").replace('"', '\\"')


LOCALE_NATIVE = {
    "deDE": "German",
    "esES": "Spanish (Spain)",
    "esMX": "Spanish (Latin America)",
    "frFR": "French",
    "itIT": "Italian",
    "koKR": "Korean",
    "ptBR": "Portuguese (Brazil)",
    "ruRU": "Russian",
}


def write_locale_file(
    locale: str,
    enus_sections: list,
    tmap: dict,           # { hash_id: {"translated": str, "unverified": bool} }
) -> str:
    """Render a complete _Data.lua for the given locale."""
    native = LOCALE_NATIVE.get(locale, locale)
    lines  = []

    # Header
    lines += [
        "--[[",
        f"{native} ({locale}) checklist data for Larias's Weekly Checklist",
        "",
        "NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent",
        "across locales.",
        "]]",
        f'if GetLocale() ~= "{locale}" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end',
        "",
        f'local LOCALE = "{locale}"',
        "",
        'local LOCALE_REGISTRY_KEY = "LARIASWEEKLYCHECKLIST_LOCALE_REGISTRY"',
        "",
        "local reg = _G[LOCALE_REGISTRY_KEY]",
        'if type(reg) ~= "table" then',
        "    reg = {}",
        "    _G[LOCALE_REGISTRY_KEY] = reg",
        "end",
        'if type(reg.data) ~= "table" then reg.data = {} end',
        "",
        "local DATASET = {",
    ]

    for sec in enus_sections:
        sec_entry = tmap.get(sec["id"], {})
        sec_text  = sec_entry.get("translated", sec["title"])
        sec_unver = sec_entry.get("unverified", False)
        sec_comment = "  -- \u26a0\ufe0f UNVERIFIED" if sec_unver else ""

        lines.append("")
        lines.append("    {")
        lines.append(f'        id = "{sec["id"]}",')  
        lines.append(f'        title = "{lua_escape(sec_text)}",{sec_comment}')
        lines.append( "        items = {")

        for item in sec["items"]:
            item_entry = tmap.get(item["id"], {})
            item_text  = item_entry.get("translated", item["text"])
            item_unver = item_entry.get("unverified", False)
            item_comment = " -- \u26a0\ufe0f UNVERIFIED" if item_unver else ""
            lines.append(
                f'            {{ id = "{item["id"]}", text = "{lua_escape(item_text)}" }},{item_comment}'
            )

        lines.append("        },")
        lines.append("    },")

    lines += [
        "}",
        "",
        "reg.data[LOCALE] = DATASET",
        "",
    ]

    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Per-locale driver
# ---------------------------------------------------------------------------

def translate_locale(
    locale: str,
    enus_sections: list,
    context: dict,
    tmap: dict,
    batch: dict,
    client,
    args,
) -> dict:
    """
    Returns updated tmap for this locale.
    """
    entries = batch.get(locale, {}).get("entries", [])

    if not entries:
        print(f"  [{locale}] \u2713 Fully translated \u2013 nothing to do.")
        return tmap

    print(f"  [{locale}] {len(entries)} entries need translation.")

    if args.dry_run:
        for e in entries[:8]:
            print(f"    [{e['field']}] {e['id']}: {e['english'][:70]}")
        if len(entries) > 8:
            print(f"    ... and {len(entries) - 8} more")
        return tmap

    if client is None:
        return tmap

    new_translations = call_claude(locale, entries, context, client, args.model)
    if not new_translations:
        return tmap

    print(f"  [{locale}] \u2713 Claude returned {len(new_translations)} translation(s).")
    tmap = dict(tmap)  # shallow copy
    tmap.update(new_translations)
    return tmap


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description="Translate and rewrite _Data.lua files with hash IDs.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    parser.add_argument("--locale",       metavar="CODE",  help="Single locale (e.g. deDE).")
    parser.add_argument("--api-key",      metavar="KEY",   help="Anthropic API key.")
    parser.add_argument("--model",        default="claude-sonnet-4-5", help="Claude model.")
    parser.add_argument("--enus",         metavar="PATH",  default=str(ENUS_DATA_FILE),
                        help="Path to enUS_Data.lua.")
    parser.add_argument("--dry-run",      action="store_true", help="Preview without API calls.")
    parser.add_argument("--save-batch",   metavar="FILE",  help="Write batch JSON to file and exit.")
    parser.add_argument("--apply-batch",  metavar="FILE",  help="Apply pre-translated batch JSON instead of calling API.")
    args = parser.parse_args()

    # ── Load English master ──────────────────────────────────────────────────
    enus_path = pathlib.Path(args.enus)
    if not enus_path.exists():
        print(f"ERROR: enUS_Data.lua not found:\n  {enus_path}")
        print("Set MAIN_ADDON_PATH env var or pass --enus <path>.")
        sys.exit(1)

    enus_sections = parse_enus(enus_path.read_text(encoding="utf-8"))
    print(f"Loaded {len(enus_sections)} sections from {enus_path.name}")

    context = json.loads(CONTEXT_FILE.read_text(encoding="utf-8-sig")) if CONTEXT_FILE.exists() else {}

    targets = [args.locale] if args.locale else SUPPORTED_LOCALES

    # ── Parse existing locale files ──────────────────────────────────────────
    locale_sections_map = {}
    for locale in targets:
        lua_path = LOCALES_DIR / f"{locale}_Data.lua"
        if lua_path.exists():
            locale_sections_map[locale] = parse_locale_positional(
                lua_path.read_text(encoding="utf-8")
            )
            print(f"  [{locale}] parsed {len(locale_sections_map[locale])} sections (positional)")
        else:
            locale_sections_map[locale] = []
            print(f"  [{locale}] not found \u2013 will translate from scratch")

    # ── Build translation maps (existing translations by position\u2192id) ────────
    tmaps = build_translation_map(enus_sections, locale_sections_map)

    # ── Build batch (entries still needing translation) ──────────────────────
    batch = build_batch(enus_sections, locale_sections_map)

    # ── --save-batch: dump JSON and exit ─────────────────────────────────────
    if args.save_batch:
        out_path = pathlib.Path(args.save_batch)
        out_path.write_text(json.dumps(batch, ensure_ascii=False, indent=2), encoding="utf-8")
        print(f"Batch JSON saved to {out_path}")
        total = sum(len(v["entries"]) for v in batch.values())
        print(f"  {total} entries across {len(batch)} locale(s).")
        return

    # ── --apply-batch: load pre-translated JSON ───────────────────────────────
    pre_translated = {}
    if args.apply_batch:
        raw_batch = json.loads(pathlib.Path(args.apply_batch).read_text(encoding="utf-8"))
        for locale, items in raw_batch.items():
            if isinstance(items, list):
                pre_translated[locale] = {
                    i["id"]: {"translated": i["translated"], "unverified": i.get("unverified", False)}
                    for i in items
                }
            elif isinstance(items, dict) and "entries" in items:
                pre_translated[locale] = {
                    i["id"]: {"translated": i.get("translated", i.get("english", "")),
                               "unverified": i.get("unverified", False)}
                    for i in items["entries"]
                }
        print(f"Loaded pre-translated batch from {args.apply_batch}")

    # ── Set up Claude client ─────────────────────────────────────────────────
    client = None
    if not args.dry_run and not args.apply_batch:
        api_key = args.api_key or os.environ.get("ANTHROPIC_API_KEY")
        if not api_key:
            print("ERROR: Anthropic API key required.\n"
                  "Set ANTHROPIC_API_KEY env var or pass --api-key.")
            sys.exit(1)
        try:
            import anthropic as _ant
        except ImportError:
            print("ERROR: anthropic package not installed.\nRun: pip install anthropic")
            sys.exit(1)
        client = _ant.Anthropic(api_key=api_key)

    # ── Translate and rewrite ────────────────────────────────────────────────
    total_new  = 0
    total_kept = 0
    for locale in targets:
        tmap = tmaps.get(locale, {})

        # Apply pre-translated results if provided
        if locale in pre_translated:
            tmap = dict(tmap)
            tmap.update(pre_translated[locale])
            print(f"  [{locale}] applied {len(pre_translated[locale])} pre-translated entries.")
        else:
            tmap = translate_locale(locale, enus_sections, context, tmap, batch, client, args)

        tmaps[locale] = tmap

        lua_path = LOCALES_DIR / f"{locale}_Data.lua"
        if args.dry_run:
            need = len(batch.get(locale, {}).get("entries", []))
            have = len(tmap)
            print(f"  [{locale}] dry-run: {have} translated, {need} still needed \u2192 would rewrite {lua_path.name}")
            continue

        new_content = write_locale_file(locale, enus_sections, tmap)
        lua_path.write_text(new_content, encoding="utf-8")

        entries_needed = batch.get(locale, {}).get("entries", [])
        new_count  = len([e for e in entries_needed if e["id"] in tmap])
        kept_count = len(tmap) - new_count
        total_new  += new_count
        total_kept += kept_count
        print(f"  [{locale}] \u2713 Wrote {lua_path.name} \u2014 {kept_count} kept, {new_count} newly translated entries.")

    if not args.dry_run:
        print(f"\nDone. {total_kept} existing + {total_new} new translations written across {len(targets)} locale(s).")
    else:
        print("\nDry-run complete. No files written.")


if __name__ == "__main__":
    main()

