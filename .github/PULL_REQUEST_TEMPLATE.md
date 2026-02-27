## Locale PR

**Locale code:** <!-- e.g. koKR, frFR, deDE -->

**Type:**
- [ ] New locale
- [ ] Update to existing locale (added missing keys / corrected translations)

**Main addon version this is based on:** <!-- check LariasWeeklyChecklist.toc Interface: line -->

---

## Files changed

- [ ] `Locales/<LOCALE>.lua` — UI strings
- [ ] `Locales/<LOCALE>_Data.lua` — checklist item titles and text
- [ ] `LariasWeeklyChecklist_Localization.toc` — registered both files *(new locale only)*
- [ ] `translation-context.json` — updated with new/corrected confirmed terms *(if applicable)*

---

## Translation checklist

- [ ] I read `translation-context.json` for my locale before writing translations
- [ ] I used the exact WoW-specific terms from `translation-context.json` (not dictionary equivalents)
- [ ] I did **not** change any `id` values in `*_Data.lua`
- [ ] I did **not** rename any string keys in `*.lua` (only translated values)
- [ ] I did **not** translate `DISPLAY_NAME` (addon name stays as-is)
- [ ] All `.lua` files are saved as UTF-8 with literal characters (no `\uXXXX` escape sequences)
- [ ] Both files cover the same set of sections/items as the current `enUS` source

---

## Testing

- [ ] Loaded in-game with `/larias locale <LOCALE>` — no Lua errors
- [ ] All UI strings render correctly (no `?` boxes or encoding issues)
- [ ] Checklist items display correctly for at least one weekly section
- [ ] Options panel strings are fully translated / render correctly

---

## Translator notes

**Native speaker?**
- [ ] Yes
- [ ] No — translated with assistance (describe below)
- [ ] Partial — some terms verified in-game by a native speaker

**Notes / anything reviewers should know:**
<!-- Include any terms you were uncertain about, any deviations from context.json and why, or anything that needs a second opinion. -->
