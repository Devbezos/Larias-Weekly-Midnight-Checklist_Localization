#!/usr/bin/env python3
"""
auto_translate_data.py  -  Translate _Data.lua (dataset) files using the Claude API.

Reads enUS_Data.lua as the master list, compares each locale's _Data.lua to find
untranslated `title` and `text` fields (where the locale value still matches the
English source), then calls Claude with the WoW context to produce translations.

Setup:
    pip install anthropic
    set ANTHROPIC_API_KEY=sk-ant-...         (Windows CMD)
    $env:ANTHROPIC_API_KEY = "sk-ant-..."   (PowerShell)

Usage:
    python scripts/auto_translate_data.py                      # all 8 locales
    python scripts/auto_translate_data.py --locale deDE        # one locale
    python scripts/auto_translate_data.py --dry-run            # preview, no API call
    python scripts/auto_translate_data.py --model claude-haiku-4-5
"""

import argparse
import json
import os
import pathlib
import re
import sys

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
SCRIPT_DIR   = pathlib.Path(__file__).resolve().parent
REPO_ROOT    = SCRIPT_DIR.parent
CONTEXT_FILE = REPO_ROOT / "translation-context.json"

LOCALES_DIR = REPO_ROOT / "locales"

# Default: sibling repo layout. Override with --enus in CI.
ENUS_DATA_FILE = (
    REPO_ROOT.parent / "Larias-Weekly-Midnight-Checklist" / "Locales" / "enUS_Data.lua"
)

SUPPORTED_LOCALES = ["deDE", "esES", "esMX", "frFR", "itIT", "koKR", "ptBR", "ruRU"]

# ---------------------------------------------------------------------------
# Parsers
# ---------------------------------------------------------------------------

# Section-level entry: id on one line, title on the next
_SECTION_RE = re.compile(
    r'id\s*=\s*"([^"]+)",\s*\n\s*title\s*=\s*"((?:[^"\\]|\\.)*)"'
)
# Item-level entry: id and text on the same line
_ITEM_RE = re.compile(
    r'\{\s*id\s*=\s*"([^"]+)"\s*,\s*text\s*=\s*"((?:[^"\\]|\\.)*)"'
)


def parse_data_file(text: str) -> dict:
    """Return {id: ('title'|'text', value)} for every translatable string."""
    result = {}
    for m in _SECTION_RE.finditer(text):
        result[m.group(1)] = ("title", m.group(2))
    for m in _ITEM_RE.finditer(text):
        result[m.group(1)] = ("text", m.group(2))
    return result


# ---------------------------------------------------------------------------
# Prompt builder
# ---------------------------------------------------------------------------

def build_prompt(locale_code: str, items: list, context: dict) -> str:
    """
    items: list of (id, field_type, english_text)
    Returns the system+user prompt string.
    """
    lctx  = context.get(locale_code, {})
    notes = lctx.get("_notes", {})

    terms_lines = []
    for term, val in lctx.items():
        if term.startswith("_"):
            continue
        if isinstance(val, str):
            terms_lines.append(f"  {term} -> {val}")
        elif isinstance(val, dict) and term == "Crest tiers":
            for tid, tname in val.items():
                terms_lines.append(f"  Crest tier [{tid}] -> {tname}")

    notes_lines = [f"  {k}: {v}" for k, v in notes.items()]

    items_block = "\n".join(
        f'  id="{iid}" ({ftype}): {text}'
        for iid, ftype, text in items
    )

    return f"""\
You are translating a World of Warcraft addon's weekly checklist data from English ({locale_code}).

═══ CRITICAL FORMAT RULES ═══
• Output ONLY lines in this exact format (one per entry, in the same order as input):
      id="<id>": "translated text"
• Write literal UTF-8 characters — NEVER \\uXXXX escape sequences.
• Preserve ALL % format specifiers (%s, %d, \\n) verbatim.
• ALL-CAPS STATUS MARKERS at the end of a string (e.g. "- NOT AVAILABLE IN EARLY ACCESS",
  "- BUGGED IN EARLY ACCESS - DON'T DO", "- AVAILABLE IN EARLY ACCESS") must be TRANSLATED
  into {locale_code} and kept at the end of the string, still in ALL CAPS.
• Do NOT add or remove entries. Translate exactly the entries listed, in order.
• Append  -- ⚠️ UNVERIFIED  (as a separate trailing comment, outside the closing quote)
  on lines whose WoW-specific terms you are not 100% certain about for {locale_code}.
• No commentary, code fences, or explanations — only the translated lines.

═══ VERIFIED WoW TERMINOLOGY for {locale_code} ═══
{chr(10).join(terms_lines) if terms_lines else "  (none provided)"}

═══ IMPORTANT NOTES ═══
{chr(10).join(notes_lines) if notes_lines else "  (none)"}

═══ ENTRIES TO TRANSLATE ═══
{items_block}

Return the translated lines only."""


# ---------------------------------------------------------------------------
# Response parser
# ---------------------------------------------------------------------------

