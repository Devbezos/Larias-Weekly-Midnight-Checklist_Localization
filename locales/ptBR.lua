--[[
Portuguese-Brazil (ptBR) strings for Larias's Weekly Checklist
]]
if GetLocale() ~= "ptBR" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "ptBR"
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
    UPDATE_AVAILABLE_TEXT = "Nova versão disponível",
    UPDATE_AVAILABLE_FMT = "%s tem uma atualização disponível.\n\nPor favor, atualize o addon para a versão mais recente.",

    -- Shared buttons
    BUTTON_OK = "OK",
    BUTTON_CANCEL = "Cancelar",

    -- Options tab
    OPTIONS_HIDE_GREAT_VAULT = "Ocultar Grande Cofre",
    OPTIONS_HIDE_CURRENCY = "Ocultar moeda",

    HIDE_COMPLETED_WEEKS = "Ocultar semanas concluídas",
    OPTIONS_HIDE_CHANGE_WEEK_BTN = "Ocultar botão Mudar semana",
    OPTIONS_HIDE_ILVL_REF_BTN = "Ocultar pop-up de Níveis de item",
    OPTIONS_HIDDEN_CHARS_TITLE = "Personagens ocultos:",
    OPTIONS_HIDDEN_CHARS_NONE = "Nenhum",
    RESET_BUTTON = "Redefinir",
    UI_SCALE_LABEL = "Escala de UI",
    UI_SCALE_MIN_LABEL = "50%",
    UI_SCALE_MAX_LABEL = "150%",
    OPTIONS_HIDE_SCALE_SLIDER   = "Ocultar controle de escala",
    OPTIONS_HIDE_SLIDERS        = "Ocultar controles deslizantes",
    OPTIONS_HIDE_OPACITY_SLIDER = "Ocultar controle de opacidade",
    OPTIONS_HIDE_UPDATE_NOTICE  = "Ocultar alertas de atualização", -- ⚠️ UNVERIFIED
    OPTIONS_HIDE_MINIMAP_BTN    = "Ocultar botão do minimapa", -- ⚠️ UNVERIFIED
    -- Options checkbox tooltips
    OPTIONS_TOOLTIP_HIDE_COMPLETED_TASKS = "Oculta tarefas individuais marcadas de todas as semanas.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_FINISHED_WEEKS  = "Oculta seções semanais inteiras quando todas as tarefas estão concluídas.\n|cffaaaaaa(Ativo apenas quando Ocultar tarefas concluídas está desabilitado.)|r", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_GREAT_VAULT     = "Oculta o painel de progresso do Grande Cofre.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_CURRENCY        = "Oculta o painel de rastreamento de moeda.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_CHANGE_WEEK_BTN = "Oculta o botão Trocar semana no cabeçalho.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_ILVL_REF_BTN    = "Oculta o botão popup de referência de nível de item no cabeçalho.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_UPDATE_NOTICE   = "Oculta o banner exibido quando uma nova versão da planilha está disponível.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_DISABLE_UPGRADE_WARN = "Oculta o aviso popup ao aprimorar um item 1/6 em vez de 5/6.", -- ⚠️ UNVERIFIED
    OPTIONS_TOOLTIP_HIDE_MINIMAP_BTN     = "Oculta o botão do minimapa.\nVocê ainda pode abrir a lista com /larias.", -- ⚠️ UNVERIFIED
    -- Color picker swatch labels (gear popup)
    COLOR_PICKER_BG             = "Fundo", -- ⚠️ UNVERIFIED
    COLOR_PICKER_TEXT           = "Texto", -- ⚠️ UNVERIFIED
    COLOR_PICKER_HDR            = "Cabeçalho", -- ⚠️ UNVERIFIED
    -- Status banner
    STATUS_UPDATE_AVAILABLE_FMT = "Atualização disponível! Você tem %s, a mais recente é %s.", -- ⚠️ UNVERIFIED
    STATUS_SHEET_UPDATE_FMT     = "Atualização da planilha detectada – você está %d versão/versões atrás", -- ⚠️ UNVERIFIED
    STATUS_NO_TRANSLATION_FMT   = "Nenhuma tradução disponível para %s. Considere contribuir!", -- ⚠️ UNVERIFIED
    STATUS_TRANSLATION_NOTICE   = "O inglês é o idioma mais atualizado. Sua lista pode estar ligeiramente desatualizada.", -- ⚠️ UNVERIFIED
    UI_OPACITY_LABEL            = "Opacidade",
    UI_OPACITY_MIN_LABEL        = "10%",
    UI_OPACITY_MAX_LABEL        = "100%",

    -- List tab
    DONE_PREFIX = "[Feito] ",

    -- Tracking panel header tooltips
    TOOLTIP_OPEN_GREAT_VAULT  = "Clique para abrir o Grande Cofre", -- ⚠️ UNVERIFIED
    TOOLTIP_OPEN_CURRENCIES   = "Clique para abrir o painel de moeda", -- ⚠️ UNVERIFIED

    -- Tracking panel
    TRACKING_GREAT_VAULT_TITLE = "Grande Cofre",
    TRACKING_CURRENCY_TITLE = "Moeda",
    TRACKING_GV_RAID = "Raid",
    TRACKING_GV_DUNGEONS = "Masmorras",
    TRACKING_GV_WORLD    = "Mundo",
    TRACKING_NA          = "N/D",

    TRACKING_SPARKS_LABEL = "Fluxo de Mana do Alvorecer:",
    TRACKING_DONE = "Feito",
    TRACKING_NOT_DONE = "Não feito",

    TRACKING_QUEST_DELVERS_BOUNTY = "Recompensa do explorador:",
    TRACKING_QUEST_WEEKLY_PREY = "Presa semanal:",

    TRACKING_CREST_LABEL = "Brasão:",
    TRACKING_CREST_ID_LABEL_FMT = "Brasão %s:",
    -- Optional: if present, crest labels are taken from this table instead of the game currency name.
    -- Keys are currency IDs; values should be display names (with or without a trailing ':').
    TRACKING_CREST_NAMES_BY_ID = {
        [3383] = "Aventureiro",
        [3341] = "Veterano",
        [3343] = "Campeão",
        [3345] = "Herói",
        [3347] = "Mítico",
    },
    TRACKING_NO_ID = "Sem ID",
    TRACKING_TRADE_UP_SUFFIX = " Converter)",
    TRACKING_CONVERT_TOOLTIP = "Número de brasões que você ganhará ao converter brasões anteriores",

    TRACKING_CATALYST_LABEL = "Catalisador:",

    TRACKING_INF = "INF",

    -- Minimap tooltip
    MINIMAP_TOOLTIP_LEFT_CLICK_TOGGLE = "Clique esquerdo: Mostrar/ocultar a lista",
    MINIMAP_TOOLTIP_RIGHT_CLICK_OPTIONS = "Clique direito: Opções",
    MINIMAP_TOOLTIP_MIDDLE_CLICK_ILVL = "Clique do meio: Níveis de item",

    -- Main window
    TAB_LIST = "Lista",
    TAB_OPTIONS = "Opções",
    CHANGE_WEEK_BUTTON = "Mudar semana",
    ILVLREF_BUTTON = "Ver níveis de item",

    -- Item level reference popup
    ILVLREF_WINDOW_TITLE  = "Referência de nível de item – Midnight Temporada 1",

    ILVLREF_SEC_TRACKS    = "Trilhas de melhoria  (20 brasões por passo)",
    ILVLREF_SEC_CRAFTED   = "Níveis de item criado",
    ILVLREF_SEC_DUNGEONS  = "Níveis de item de masmorra",
    ILVLREF_SEC_RAID      = "Aprox. níveis de item de raid de Midnight",
    ILVLREF_SEC_DELVES    = "Níveis de item de imersões abundantes",

    ILVLREF_COL_ILVL         = "n. item",
    ILVLREF_COL_TRACK        = "Trilhas de melhoria",
    ILVLREF_COL_CREST_NEEDED = "Brasões",
    ILVLREF_COL_QUALITY      = "Qualidade",
    ILVLREF_COL_SOURCE       = "Fonte",
    ILVLREF_COL_END_LOOT     = "Saque final",
    ILVLREF_COL_GREAT_VAULT  = "Grande Cofre",
    ILVLREF_COL_DIFFICULTY   = "Dificuldade",
    ILVLREF_COL_BOSS1        = "Início",
    ILVLREF_COL_BOSS2        = "Meio",
    ILVLREF_COL_BOSS3        = "Final",
    ILVLREF_COL_BOSS4        = "Fim",
    ILVLREF_COL_TIER         = "Nível",
    ILVLREF_COL_MAP_DROP     = "Drop de mapa",

    ILVLREF_CREST_ADV          = "Avent",
    ILVLREF_CREST_VET          = "Vet",
    ILVLREF_CREST_CHAMP        = "Camp",
    ILVLREF_CREST_HERO         = "Herói",
    ILVLREF_CREST_MYTH         = "Mít",
    ILVLREF_DO_NOT_USE_CRESTS_FMT = "NÃO USAR BRASÕES %s",

    ILVLREF_DUNGEON_PRE_HEROIC = "Heróico pré-temp.",
    ILVLREF_DUNGEON_HEROIC     = "Heróico",
    ILVLREF_DUNGEON_PRE_MYTHIC = "Mítico pré-temp.",
    ILVLREF_DUNGEON_MYTHIC     = "Mítico",

    ILVLREF_RAID_LFR           = "Localizador de Raides",
    ILVLREF_RAID_NORMAL        = "Normal",
    ILVLREF_RAID_HEROIC        = "Heróico",
    ILVLREF_RAID_MYTHIC        = "Mítico",

    ILVLREF_DELVE_TIER_FMT     = "T%d",

    ILVLREF_TOGGLE_EXPAND = "Mostrar todas as tabelas",
    ILVLREF_TOGGLE_SHRINK = "Minimizar",

    -- Slash commands
    SLASH_USAGE_TOGGLE = "Uso: /larias ou /lcl para mostrar/ocultar a lista",
    SLASH_USAGE_LOCALE = "Uso: /larias locale auto|enUS|deDE|esES|esMX|frFR|itIT|ptBR|ruRU",
    SLASH_LOCALE_SET_FMT = "Idioma definido para %s (efetivo: %s)",
    SLASH_LOCALE_NOT_FOUND = "Idioma desconhecido '%s'. Disponível: auto|%s", -- ⚠️ UNVERIFIED

    -- ── Auto-translated (review with native speaker) ──────────────────────
    OPTIONS_HIDE_COMPLETED_TASKS = "Ocultar Tarefas Concluídas",
    HIDE_FINISHED_WEEKS = "Ocultar Semanas Concluídas",
    OPTIONS_DISABLE_UPGRADE_WARN = "Ocultar Avisos de Aprimoramento",
    SETTINGS_SECTION_ACTIONS = "Ações",
    SETTINGS_SECTION_DISPLAY = "Exibição",
    SETTINGS_SECTION_COLORS = "Cores",
    SETTINGS_SECTION_LANGUAGE = "Idioma",
    SETTINGS_SECTION_SLIDERS = "Escala e Opacidade",
    SETTINGS_COLOR_RESET = "Resetar",
    SETTINGS_COLOR_BACKGROUND = "Fundo",
    SETTINGS_COLOR_LIST_TEXT = "Texto da Lista",
    SETTINGS_COLOR_HEADER_TEXT = "Texto do Cabeçalho",
    SETTINGS_LANGUAGE_AUTO = "Automático (Padrão do Cliente)",
    UPGRADE_WARN_MSG = "Aprimorar um item %s 1/6 é um desperdício de %d brasões.\nAprimor um item %s 5/6 em vez disso", -- ⚠️ UNVERIFIED
    UPGRADE_WARN_DISABLE_BTN = "Ocultar Aviso de Aprimoramento",
    UPGRADE_WARN_DISABLE_TOOLTIP = "Confira o guia de Larias para mais informações.",
    ALL_WEEKS_COMPLETE = "Concluído!",
    CHAR_PICKER_BUTTON = "Trocar Perfil",
    CHAR_PICKER_TOOLTIP_REMOVE = "Para remover um personagem, use o menu de Opções.",
    -- ── Support / copy-link strings ───────────────────────────────────────
    LOCALE_RELOAD_TEXT       = "Alteração de idioma salva. Recarregue a interface para aplicar o novo idioma.", -- ⚠️ UNVERIFIED
    LOCALE_RELOAD_BTN_NOW    = "Recarregar agora", -- ⚠️ UNVERIFIED
    LOCALE_RELOAD_BTN_LATER  = "Depois", -- ⚠️ UNVERIFIED
    COPY_LINK_POPUP_TEXT     = "Pressione |cffffffffCtrl+C|r para copiar:", -- ⚠️ UNVERIFIED
    GUIDE_LINK_HOVER_TOOLTIP = "Clique para copiar o link do guia", -- ⚠️ UNVERIFIED
    SUPPORT_BTN_GUIDE_DOC    = "Guia", -- ⚠️ UNVERIFIED
    SUPPORT_BTN_CHECKLIST    = "Lista", -- ⚠️ UNVERIFIED
    SUPPORT_BTN_DISCORD      = "Discord",
    CLOSE                        = "Fechar", -- ⚠️ UNVERIFIED
    PICKER_RESET_WEEK_TOOLTIP    = "Redefinir para a semana:", -- ⚠️ UNVERIFIED
    PICKER_GO_TO_WEEK_TOOLTIP    = "Ir para a semana:", -- ⚠️ UNVERIFIED
    TRACKING_CREST_AMOUNT_TOOLTIP = "Rastreia com precisão quantos brasões você pode guardar, incluindo os que excedem o limite", -- ⚠️ UNVERIFIED
}

for key, value in pairs(STRINGS) do
    L[key] = value
end
