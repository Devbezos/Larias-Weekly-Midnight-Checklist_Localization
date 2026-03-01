--[[
Korean Korea (koKR) strings for Larias's Weekly Checklist
]]
if GetLocale() ~= "koKR" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "koKR"
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
    UPDATE_AVAILABLE_TEXT = "새 버전 이용 가능",
    UPDATE_AVAILABLE_FMT = "%s의 업데이트가 가능합니다.\n\n애드온을 최신 버전으로 업데이트 해주세요.",

    -- Shared buttons
    BUTTON_OK = "확인",
    BUTTON_CANCEL = "취소",

    -- Options tab
    OPTIONS_HIDE_GREAT_VAULT = "위대한 금고 숨기기",
    OPTIONS_HIDE_CURRENCY = "화폐 숨기기",

    HIDE_COMPLETED_WEEKS = "완료된 주 숨기기",
    OPTIONS_HIDE_CHANGE_WEEK_BTN = "주 변경 버튼 숨기기",
    OPTIONS_HIDE_ILVL_REF_BTN = "아이템 레벨 팝업 숨기기",
    OPTIONS_HIDDEN_CHARS_TITLE = "숨겨진 캐릭터:",
    OPTIONS_HIDDEN_CHARS_NONE = "없음",
    RESET_BUTTON = "목록 초기화",
    UI_SCALE_LABEL       = "크기",
    UI_SCALE_MIN_LABEL   = "50%",
    UI_SCALE_MAX_LABEL   = "150%",
    OPTIONS_HIDE_SCALE_SLIDER   = "크기 슬라이더 숨기기",
    OPTIONS_HIDE_SLIDERS        = "슬라이더 숨기기", -- ⚠️ UNVERIFIED
    OPTIONS_HIDE_OPACITY_SLIDER = "불투명도 슬라이더 숨기기", -- ⚠️ UNVERIFIED
    OPTIONS_HIDE_UPDATE_NOTICE  = "업데이트 경고 숨기기", -- ⚠️ UNVERIFIED
    OPTIONS_HIDE_MINIMAP_BTN    = "미니맵 버튼 숨기기", -- ⚠️ UNVERIFIED
    -- Color picker swatch labels (gear popup)
    COLOR_PICKER_BG             = "배경", -- ⚠️ UNVERIFIED
    COLOR_PICKER_TEXT           = "텍스트", -- ⚠️ UNVERIFIED
    COLOR_PICKER_HDR            = "헤더", -- ⚠️ UNVERIFIED

    -- Status banner
    STATUS_UPDATE_AVAILABLE_FMT = "업데이트 가능합니다! 현재 버전: %s, 최신 버전: %s.", -- ⚠️ UNVERIFIED
    STATUS_SHEET_UPDATE_FMT     = "스프레드시트 업데이트 감지됨 – %d 버전 뒤처짐", -- ⚠️ UNVERIFIED
    STATUS_NO_TRANSLATION_FMT   = "%s에 대한 번역이 없습니다. 기여를 고려해 주세요!", -- ⚠️ UNVERIFIED
    STATUS_TRANSLATION_NOTICE   = "영어가 가장 최신 언어입니다. 체크리스트가 약간 구버전일 수 있습니다.", -- ⚠️ UNVERIFIED
    UI_OPACITY_LABEL            = "불투명도", -- ⚠️ UNVERIFIED
    UI_OPACITY_MIN_LABEL        = "10%",
    UI_OPACITY_MAX_LABEL        = "100%",
    DONE_PREFIX = "[완료] ",

    -- Tracking panel header tooltips
    TOOLTIP_OPEN_GREAT_VAULT  = "위대한 금고 열기", -- ⚠️ UNVERIFIED
    TOOLTIP_OPEN_CURRENCIES   = "화폐 패널 열기", -- ⚠️ UNVERIFIED

    -- Tracking panel
    TRACKING_GREAT_VAULT_TITLE = "위대한 금고",
    TRACKING_CURRENCY_TITLE = "화폐",
    TRACKING_GV_RAID = "레이드",
    TRACKING_GV_DUNGEONS = "던전",
    TRACKING_GV_WORLD    = "월드", -- ⚠️ UNVERIFIED: World boss tracking term
    TRACKING_NA = "없음",

    TRACKING_SPARKS_LABEL = "불꽃:",
    TRACKING_DONE = "완료",
    TRACKING_NOT_DONE = "미완료",

	TRACKING_QUEST_DELVERS_BOUNTY = "구렁 탐험가의 은혜:",
	TRACKING_QUEST_WEEKLY_PREY = "주간 사냥감:",

	TRACKING_CREST_LABEL = "문장:",
	TRACKING_CREST_ID_LABEL_FMT = "문장 %s:",
	-- Optional: if present, crest labels are taken from this table instead of the game currency name.
	-- Keys are currency IDs; values should be display names (with or without a trailing ':').
	TRACKING_CREST_NAMES_BY_ID = {
		[3383] = "모험가",
		[3341] = "노련가",
		[3343] = "챔피언",
		[3345] = "영웅",
		[3347] = "신화",
	},
	TRACKING_NO_ID = "ID없음",
	TRACKING_TRADE_UP_SUFFIX = " 교환)",

	TRACKING_CATALYST_LABEL = "촉매:",

	TRACKING_INF = "무제한",

	-- Minimap tooltip
	MINIMAP_TOOLTIP_LEFT_CLICK_TOGGLE = "좌클릭: 체크리스트 ON/OFF",
	MINIMAP_TOOLTIP_RIGHT_CLICK_OPTIONS = "우클릭: 설정",
	MINIMAP_TOOLTIP_MIDDLE_CLICK_ILVL = "휴맨 클릭: 아이템 레벨 참조",

	-- Main window
	TAB_LIST = "목록",
	TAB_OPTIONS = "설정",
	CHANGE_WEEK_BUTTON = "주 변경",
	ILVLREF_BUTTON = "아이템 레벨 참조 표",

	-- Item level reference popup
	ILVLREF_WINDOW_TITLE  = "한밤 1시즌 아이템 레벨 참조 표",

	ILVLREF_SEC_TRACKS    = "업그레이드 트랙  (1단계당 20문장)",
	ILVLREF_SEC_CRAFTED   = "제작 아이템 레벨",
	ILVLREF_SEC_DUNGEONS  = "던전 아이템 레벨",
	ILVLREF_SEC_RAID      = "(대략적인) 레이드 아이템 레벨",
	ILVLREF_SEC_DELVES    = "풍요로운 구렁 아이템 레벨",

	ILVLREF_COL_ILVL         = "템렙",
	ILVLREF_COL_TRACK        = "업그레이드 트랙",
	ILVLREF_COL_CREST_NEEDED = "문장",
	ILVLREF_COL_QUALITY      = "품질",
	ILVLREF_COL_SOURCE       = "획득처",
	ILVLREF_COL_END_LOOT     = "완료 보상",
	ILVLREF_COL_GREAT_VAULT  = "위대한 금고",
	ILVLREF_COL_DIFFICULTY   = "난이도",
	ILVLREF_COL_BOSS1        = "초반",
	ILVLREF_COL_BOSS2        = "중반",
	ILVLREF_COL_BOSS3        = "후반",
	ILVLREF_COL_BOSS4        = "막넴",
	ILVLREF_COL_TIER         = "티어",
	ILVLREF_COL_MAP_DROP     = "은혜 보상",

	ILVLREF_CREST_ADV          = "모험가",
	ILVLREF_CREST_VET          = "노련가",
	ILVLREF_CREST_CHAMP        = "챔피언",
	ILVLREF_CREST_HERO         = "영웅",
	ILVLREF_CREST_MYTH         = "신화",
	ILVLREF_DO_NOT_USE_CRESTS_FMT = "%s문장 절대 사용 금지",

	ILVLREF_DUNGEON_PRE_HEROIC = "프리시즌 영웅",
	ILVLREF_DUNGEON_HEROIC     = "영웅",
	ILVLREF_DUNGEON_PRE_MYTHIC = "프리시즌 신화",
	ILVLREF_DUNGEON_MYTHIC     = "신화",

	ILVLREF_RAID_LFR           = "공격대 찾기",
	ILVLREF_RAID_NORMAL        = "일반",
	ILVLREF_RAID_HEROIC        = "영웅",
	ILVLREF_RAID_MYTHIC        = "신화",

	ILVLREF_DELVE_TIER_FMT     = "%d단",

	ILVLREF_TOGGLE_EXPAND = "펼치기",
	ILVLREF_TOGGLE_SHRINK = "접기",

	-- Slash commands
	SLASH_USAGE_TOGGLE = "사용법: /larias 혹은 /lcl 를 입력하여 체크리스트를 켜거나 끄세요.",
	SLASH_USAGE_LOCALE = "사용법: /larias locale auto|enUS|deDE|esES|esMX|frFR|itIT|ptBR|ruRU|koKR",
	SLASH_LOCALE_SET_FMT = "언어가 %s로 할당 되었습니다. (effective: %s)",
	SLASH_LOCALE_NOT_FOUND = "알 수 없는 언어 '%s'. 사용 가능: auto|%s", -- ⚠️ UNVERIFIED
}

for key, value in pairs(STRINGS) do
    L[key] = value
end
