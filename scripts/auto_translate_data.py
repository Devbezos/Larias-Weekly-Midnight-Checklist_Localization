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

# Legacy parser: matches sections WITHOUT id fields:  { title = "...", items = { ... }, }
_LEGACY_SEC_RE = re.compile(
    r'\{\s*\n\s*title\s*=\s*"((?:[^"\\]|\\.)*)",\s*\n\s*items\s*=\s*\{(.*?)\n\s*\},\s*\n\s*\}',
    re.DOTALL,
)
# Legacy item: { text = "..." }
_LEGACY_ITEM_RE = re.compile(r'\{\s*text\s*=\s*"((?:[^"\\]|\\.)*)"')


def _normalize_newlines(text: str) -> str:
    """Normalize Windows CRLF → LF so regex \n anchors work on Linux CI."""
    return text.replace("\r\n", "\n").replace("\r", "\n")


def parse_enus(text: str) -> list:
    """
    Parse enUS_Data.lua → ordered list of section dicts:
      [ {"id": str, "title": str, "items": [{"id": str, "text": str}]}, ... ]
    Preserves section and item order exactly.
    """
    text = _normalize_newlines(text)
    sections = []
    for sm in _SEC_BLOCK_RE.finditer(text):
        sec_id      = sm.group(1)
        sec_title   = lua_unescape(sm.group(2))
        items_block = sm.group(3)
        items = []
        for im in _ITEM_RE.finditer(items_block):
            items.append({"id": im.group(1), "text": lua_unescape(im.group(2))})
        sections.append({"id": sec_id, "title": sec_title, "items": items})
    return sections


def parse_locale_by_id(text: str) -> dict:
    """
    Parse a locale _Data.lua that already contains hash IDs (post-migration).
    Returns:
      { section_id: { "title": str, "title_unverified": bool,
                      "items": { item_id: {"text": str, "unverified": bool} } } }
    Only entries whose IDs are present are returned; positional drift is impossible.
    """
    text = _normalize_newlines(text)
    result = {}
    for sm in _SEC_BLOCK_RE.finditer(text):
        sec_id      = sm.group(1)
        raw_title   = sm.group(2)
        match_lines = sm.group(0).split("\n")
        title_line  = next((l for l in match_lines if "title" in l), "")
        title_unver = "⚠️" in title_line

        items_block = sm.group(3)
        items = {}
        for im in _ITEM_RE.finditer(items_block):
            item_id   = im.group(1)
            item_text = lua_unescape(im.group(2))
            line_start = items_block.rfind("\n", 0, im.start()) + 1
            line_end   = items_block.find("\n", im.end())
            full_line  = items_block[line_start: line_end if line_end != -1 else len(items_block)]
            items[item_id] = {
                "text":       item_text,
                "unverified": "⚠️" in full_line,
            }
        result[sec_id] = {
            "title":            lua_unescape(raw_title),
            "title_unverified": title_unver,
            "items":            items,
        }
    return result


def parse_locale_positional(text: str, enus_sections: list) -> dict:
    """
    Positional fallback: parse a locale file that either has legacy slug IDs OR no IDs at all.
    Maps sections/items by POSITION to the enUS hash IDs so the result has the same
    shape as parse_locale_by_id().  Used when parse_locale_by_id() returns an empty dict
    for a non-empty file.
    Returns: same dict shape as parse_locale_by_id().
    """
    text = _normalize_newlines(text)
    # Try with-id sections first (slug IDs), then fall back to id-less legacy format.
    sec_matches = list(_SEC_BLOCK_RE.finditer(text))
    use_legacy  = len(sec_matches) == 0
    if use_legacy:
        sec_matches = list(_LEGACY_SEC_RE.finditer(text))

    result = {}
    for i, sm in enumerate(sec_matches):
        if i >= len(enus_sections):
            break
        enid = enus_sections[i]["id"]

        if use_legacy:
            raw_title   = sm.group(1)
            items_block = sm.group(2)
            title_unver = "⚠️" in raw_title
        else:
            raw_title   = sm.group(2)
            items_block = sm.group(3)
            match_lines = sm.group(0).split("\n")
            title_line  = next((l for l in match_lines if "title" in l), "")
            title_unver = "⚠️" in title_line

        item_matches = (
            list(_LEGACY_ITEM_RE.finditer(items_block))
            if use_legacy
            else list(_ITEM_RE.finditer(items_block))
        )

        items = {}
        for j, im in enumerate(item_matches):
            if j >= len(enus_sections[i]["items"]):
                break
            enitem_id = enus_sections[i]["items"][j]["id"]
            item_text = lua_unescape(im.group(1) if use_legacy else im.group(2))
            line_start = items_block.rfind("\n", 0, im.start()) + 1
            line_end   = items_block.find("\n", im.end())
            full_line  = items_block[line_start: line_end if line_end != -1 else len(items_block)]
            items[enitem_id] = {
                "text":       item_text,
                "unverified": "⚠️" in full_line,
            }

        result[enid] = {
            "title":            lua_unescape(raw_title),
            "title_unverified": title_unver,
            "items":            items,
        }
    return result


