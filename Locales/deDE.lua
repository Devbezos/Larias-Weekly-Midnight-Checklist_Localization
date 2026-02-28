--[[
German (deDE) strings for Larias's Weekly Checklist
]]
if GetLocale() ~= "deDE" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "deDE"
local LOCALE_REGISTRY_KEY = "LARIASWEEKLYCHECKLIST_LOCALE_REGISTRY"

local reg = _G[LOCALE_REGISTRY_KEY]
if type(reg) ~= "table" then
    reg = {}
    _G[LOCALE_REGISTRY_KEY] = reg
end
if type(reg.strings) ~= "table" then reg.strings = {} end

reg.strings[LOCALE] = reg.strings[LOCALE] or {}
local L = reg.strings[LOCALE]

local STRINGS = {
    DISPLAY_NAME = "Larias's Weekly Checklist",

    -- Update popup
    UPDATE_AVAILABLE_TEXT = "Neue Version verfügbar",
    UPDATE_AVAILABLE_FMT = "%s hat ein Update verfügbar.\n\nBitte aktualisiere das Addon auf die neueste Version.",

    -- Shared buttons
    BUTTON_OK = "OK",
    BUTTON_CANCEL = "Abbrechen",

    -- Options tab
    OPTIONS_HIDE_GREAT_VAULT = "Große Schatzkammer ausblenden",
    OPTIONS_HIDE_CURRENCY = "Währung ausblenden",

    HIDE_COMPLETED_WEEKS = "Abgeschlossene Wochen ausblenden",
    OPTIONS_HIDE_CHANGE_WEEK_BTN = "Schaltfläche 'Woche wechseln' ausblenden",
    OPTIONS_HIDE_ILVL_REF_BTN = "Gegenstandsstufen-Popup ausblenden",
    OPTIONS_HIDE_CHAR_SELECT = "Charakterauswahl ausblenden",
    OPTIONS_HIDDEN_CHARS_TITLE = "Versteckte Charaktere:",
    OPTIONS_HIDDEN_CHARS_NONE = "Keine",
    RESET_BUTTON = "Zurücksetzen",
    UI_SCALE_LABEL = "UI-Skalierung",
    UI_SCALE_MIN_LABEL = "50%",
    UI_SCALE_MAX_LABEL = "150%",
    OPTIONS_HIDE_SCALE_SLIDER   = "Skalierungsregler ausblenden",
    OPTIONS_HIDE_SLIDERS        = "Regler ausblenden",
    OPTIONS_HIDE_OPACITY_SLIDER = "Deckkraftregler ausblenden",
    OPTIONS_HIDE_UPDATE_NOTICE  = "Update-Warnungen ausblenden", -- ⚠️ UNVERIFIED
    OPTIONS_HIDE_MINIMAP_BTN    = "Minimap-Symbol ausblenden", -- ⚠️ UNVERIFIED
    -- Color picker swatch labels (gear popup)
    COLOR_PICKER_BG             = "Hintergrund", -- ⚠️ UNVERIFIED
    COLOR_PICKER_TEXT           = "Text", -- ⚠️ UNVERIFIED
    COLOR_PICKER_HDR            = "Kopfzeile", -- ⚠️ UNVERIFIED
    -- Status banner
    STATUS_UPDATE_AVAILABLE_FMT = "Update verfügbar! Du hast %s, neueste Version ist %s.", -- ⚠️ UNVERIFIED
    STATUS_NO_TRANSLATION_FMT   = "Keine Übersetzung für %s verfügbar. Trage gerne bei!", -- ⚠️ UNVERIFIED
    STATUS_TRANSLATION_NOTICE   = "Englisch ist die aktuellste Sprache. Deine Checkliste könnte leicht veraltet sein.", -- ⚠️ UNVERIFIED
    UI_OPACITY_LABEL            = "Deckkraft",
    UI_OPACITY_MIN_LABEL        = "10%",
    UI_OPACITY_MAX_LABEL        = "100%",

    -- List tab
    DONE_PREFIX = "[Fertig] ",

    -- Tracking panel header tooltips
    TOOLTIP_OPEN_GREAT_VAULT  = "Klicken, um die Große Schatzkammer zu öffnen", -- ⚠️ UNVERIFIED
    TOOLTIP_OPEN_CURRENCIES   = "Klicken, um das Währungspanel zu öffnen", -- ⚠️ UNVERIFIED

    -- Tracking panel
    TRACKING_GREAT_VAULT_TITLE = "Große Schatzkammer",
    TRACKING_CURRENCY_TITLE = "Währung",
    TRACKING_GV_RAID = "Schlachtzug",
    TRACKING_GV_DUNGEONS = "Dungeons",
    TRACKING_GV_WORLD    = "Welt",
    TRACKING_NA = "N/A",

    TRACKING_SPARKS_LABEL = "Morgenlichtmanaflux:",
    TRACKING_DONE = "Fertig",
    TRACKING_NOT_DONE = "Nicht fertig",

    TRACKING_QUEST_DELVERS_BOUNTY = "Erkundsuchprämie:",
    TRACKING_QUEST_WEEKLY_PREY = "Wöchentliche Beute:",

    TRACKING_CREST_LABEL = "Wappen:",
    TRACKING_CREST_ID_LABEL_FMT = "Wappen %s:",
    -- Optional: if present, crest labels are taken from this table instead of the game currency name.
    -- Keys are currency IDs; values should be display names (with or without a trailing ':').
    TRACKING_CREST_NAMES_BY_ID = {
        [3383] = "Abenteurer",
        [3341] = "Veteran",
        [3343] = "Champion",
        [3345] = "Held",
        [3347] = "Mythen",
    },
    TRACKING_NO_ID = "Keine ID",
    TRACKING_TRADE_UP_SUFFIX = " Aufwerten)",

    TRACKING_CATALYST_LABEL = "Katalysator:",

    TRACKING_INF = "INF",

    -- Minimap tooltip
    MINIMAP_TOOLTIP_LEFT_CLICK_TOGGLE = "Linksklick: Checkliste ein-/ausblenden",
    MINIMAP_TOOLTIP_RIGHT_CLICK_OPTIONS = "Rechtsklick: Optionen",
    MINIMAP_TOOLTIP_MIDDLE_CLICK_ILVL = "Mittelklick: Gegenstandsstufen",

    -- Main window
    TAB_OPTIONS = "Optionen",
    CHANGE_WEEK_BUTTON = "Woche wechseln",
    CHAR_PICKER_BUTTON = "Profil wechseln",
    CHAR_PICKER_TOOLTIP_REMOVE = "Um einen Charakter zu entfernen, verwende das Optionsmenü.",
    ILVLREF_BUTTON = "Gegenstandsstufen anzeigen",

    -- Item level reference popup
    ILVLREF_WINDOW_TITLE  = "Midnight Saison 1 Gegenstandsstufen-Referenz",

    ILVLREF_SEC_TRACKS    = "Aufwertungspfade  (20 Wappen pro Schritt)",
    ILVLREF_SEC_CRAFTED   = "Hergestellte Gegenstandsstufen",
    ILVLREF_SEC_DUNGEONS  = "Dungeon-Gegenstandsstufen",
    ILVLREF_SEC_RAID      = "Ca. Midnight-Schlachtzug-Gegenstandsstufen",
    ILVLREF_SEC_DELVES    = "Üppige Tiefen-Gegenstandsstufen",

    ILVLREF_COL_ILVL         = "ilvl",
    ILVLREF_COL_TRACK        = "Aufwertungspfade",
    ILVLREF_COL_CREST_NEEDED = "Wappen",
    ILVLREF_COL_QUALITY      = "Qualität",
    ILVLREF_COL_SOURCE       = "Quelle",
    ILVLREF_COL_END_LOOT     = "Endbelohnung",
    ILVLREF_COL_GREAT_VAULT  = "Große Schatzkammer",
    ILVLREF_COL_DIFFICULTY   = "Schwierigkeit",
    ILVLREF_COL_BOSS1        = "Früh",
    ILVLREF_COL_BOSS2        = "Mitte",
    ILVLREF_COL_BOSS3        = "Spät",
    ILVLREF_COL_BOSS4        = "Ende",
    ILVLREF_COL_TIER         = "Stufe",
    ILVLREF_COL_MAP_DROP     = "Karten-Drop",

    ILVLREF_CREST_ADV          = "Abent",
    ILVLREF_CREST_VET          = "Vet",
    ILVLREF_CREST_CHAMP        = "Champ",
    ILVLREF_CREST_HERO         = "Held",
    ILVLREF_CREST_MYTH         = "Myth",
    ILVLREF_DO_NOT_USE_CRESTS_FMT = "KEINE %s-WAPPEN VERWENDEN",

    ILVLREF_DUNGEON_PRE_HEROIC = "Vorjahres-Heroisch",
    ILVLREF_DUNGEON_HEROIC     = "Heroisch",
    ILVLREF_DUNGEON_PRE_MYTHIC = "Vorjahres-Mythisch",
    ILVLREF_DUNGEON_MYTHIC     = "Mythisch",

    ILVLREF_RAID_LFR           = "Schlachtzugsbrowser",
    ILVLREF_RAID_NORMAL        = "Normal",
    ILVLREF_RAID_HEROIC        = "Heroisch",
    ILVLREF_RAID_MYTHIC        = "Mythisch",

    ILVLREF_DELVE_TIER_FMT     = "T%d",

    ILVLREF_TOGGLE_EXPAND = "Alle Tabellen anzeigen",
    ILVLREF_TOGGLE_SHRINK = "Minimieren",

    -- Slash commands
    SLASH_USAGE_TOGGLE = "Verwendung: /larias oder /lcl zum Ein-/Ausblenden",
    SLASH_USAGE_LOCALE = "Verwendung: /larias locale auto|enUS|deDE|esES|esMX|frFR|itIT|ptBR|ruRU",
    SLASH_LOCALE_SET_FMT = "Sprache gesetzt auf %s (aktiv: %s)",
    SLASH_LOCALE_NOT_FOUND = "Unbekannte Sprache '%s'. Verfügbar: auto|%s", -- ⚠️ UNVERIFIED
}

for key, value in pairs(STRINGS) do
    L[key] = value
end
