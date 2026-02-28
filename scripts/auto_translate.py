#!/usr/bin/env python3
"""
auto_translate.py  –  Translate missing locale keys using the Claude API.

Reads enUS.lua as the master string list, compares each locale file to find
missing keys, then calls Claude with the full WoW translation context to fill
the gaps.  New strings are inserted before the closing } and flagged with
-- ⚠️ UNVERIFIED so native speakers can review.

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

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------
SCRIPT_DIR   = pathlib.Path(__file__).resolve().parent
REPO_ROOT    = SCRIPT_DIR.parent
LOCALES_DIR  = REPO_ROOT / "locales"
CONTEXT_FILE = REPO_ROOT / "translation-context.json"

# enUS.lua lives in the sibling main repo
ENUS_FILE = REPO_ROOT.parent / "Larias-Weekly-Midnight-Checklist" / "Locales" / "enUS.lua"

SUPPORTED_LOCALES = ["deDE", "esES", "esMX", "frFR", "itIT", "koKR", "ptBR", "ruRU"]

# ---------------------------------------------------------------------------
# Keys to skip – either untranslatable or enUS-only by design
# ---------------------------------------------------------------------------
SKIP_KEYS = {
    # Identical in every language
    "DISPLAY_NAME",
    "BUTTON_OK",
    "UI_SCALE_MIN_LABEL",
    "UI_SCALE_MAX_LABEL",
    "UI_OPACITY_MIN_LABEL",
    "UI_OPACITY_MAX_LABEL",
    # Short technical abbreviations each locale already sets
    "TRACKING_NA",
    "TRACKING_INF",
    "ILVLREF_DELVE_TIER_FMT",
    # Contains locale code list – structural English string
    "SLASH_USAGE_LOCALE",
    # Spreadsheet notice is English-only by design (code gates it to enUS)
    "STATUS_SHEET_UPDATE_FMT",
    # Short crest abbreviations – each locale uses its own scheme
    "ILVLREF_CREST_ADV",
    "ILVLREF_CREST_VET",
    "ILVLREF_CREST_CHAMP",
    "ILVLREF_CREST_HERO",
    "ILVLREF_CREST_MYTH",
}

# ---------------------------------------------------------------------------
# Lua string parser
# ---------------------------------------------------------------------------
_LUA_KV = re.compile(
    r'^\s{0,8}([A-Z][A-Z_0-9]*)\s*=\s*'      # KEY =
    r'(?:"((?:[^"\\]|\\.)*)"|\'((?:[^\'\\]|\\.)*)\')' # "value" or 'value'
    r'\s*,?\s*(?:--.*)?$',
    re.MULTILINE,
)

def parse_lua_strings(text: str) -> dict:
    """Return {KEY: value} for every top-level string entry in a STRINGS table."""
    result = {}
    for m in _LUA_KV.finditer(text):
        key = m.group(1)
        value = m.group(2) if m.group(2) is not None else m.group(3)
        result[key] = value
    return result


# ---------------------------------------------------------------------------
# Build the translation prompt
# ---------------------------------------------------------------------------
def build_prompt(locale_code: str, keys_to_translate: dict, context: dict) -> str:
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

    keys_block = "\n".join(
        f'    {k} = "{v}",' for k, v in keys_to_translate.items()
    )

    return f"""\
You are translating a World of Warcraft addon from English to {locale_code}.

═══ CRITICAL FORMAT RULES ═══
• Output ONLY valid Lua assignment lines exactly matching this pattern:
      KEY = "translated value",
• Do NOT write \\uXXXX unicode escapes — write literal UTF-8 characters only.
• Preserve ALL % format specifiers exactly (%s, %d, \\n, etc.) — never translate them.
• Do NOT add or remove keys. Translate exactly the keys listed below.
• Append  -- ⚠️ UNVERIFIED  to lines containing WoW-specific terms you are not 100% certain about.
• Do not add commentary, code blocks, or explanations — only the Lua lines.

═══ VERIFIED WoW TERMINOLOGY for {locale_code} ═══
{chr(10).join(terms_lines) if terms_lines else "  (none provided)"}

═══ IMPORTANT NOTES ═══
{chr(10).join(notes_lines) if notes_lines else "  (none)"}