# ---------------------------------------------------------------------------
# Glossary post-processing
# ---------------------------------------------------------------------------

def apply_glossary(text: str, glossary: dict) -> str:
    """
    Replace English WoW terms left verbatim by Claude with verified locale equivalents.
    Applies longest-match first so 'Bountiful Delves' is replaced before 'Delves'.
    """
    for english in sorted(glossary, key=len, reverse=True):
        if english.startswith("_"):
            continue
        target = glossary[english]
        if isinstance(target, str) and english in text:
            text = text.replace(english, target)
    return text


# ---------------------------------------------------------------------------
# Batch builder
# ---------------------------------------------------------------------------

def build_batch(enus_sections: list, locale_map: dict) -> dict:
    """
    Compare each locale's ID-keyed translations against the English master.
    Returns a batch dict:
      { "deDE": {"entries": [{id, field, english}, ...]}, ... }
    Only entries that are genuinely missing or still show English text are included.
    ID-based lookup eliminates false positives caused by positional drift.
    """
    batch = {}
    for locale, by_id in locale_map.items():
        entries = []
        for sec in enus_sections:
            sid     = sec["id"]
            loc_sec = by_id.get(sid)

            # Section title: send only if missing or identical to English
            loc_title = loc_sec["title"] if loc_sec else None
            if loc_title is None or loc_title == sec["title"]:
                entries.append({"id": sid, "field": "title", "english": sec["title"]})

            # Items: send only if missing or identical to English
            for item in sec["items"]:
                loc_item = loc_sec["items"].get(item["id"]) if loc_sec else None
                loc_text = loc_item["text"] if loc_item else None
                if loc_text is None or loc_text == item["text"]:
                    entries.append({"id": item["id"], "field": "text", "english": item["text"]})

        if entries:
            batch[locale] = {"entries": entries}
    return batch


# ---------------------------------------------------------------------------
# Translation map builder (positional → by-id)
# ---------------------------------------------------------------------------

def build_translation_map(enus_sections: list, locale_map: dict) -> dict:
    """
    Returns: { locale: { hash_id: {"translated": str, "unverified": bool} } }
    Populated from existing locale translations using ID-based lookup.
    Only entries whose text differs from English are considered translated.
    """
    result = {}
    for locale, by_id in locale_map.items():
        tmap = {}
        for sec in enus_sections:
            sid     = sec["id"]
            loc_sec = by_id.get(sid)
            if not loc_sec:
                continue

            # Section title – carry over only if translated (differs from English)
            if loc_sec["title"] and loc_sec["title"] != sec["title"]:
                tmap[sid] = {
                    "translated": fully_unescape(loc_sec["title"]),
                    "unverified": loc_sec.get("title_unverified", False),
                }

            # Items – carry over only if translated (differs from English).
            # Apply fully_unescape to recover from any depth of accumulated
            # double-escaping (e.g. Claude returning Lua-escaped quotes).
            for item in sec["items"]:
                loc_item = loc_sec["items"].get(item["id"])
                if loc_item and loc_item["text"] and loc_item["text"] != item["text"]:
                    clean_text = fully_unescape(loc_item["text"])
                    tmap[item["id"]] = {
                        "translated": clean_text,
                        "unverified": loc_item.get("unverified", False),
                    }
        result[locale] = tmap
    return result


# ---------------------------------------------------------------------------
# Claude prompt / call
# ---------------------------------------------------------------------------

def build_prompt(locale_code: str, entries: list) -> str:
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
• Write literal UTF-8 characters — NEVER \\uXXXX escape sequences.• Return PLAIN TEXT strings — do NOT use Lua escape sequences like \" or \\ in translated values.• ALL-CAPS STATUS MARKERS at end of strings (e.g. "- NOT AVAILABLE IN EARLY ACCESS") must be
  translated into {locale_code} and remain ALL-CAPS at the end of the string.
• Output exactly the same number of elements as the input, in the same order.

═══ ENTRIES TO TRANSLATE (JSON) ═══
{entries_json}

