--[[
French (frFR) strings for Larias's Weekly Checklist
]]
if GetLocale() ~= "frFR" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "frFR"
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
    UPDATE_AVAILABLE_TEXT = "Nouvelle version disponible",
    UPDATE_AVAILABLE_FMT = "%s a une mise à jour disponible.\n\nVeuillez mettre à jour l'addon vers la dernière version.",

    -- Shared buttons
    BUTTON_OK = "OK",
    BUTTON_CANCEL = "Annuler",

    -- Options tab
    OPTIONS_HIDE_GREAT_VAULT = "Masquer la Grande Chambre Forte",
    OPTIONS_HIDE_CURRENCY = "Masquer la monnaie",

    HIDE_COMPLETED_WEEKS = "Masquer les semaines complétées",
    OPTIONS_HIDE_CHANGE_WEEK_BTN = "Masquer le bouton Changer de semaine",
    OPTIONS_HIDE_ILVL_REF_BTN = "Masquer la fenêtre pop-up des Niveaux d'objet",
    OPTIONS_HIDDEN_CHARS_TITLE = "Personnages masqués :",
    OPTIONS_HIDDEN_CHARS_NONE = "Aucun",
    RESET_BUTTON = "Réinitialiser",
    UI_SCALE_LABEL = "Échelle UI",
    UI_SCALE_MIN_LABEL = "50%",
    UI_SCALE_MAX_LABEL = "150%",
    OPTIONS_HIDE_SCALE_SLIDER   = "Masquer le curseur de mise à l'échelle",
    OPTIONS_HIDE_SLIDERS        = "Masquer les curseurs",
    OPTIONS_HIDE_OPACITY_SLIDER = "Masquer le curseur d'opacité",
    OPTIONS_HIDE_UPDATE_NOTICE  = "Masquer les avertissements de mise à jour", -- ⚠️ UNVERIFIED
    OPTIONS_HIDE_MINIMAP_BTN    = "Masquer l'icône du Minimap", -- ⚠️ UNVERIFIED
    -- Options checkbox tooltips
    OPTIONS_TOOLTIP_HIDE_COMPLETED_TASKS = "Masque les tâches individuelles cochées de toutes les semaines.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_FINISHED_WEEKS  = "Masque des sections de semaine entières quand toutes les tâches sont terminées.\n|cffaaaaaa(Uniquement actif quand Masquer les tâches terminées est désactivé.)|r", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_GREAT_VAULT     = "Masque le panneau de progression de la Grande Chambre Forte.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_CURRENCY        = "Masque le panneau de suivi des devises.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_CHANGE_WEEK_BTN = "Masque le bouton Changer de semaine dans l'en-tête.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_ILVL_REF_BTN    = "Masque le bouton de référence du niveau d'objet dans l'en-tête.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_UPDATE_NOTICE   = "Masque la bannière affichée lorsqu'une nouvelle version du tableur est disponible.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_DISABLE_UPGRADE_WARN = "Masque l'avertissement affiché quand on améliore un objet 1/6 au lieu d'un 5/6.", -- ⚠️ UNVERIFIED
    -- OPTIONS_TOOLTIP_DISABLE_BONUS_ROLL_WARN = "Masque l'avertissement affiché quand la fenêtre de lancer bonus s'ouvre.", -- ⚠️ UNVERIFIED (temporarily disabled)
    OPTIONS_TOOLTIP_HIDE_MINIMAP_BTN     = "Masque le bouton de la minicarte.\nVous pouvez toujours ouvrir la liste avec /larias.", -- ⚠️ UNVERIFIED
    -- Color picker swatch labels (gear popup)
    COLOR_PICKER_BG             = "Fond", -- ⚠️ UNVERIFIED
    COLOR_PICKER_TEXT           = "Texte", -- ⚠️ UNVERIFIED
    COLOR_PICKER_HDR            = "En-tête", -- ⚠️ UNVERIFIED
    -- Status banner
    STATUS_UPDATE_AVAILABLE_FMT = "Mise à jour disponible ! Vous avez %s, la plus récente est %s.", -- ⚠️ UNVERIFIED
    STATUS_SHEET_UPDATE_FMT     = "Mise à jour de la feuille détectée – %d version(s) de retard", -- ⚠️ UNVERIFIED
    STATUS_NO_TRANSLATION_FMT   = "Aucune traduction disponible pour %s. Envisagez de contribuer !", -- ⚠️ UNVERIFIED
    STATUS_TRANSLATION_NOTICE   = "L'anglais est la langue la plus récente. Votre liste peut être légèrement obsolète.", -- ⚠️ UNVERIFIED
    UI_OPACITY_LABEL            = "Opacité",
    UI_OPACITY_MIN_LABEL        = "10%",
    UI_OPACITY_MAX_LABEL        = "100%",

    -- List tab
    DONE_PREFIX = "[Fait] ",

    -- Tracking panel header tooltips
    TOOLTIP_OPEN_GREAT_VAULT  = "Cliquez pour ouvrir la Grande Chambre Forte", -- ⚠️ UNVERIFIED
    TOOLTIP_OPEN_CURRENCIES   = "Cliquez pour ouvrir le panneau de monnaie", -- ⚠️ UNVERIFIED

    -- Tracking panel
    TRACKING_GREAT_VAULT_TITLE = "Grande Chambre Forte",
    TRACKING_CURRENCY_TITLE = "Monnaie",
    TRACKING_GV_RAID = "Raid",
    TRACKING_GV_DUNGEONS = "Donjons",
    TRACKING_GV_WORLD    = "Monde",
    TRACKING_NA = "N/D",

    TRACKING_SPARKS_LABEL = "Étincelle de radiance :",
    TRACKING_DONE = "Terminé",
    TRACKING_NOT_DONE = "Non terminé",

    TRACKING_QUEST_DELVERS_BOUNTY = "Prime de l'explorateur :",
    TRACKING_QUEST_WEEKLY_PREY = "Traque hebdomadaire :",

    TRACKING_CREST_LABEL = "Écu :",
    TRACKING_CREST_ID_LABEL_FMT = "Écu %s :",
    -- Optional: if present, crest labels are taken from this table instead of the game currency name.
    -- Keys are currency IDs; values should be display names (with or without a trailing ':').
    TRACKING_CREST_NAMES_BY_ID = {
        [3383] = "Aventure",
        [3341] = "Vétéran",
        [3343] = "Champion",
        [3345] = "Héroïque",
        [3347] = "Mythique",
    },
    TRACKING_NO_ID = "Aucun ID",
    TRACKING_TRADE_UP_SUFFIX = " Convertir)",
    TRACKING_CONVERT_TOOLTIP = "Nombre d'écus que vous gagnerez en convertissant des écus précédents",

    TRACKING_CATALYST_LABEL = "Catalyseur :",

    TRACKING_INF = "INF",

    -- Minimap tooltip
    MINIMAP_TOOLTIP_LEFT_CLICK_TOGGLE = "Clic gauche : Afficher/masquer la liste",
    MINIMAP_TOOLTIP_RIGHT_CLICK_OPTIONS = "Clic droit : Options",
    MINIMAP_TOOLTIP_MIDDLE_CLICK_ILVL = "Clic milieu : Niveaux d'objet",

    -- Main window
    TAB_LIST = "Liste",
    TAB_OPTIONS = "Options",

    CHANGE_WEEK_BUTTON = "Changer de semaine",
    ILVLREF_BUTTON = "Voir les niveaux d'objet",

    -- Item level reference popup
    ILVLREF_WINDOW_TITLE  = "Référence des niveaux d'objet – Midnight Saison 1",

    ILVLREF_SEC_TRACKS    = "Voies d'amélioration  (20 écus par étape)",
    ILVLREF_SEC_CRAFTED   = "Niveaux d'objet fabriqué",
    ILVLREF_SEC_DUNGEONS  = "Niveaux d'objet en donjon",
    ILVLREF_SEC_RAID      = "Niveaux d'objet approx. du raid Midnight",
    ILVLREF_SEC_DELVES    = "Niveaux d'objet des gouffres abondants",

    ILVLREF_COL_ILVL         = "niv. obj.",
    ILVLREF_COL_TRACK        = "Voies d'amélioration",
    ILVLREF_COL_CREST_NEEDED = "Écus",
    ILVLREF_COL_QUALITY      = "Qualité",
    ILVLREF_COL_SOURCE       = "Source",
    ILVLREF_COL_END_LOOT     = "Butin final",
    ILVLREF_COL_GREAT_VAULT  = "Grande Chambre Forte",
    ILVLREF_COL_DIFFICULTY   = "Difficulté",
    ILVLREF_COL_BOSS1        = "Début",
    ILVLREF_COL_BOSS2        = "Milieu",
    ILVLREF_COL_BOSS3        = "Fin",
    ILVLREF_COL_BOSS4        = "Final",
    ILVLREF_COL_TIER         = "Niveau",
    ILVLREF_COL_MAP_DROP     = "Butin de carte",

    ILVLREF_CREST_ADV          = "Avent",
    ILVLREF_CREST_VET          = "Vét",
    ILVLREF_CREST_CHAMP        = "Champ",
    ILVLREF_CREST_HERO         = "Héroïque",
    ILVLREF_CREST_MYTH         = "Myth",
    ILVLREF_DO_NOT_USE_CRESTS_FMT = "NE PAS UTILISER D'ÉCUS %s",

    ILVLREF_DUNGEON_PRE_HEROIC = "Héroïque avant-saison",
    ILVLREF_DUNGEON_HEROIC     = "Héroïque",
    ILVLREF_DUNGEON_PRE_MYTHIC = "Mythique avant-saison",
    ILVLREF_DUNGEON_MYTHIC     = "Mythique",

    ILVLREF_RAID_LFR           = "Recherche de raid",
    ILVLREF_RAID_NORMAL        = "Normal",
    ILVLREF_RAID_HEROIC        = "Héroïque",
    ILVLREF_RAID_MYTHIC        = "Mythique",

    ILVLREF_DELVE_TIER_FMT     = "T%d",

    ILVLREF_TOGGLE_EXPAND = "Afficher tout",
    ILVLREF_TOGGLE_SHRINK = "Réduire",

    -- Slash commands
    SLASH_USAGE_TOGGLE = "Utilisation : /larias ou /lcl pour afficher/masquer la liste",
    SLASH_USAGE_LOCALE = "Utilisation : /larias locale auto|enUS|deDE|esES|esMX|frFR|itIT|ptBR|ruRU",
    SLASH_LOCALE_SET_FMT = "Langue définie sur %s (effective : %s)",
    SLASH_LOCALE_NOT_FOUND = "Langue inconnue '%s'. Disponibles : auto|%s", -- ⚠️ UNVERIFIED

    -- ── Auto-translated (review with native speaker) ──────────────────────
    OPTIONS_HIDE_COMPLETED_TASKS = "Masquer les tâches terminées",
    HIDE_FINISHED_WEEKS = "Masquer les semaines terminées",
    OPTIONS_DISABLE_UPGRADE_WARN = "Masquer les avertissements d'amélioration",
    -- OPTIONS_DISABLE_BONUS_ROLL_WARN = "Masquer les avertissements des lancers bonus", -- ⚠️ UNVERIFIED (temporarily disabled)
    SETTINGS_SECTION_ACTIONS = "Actions",
    SETTINGS_SECTION_DISPLAY = "Affichage",
    SETTINGS_SECTION_COLORS = "Couleurs",
    SETTINGS_SECTION_LANGUAGE = "Langue",
    SETTINGS_SECTION_SLIDERS = "Échelle et opacité",
    SETTINGS_COLOR_RESET = "Réinitialiser",
    SETTINGS_COLOR_BACKGROUND = "Arrière-plan",
    SETTINGS_COLOR_LIST_TEXT = "Texte de liste",
    SETTINGS_COLOR_HEADER_TEXT = "Texte d'en-tête",
    SETTINGS_LANGUAGE_AUTO = "Auto (par défaut du client)",
    UPGRADE_WARN_MSG = "Améliorer un objet %s 1/6 est un gaspillage de %d Écus.\nVous devriez améliorer un objet %s 5/6 à la place", -- ⚠️ UNVERIFIED
    UPGRADE_WARN_DISABLE_BTN = "Masquer l'avertissement d'amélioration",
    UPGRADE_WARN_DISABLE_TOOLTIP = "Consultez le guide de Larias pour plus d'informations.",
    -- Bonus roll warning (temporarily disabled)
    -- BONUS_ROLL_WARN_MSG             = "|cffff6600Avertissement :|r Les lancers bonus sont actuellement buggés.\nIl est recommandé de ne pas les utiliser.", -- ⚠️ UNVERIFIED
    -- BONUS_ROLL_WARN_DISABLE_BTN     = "Masquer l'avertissement des lancers bonus", -- ⚠️ UNVERIFIED
    -- BONUS_ROLL_WARN_DISABLE_TOOLTIP = "Il n'y a pas de protection contre les doublons.", -- ⚠️ UNVERIFIED
    ALL_WEEKS_COMPLETE = "Terminé !",
    CHAR_PICKER_BUTTON = "Changer de profil",
    CHAR_PICKER_TOOLTIP_REMOVE = "Pour supprimer un personnage, utilisez le menu Options.",
    -- ── Support / copy-link strings ───────────────────────────────────────
    LOCALE_RELOAD_TEXT       = "Changement de langue enregistré. Rechargez l'interface pour appliquer la nouvelle langue.", -- ⚠️ UNVERIFIED
    LOCALE_RELOAD_BTN_NOW    = "Recharger maintenant", -- ⚠️ UNVERIFIED
    LOCALE_RELOAD_BTN_LATER  = "Plus tard", -- ⚠️ UNVERIFIED
    COPY_LINK_POPUP_TEXT     = "Appuyez sur |cffffffffCtrl+C|r pour copier :", -- ⚠️ UNVERIFIED
    GUIDE_LINK_HOVER_TOOLTIP = "Cliquez pour copier le lien du guide", -- ⚠️ UNVERIFIED
    SUPPORT_BTN_GUIDE_DOC    = "Guide", -- ⚠️ UNVERIFIED
    SUPPORT_BTN_CHECKLIST    = "Liste", -- ⚠️ UNVERIFIED
    SUPPORT_BTN_DISCORD      = "Discord",
    CLOSE                        = "Fermer", -- ⚠️ UNVERIFIED
    PICKER_RESET_WEEK_TOOLTIP    = "Réinitialiser à la semaine :", -- ⚠️ UNVERIFIED
    PICKER_GO_TO_WEEK_TOOLTIP    = "Aller à la semaine :", -- ⚠️ UNVERIFIED
    TRACKING_CREST_AMOUNT_TOOLTIP = "Suit précisément le nombre d'Écus que vous pouvez conserver, y compris les Écus au-delà de la limite", -- ⚠️ UNVERIFIED
}

for key, value in pairs(STRINGS) do
    L[key] = value
end