═══ KEYS TO TRANSLATE (English values shown) ═══
{keys_block}

Return the translated Lua lines only, preserving the key order above."""


# ---------------------------------------------------------------------------
# File updater – insert new lines before the closing } of STRINGS
# ---------------------------------------------------------------------------
_STRINGS_END = re.compile(r'^}\s*\r?\n\r?\nfor\b', re.MULTILINE)

def insert_keys(file_text: str, new_lines: list) -> str:
    m = _STRINGS_END.search(file_text)
    if not m:
        raise ValueError("Cannot locate end of STRINGS table (expected '}\\n\\nfor ...')")
    block = (
        "\n    -- ── Auto-translated (review with native speaker) ──────────────────────\n"
        + "\n".join(f"    {line.strip()}" for line in new_lines if "=" in line)
        + "\n"
    )
    return file_text[: m.start()] + block + file_text[m.start():]


# ---------------------------------------------------------------------------
# Per-locale translation
# ---------------------------------------------------------------------------
def translate_locale(locale_code: str, enus: dict, context: dict, client, args) -> int:
    lua_path = LOCALES_DIR / f"{locale_code}.lua"
    if not lua_path.exists():
        print(f"  [{locale_code}] SKIP – file not found: {lua_path}")
        return 0

    file_text = lua_path.read_text(encoding="utf-8")
    existing  = parse_lua_strings(file_text)

    missing = {
        k: v for k, v in enus.items()
        if k not in SKIP_KEYS and k not in existing
    }

    if not missing:
        print(f"  [{locale_code}] ✓ All keys present – nothing to do.")
        return 0

    print(f"  [{locale_code}] {len(missing)} missing key(s): {', '.join(missing)}")

    if args.dry_run:
        print(f"  [{locale_code}] DRY RUN – skipping API call.")
        return len(missing)

    prompt = build_prompt(locale_code, missing, context)

    response = client.messages.create(
        model=args.model,
        max_tokens=2048,
        messages=[{"role": "user", "content": prompt}],
    )
    raw = response.content[0].text.strip()

    # Strip any accidental code-fence the model may add
    raw = re.sub(r'^```[a-z]*\n?', '', raw, flags=re.MULTILINE)
    raw = re.sub(r'\n?```$', '', raw)

    new_lines = [l for l in raw.splitlines() if "=" in l]
    if not new_lines:
        print(f"  [{locale_code}] WARNING: API returned no translatable lines.")
        return 0

    updated = insert_keys(file_text, new_lines)
    lua_path.write_text(updated, encoding="utf-8")
    print(f"  [{locale_code}] ✓ Wrote {len(new_lines)} translated line(s):")
    for line in new_lines:
        m = re.match(r'L\["([^"]+)"\]\s*=\s*"(.*)"', line)
        if m:
            key, new_text = m.group(1), m.group(2)
            old_text = missing.get(key, "?")
            print(f"    {key}")
            print(f"      - {old_text[:100]}")
            print(f"      + {new_text[:100]}")
        else:
            print(f"    {line[:120]}")
    return len(new_lines)


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser(
        description="Translate missing WoW addon locale keys using Claude.",
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
        help="Path to enUS.lua if the main repo is in a non-standard location.",
    )
    parser.add_argument(
        "--dry-run", action="store_true",
        help="Show which keys are missing without calling the API.",
    )
    args = parser.parse_args()

    # ── Validate / resolve enUS path ──────────────────────────────────────
    enus_path = pathlib.Path(args.enus)
    if not enus_path.exists():
        print(f"ERROR: enUS.lua not found at:\n  {enus_path}")
        print("Pass the correct path with --enus or check the repo layout.")
        sys.exit(1)

    # ── Load shared resources ─────────────────────────────────────────────
    context = json.loads(CONTEXT_FILE.read_text(encoding="utf-8-sig"))
    enus    = parse_lua_strings(enus_path.read_text(encoding="utf-8"))
    print(f"Loaded {len(enus)} keys from {enus_path.name}")

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
        total += translate_locale(loc, enus, context, client, args)

    mode = "DRY RUN" if args.dry_run else "Done"
    print(f"\n{mode}. {total} key(s) translated across {len(targets)} locale(s).")


if __name__ == "__main__":
    main()