Return only the JSON array."""


def call_claude(locale_code: str, entries: list, client, model: str) -> dict:
    """
    Returns { hash_id: {"translated": str, "unverified": bool} }
    """
    prompt   = build_prompt(locale_code, entries)
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
            # Claude sometimes returns Lua-escaped quotes (\" instead of ").
            # Strip that extra layer so lua_escape() doesn't double-escape them.
            out[item["id"]] = {
                "translated": fully_unescape(str(item["translated"])),
                "unverified": bool(item.get("unverified", False)),
            }
    return out


# ---------------------------------------------------------------------------
# Lua file writer
# ---------------------------------------------------------------------------

_LUA_ESCAPE_RE = re.compile(r'([\\"])')


def lua_escape(s: str) -> str:
    """Escape backslashes and double-quotes for a Lua double-quoted string."""
    s = s.replace("\\", "\\\\").replace('"', '\\"')
    s = s.replace("\r\n", "\\n").replace("\r", "\\n").replace("\n", "\\n")
    return s


def lua_unescape(s: str) -> str:
    """Decode Lua double-quoted string escapes back to plain text.
    Must process backslashes before quotes to avoid double-processing."""
    result = []
    i = 0
    while i < len(s):
        if s[i] == '\\' and i + 1 < len(s):
            nxt = s[i + 1]
            if nxt == '\\':
                result.append('\\')
                i += 2
            elif nxt == '"':
                result.append('"')
                i += 2
            elif nxt == 'n':
                result.append('\n')
                i += 2
            elif nxt == 't':
                result.append('\t')
                i += 2
            else:
                result.append(s[i])
                i += 1
        else:
            result.append(s[i])
            i += 1
    return ''.join(result)


def fully_unescape(s: str) -> str:
    """Apply lua_unescape repeatedly until the result stops changing.
    Needed to recover from accumulated double-escaping (e.g. \\\\\\\" -> \\\\\\" -> \\\" -> \")."""
    while True:
        r = lua_unescape(s)
        if r == s:
            return r
        s = r


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
    glossary: dict,
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

    new_translations = call_claude(locale, entries, client, args.model)
    if not new_translations:
        return tmap

    # Apply verified terminology replacements (post-processing pass)
    locale_glossary = glossary.get(locale, {})
    if locale_glossary:
        for entry in new_translations.values():
            entry["translated"] = apply_glossary(entry["translated"], locale_glossary)

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

    glossary = json.loads(CONTEXT_FILE.read_text(encoding="utf-8-sig")) if CONTEXT_FILE.exists() else {}

    targets = [args.locale] if args.locale else SUPPORTED_LOCALES

    # ── Parse existing locale files (ID-based, with positional fallback) ──────
    enus_sec_ids = {s["id"] for s in enus_sections}
    locale_map   = {}  # { locale: { sec_id: { title, items: { item_id: ... } } } }
    for locale in targets:
        lua_path = LOCALES_DIR / f"{locale}_Data.lua"
        if lua_path.exists():
            raw_text = lua_path.read_text(encoding="utf-8")
            by_id = parse_locale_by_id(raw_text)
            matched = sum(1 for sid in by_id if sid in enus_sec_ids)

            if not by_id:
                # ID-based parse produced nothing – diagnose and fall back to positional.
                id_count = raw_text.count('id =')
                print(f"  [{locale}] WARN: regex found 0 sections in {lua_path.name} "
                      f"(file size {len(raw_text)} bytes, {id_count} 'id =' occurrences). "
                      f"Falling back to positional matching.")
                by_id  = parse_locale_positional(raw_text, enus_sections)
                matched = sum(1 for sid in by_id if sid in enus_sec_ids)
                print(f"  [{locale}] positional fallback: {len(by_id)} sections "
                      f"({matched}/{len(enus_sections)} match enUS)")
            elif matched == 0:
                print(f"  [{locale}] WARNING: no section IDs matched enUS – "
                      f"file may use legacy slug IDs. Falling back to positional matching.")
                by_id  = parse_locale_positional(raw_text, enus_sections)
                matched = sum(1 for sid in by_id if sid in enus_sec_ids)
                print(f"  [{locale}] positional fallback: {len(by_id)} sections "
                      f"({matched}/{len(enus_sections)} match enUS)")
            else:
                print(f"  [{locale}] parsed {len(by_id)} sections by ID "
                      f"({matched}/{len(by_id)} match enUS)")

            locale_map[locale] = by_id
        else:
            locale_map[locale] = {}
            print(f"  [{locale}] not found – will translate from scratch")

    # ── Build translation maps (existing translations keyed by hash ID) ──────
    tmaps = build_translation_map(enus_sections, locale_map)

    # ── Build batch (only entries missing or still showing English) ──────────
    batch = build_batch(enus_sections, locale_map)

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
                    i["id"]: {"translated": lua_unescape(str(i["translated"])), "unverified": i.get("unverified", False)}
                    for i in items
                }
            elif isinstance(items, dict) and "entries" in items:
                pre_translated[locale] = {
                    i["id"]: {"translated": lua_unescape(str(i.get("translated", i.get("english", "")))),
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
            tmap = translate_locale(locale, enus_sections, glossary, tmap, batch, client, args)

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

