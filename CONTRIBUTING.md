# Contributing Translations

Thank you for helping localize **Larias's Weekly Checklist**! This guide covers everything you need to submit a clean, correct translation.

---

## Table of Contents

1. [Before you start](#before-you-start)
2. [File structure](#file-structure)
3. [Adding a new locale](#adding-a-new-locale)
4. [Updating an existing locale](#updating-an-existing-locale)
5. [Using translation-context.json](#using-translation-contextjson)
6. [Hard rules](#hard-rules)
7. [Testing in-game](#testing-in-game)
8. [Submitting a PR](#submitting-a-pr)

---

## Before you start

- Check whether a locale file already exists under `Locales/`. If it does, open a PR to update it rather than creating a new one.
- Read `translation-context.json` **before writing anything**. It contains confirmed WoW-specific terminology for each locale vetted by native speakers and in-game verification. Dictionary translations for WoW terms are often wrong.
- All `.lua` files must be **UTF-8** with **literal characters** — never `\uXXXX` escape sequences (those are JSON-only and will break Lua).

---

## File structure

Each locale consists of exactly two files:

| File | Purpose |
|------|---------|
| `Locales/<LOCALE>.lua` | UI strings (button labels, option names, headings) |
| `Locales/<LOCALE>_Data.lua` | Checklist item titles and text for each weekly section |

Where `<LOCALE>` is the standard WoW locale code: `deDE`, `frFR`, `esES`, `esMX`, `itIT`, `ptBR`, `ruRU`, `koKR`, etc.

---

## Adding a new locale

### Step 1 — Create the strings file

1. Copy `Locales/enUS.lua` → `Locales/<LOCALE>.lua`
2. Change `local LOCALE = "enUS"` to your locale code.
3. Translate every **value** in the `STRINGS = { ... }` table.
   - Keep all **keys** exactly as-is (e.g. `RESET_BUTTON`, `TAB_OPTIONS`).
   - Keep `DISPLAY_NAME` as `"Larias's Weekly Checklist"` — do not translate the addon name.
4. For `TRACKING_CREST_NAMES_BY_ID`, translate crest tier names by their numeric ID key (see `translation-context.json` for confirmed names per locale).

### Step 2 — Create the data file

1. Copy `Locales/enUS_Data.lua` → `Locales/<LOCALE>_Data.lua`
2. Change `local LOCALE = "enUS"` to your locale code.
3. For each section and item, translate:
   - `title` — the section heading (e.g. `"Season 1 Week 1 - Mar 17 - Heroic Week"`)
   - `text` — the checklist item body text
4. **Never change `id` values.** IDs are how the addon matches completion state across locales. Changing an ID breaks saved progress for anyone using your locale.

### Step 3 — Register in the TOC

Add both files to `LariasWeeklyChecklist_Localization.toc` in alphabetical order:

```
Locales\<LOCALE>.lua
Locales\<LOCALE>_Data.lua
```

### Step 4 — Test, then open a PR

See [Testing in-game](#testing-in-game) and [Submitting a PR](#submitting-a-pr).

---

## Updating an existing locale

When new keys or checklist items are added to `enUS.lua` / `enUS_Data.lua` in the main addon:

1. Compare the enUS files against your locale files to spot missing keys or items.
2. Translate only the new additions; do not rework existing translations unless they are wrong.
3. Never remove keys that still exist in enUS — the addon falls back to enUS for missing keys, so omitting one is safe, but removing a correct translation is wasteful.

If you are a first-time contributor to a locale that already exists, explain in your PR what you changed and why (e.g. "corrected Delves term per in-game string").

---

## Using translation-context.json

`translation-context.json` is the single source of truth for WoW-specific terminology. It is **not** a general dictionary — it documents terms that Blizzard localizes in surprising or non-obvious ways.

**How to use it:**

1. Find your locale's section (e.g. `"koKR"`, `"ruRU"`).
2. Use the **exact** terms listed — never substitute with generic dictionary equivalents.
3. Read all `_notes` entries for your locale — they contain exceptions and warnings.
4. Crest tier keys (`3383`, `3341`, etc.) are Blizzard currency IDs. Match by ID, not by position in the list.

**If you are a native speaker and know a term in the file is wrong:**

- Correct the term in your locale file and update `translation-context.json` accordingly.
- In your PR, explain how you verified the term (e.g. "observed in-game on live KR servers", "confirmed from Wowhead KR database").

---

## Hard rules

| Rule | Why |
|------|-----|
| **Never change `id` values** | IDs are saved in player profiles; changing one loses their progress |
| **No `\uXXXX` escapes in `.lua`** | Lua does not support them — use literal UTF-8 characters |
| **Do not translate `DISPLAY_NAME`** | The addon name must stay consistent across locales |
| **Do not translate key names** | Left-hand side of `KEY = "value"` — only translate the right-hand side |
| **Keep both files in sync** | Both `<LOCALE>.lua` and `<LOCALE>_Data.lua` must cover the same addon version |

---

## Testing in-game

1. Copy both locale files (and the `.toc`) into your WoW addon directory.
2. Run `/reload`.
3. Switch to your locale using `/larias locale <LOCALE>` (e.g. `/larias locale koKR`).
4. Verify:
   - All UI strings render without `?` boxes or garbled characters.
   - The correct week is visible and checklist items display your translations.
   - Options panel strings are fully translated.
   - No Lua errors appear in the chat frame.
5. Switch back to `enUS` with `/larias locale enUS` to confirm the fallback still works.

---

## Submitting a PR

- Target the `feature/future-stuff` branch (or `main` if that branch no longer exists).
- Use the PR template — fill in every checkbox and field honestly.
- If you are not a native speaker of the target language, say so in the PR description. Machine translation is better than nothing but should be noted.
- One locale per PR where possible — it makes review much easier.