def parse_response(raw: str) -> dict:
    """Parse Claude's  id="...": "..."  response into {id: translated_text}."""
    result  = {}
    pattern = re.compile(r'^id="([^"]+)":\s*"((?:[^"\\]|\\.)*)"', re.MULTILINE)
    for m in pattern.finditer(raw):
        result[m.group(1)] = m.group(2)
    return result


# ---------------------------------------------------------------------------
# In-file replacer
# ---------------------------------------------------------------------------

def apply_translations(file_text: str, translations: dict, enus: dict) -> str:
    """Surgically replace only the translated values, preserving everything else."""

    def _esc(s: str) -> str:
        return re.escape(s)

    result = file_text

    for iid, new_text in translations.items():
        field_type = enus.get(iid, ("text", ""))[0]

        # Strip an UNVERIFIED comment the model may have embedded inside the string
        new_text = re.sub(r'\s*--\s*⚠️.*$', '', new_text)

        if field_type == "title":
            # Pattern: id = "SECTION_ID",\n    title = "OLD TITLE"
            pat = re.compile(
                r'(id\s*=\s*"' + _esc(iid) + r'",\s*\n\s*title\s*=\s*")'
                + _esc(enus[iid][1])
                + r'(")'
            )
            result = pat.sub(lambda m: m.group(1) + new_text + m.group(2), result)
        else:
            # Pattern: { id = "ITEM_ID", text = "OLD TEXT" }
            pat = re.compile(
                r'(\{\s*id\s*=\s*"' + _esc(iid) + r'"\s*,\s*text\s*=\s*")'
                + _esc(enus[iid][1])
                + r'(")'
            )
            result = pat.sub(lambda m: m.group(1) + new_text + m.group(2), result)

    return result


# ---------------------------------------------------------------------------
# Per-locale driver
# ---------------------------------------------------------------------------

def translate_locale(locale_code: str, enus: dict, context: dict, client, args) -> int:
    lua_path = LOCALES_DIR / f"{locale_code}_Data.lua"
    if not lua_path.exists():
        print(f"  [{locale_code}] SKIP – not found: {lua_path}")
        return 0

    file_text = lua_path.read_text(encoding="utf-8")
    existing  = parse_data_file(file_text)

    # Untranslated = locale value still matches English, or entry is absent
    to_translate = []
    for iid, (ftype, en_text) in enus.items():
        loc_entry = existing.get(iid)
        if loc_entry is None or loc_entry[1] == en_text:
            to_translate.append((iid, ftype, en_text))

    if not to_translate:
        print(f"  [{locale_code}] ✓ Fully translated – nothing to do.")
        return 0

    print(f"  [{locale_code}] {len(to_translate)} untranslated entry/entries.")

    if args.dry_run:
        for iid, ftype, text in to_translate[:10]:
            print(f"    {iid!r}: {text[:70]}")
        if len(to_translate) > 10:
            print(f"    ... and {len(to_translate) - 10} more")
        return len(to_translate)

    prompt = build_prompt(locale_code, to_translate, context)

    response = client.messages.create(
        model=args.model,
        max_tokens=4096,
        messages=[{"role": "user", "content": prompt}],
    )
    raw = response.content[0].text.strip()
    # Strip accidental code fences
    raw = re.sub(r"^```[a-z]*\n?", "", raw, flags=re.MULTILINE)
    raw = re.sub(r"\n?```$", "", raw)

    translations = parse_response(raw)
    if not translations:
        print(f"  [{locale_code}] WARNING: API returned no parseable lines.")
        print(f"    Raw (first 500 chars):\n{raw[:500]}")
        return 0

    updated = apply_translations(file_text, translations, enus)
    lua_path.write_text(updated, encoding="utf-8")
    print(f"  [{locale_code}] ✓ Applied {len(translations)} translation(s).")
    return len(translations)


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description="Translate _Data.lua files using Claude.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    parser.add_argument("--locale",  metavar="CODE", help="Single locale (e.g. deDE).")
    parser.add_argument("--api-key", metavar="KEY",  help="Anthropic API key.")
    parser.add_argument("--model",   default="claude-sonnet-4-5", help="Claude model.")
    parser.add_argument(
        "--enus", metavar="PATH", default=str(ENUS_DATA_FILE),
        help="Path to enUS_Data.lua (default: sibling repo layout).",
    )
    parser.add_argument("--dry-run", action="store_true", help="Preview without API calls.")
    args = parser.parse_args()

    enus_path = pathlib.Path(args.enus)
    if not enus_path.exists():
        print(f"ERROR: enUS_Data.lua not found:\n  {enus_path}")
        print("Pass the correct path with --enus or check repo layout.")
        sys.exit(1)

    context = json.loads(CONTEXT_FILE.read_text(encoding="utf-8-sig"))
    enus    = parse_data_file(enus_path.read_text(encoding="utf-8"))
    print(f"Loaded {len(enus)} entries from {enus_path.name}")

    client = None
    if not args.dry_run:
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

    targets = [args.locale] if args.locale else SUPPORTED_LOCALES
    total   = 0
    for loc in targets:
        total += translate_locale(loc, enus, context, client, args)

    mode = "DRY RUN" if args.dry_run else "Done"
    print(f"\n{mode}. {total} entry/entries translated across {len(targets)} locale(s).")


if __name__ == "__main__":
    main()
