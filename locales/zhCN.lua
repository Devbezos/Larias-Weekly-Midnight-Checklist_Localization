--[[
Chinese Simplified (zhCN) strings for Larias's Weekly Checklist
]]
if GetLocale() ~= "zhCN" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "zhCN"
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
	DISPLAY_NAME = "Larias's 每周清单",

	-- Update popup
	UPDATE_AVAILABLE_TEXT = "有新版本可用",

	-- Options tab
	OPTIONS_HIDE_COMPLETED_TASKS = "隐藏已完成任务",
	HIDE_FINISHED_WEEKS          = "隐藏已完成周",
	OPTIONS_HIDE_GREAT_VAULT     = "隐藏宏伟宝库",
	OPTIONS_HIDE_CURRENCY        = "隐藏货币",
	OPTIONS_HIDE_CHANGE_WEEK_BTN = "隐藏周选择器",
	OPTIONS_HIDE_ILVL_REF_BTN    = "隐藏物品等级弹窗按钮",
	OPTIONS_HIDE_SLIDERS         = "隐藏滑块",
	OPTIONS_HIDE_UPDATE_NOTICE   = "隐藏更新警告",
	OPTIONS_DISABLE_UPGRADE_WARN = "隐藏升级警告",
	OPTIONS_HIDE_MINIMAP_BTN     = "隐藏小地图按钮",
	-- Options checkbox tooltips
	OPTIONS_TOOLTIP_HIDE_COMPLETED_TASKS = "隐藏所有周中已勾选的任务。",
	OPTIONS_TOOLTIP_HIDE_FINISHED_WEEKS  = "当一周内所有任务完成后，隐藏整个周的部分。\n|cffaaaaaa（仅在“隐藏已完成任务”关闭时生效）|r",
	OPTIONS_TOOLTIP_HIDE_GREAT_VAULT     = "隐藏宏伟宝库进度追踪面板。",
	OPTIONS_TOOLTIP_HIDE_CURRENCY        = "隐藏货币追踪面板。",
	OPTIONS_TOOLTIP_HIDE_CHANGE_WEEK_BTN = "隐藏标题栏中的更换周按钮。",
	OPTIONS_TOOLTIP_HIDE_ILVL_REF_BTN    = "隐藏标题栏中的物品等级参考弹窗按钮。",
	OPTIONS_TOOLTIP_HIDE_UPDATE_NOTICE   = "隐藏有新版本电子表格可用时显示的横幅。",
	OPTIONS_TOOLTIP_DISABLE_UPGRADE_WARN = "隐藏将物品从1/6升级而非5/6时显示的弹窗警告。",
	OPTIONS_TOOLTIP_HIDE_MINIMAP_BTN     = "隐藏小地图按钮。\n你仍可以通过/larias命令打开清单。",
	RESET_BUTTON = "重置清单",
	UI_SCALE_LABEL       = "缩放",
	UI_SCALE_MIN_LABEL   = "50%",
	UI_SCALE_MAX_LABEL   = "150%",
	UI_OPACITY_LABEL     = "透明度",
	UI_OPACITY_MIN_LABEL = "10%",
	UI_OPACITY_MAX_LABEL = "100%",
	-- Settings panel section headers
	SETTINGS_SECTION_ACTIONS = "操作",
	SETTINGS_SECTION_DISPLAY = "显示",
	SETTINGS_SECTION_COLORS  = "颜色",
	SETTINGS_SECTION_LANGUAGE = "语言",
	SETTINGS_SECTION_SLIDERS = "缩放与透明度",
	-- Settings panel color-row labels
	SETTINGS_COLOR_RESET       = "重置",
	SETTINGS_COLOR_BACKGROUND  = "背景",
	SETTINGS_COLOR_LIST_TEXT   = "列表文字",
	SETTINGS_COLOR_HEADER_TEXT = "标题文字",
	-- Settings panel language override
	SETTINGS_LANGUAGE_AUTO     = "自动（客户端默认）",
	-- Upgrade warning
	UPGRADE_WARN_MSG             = "将1/6的%s物品升级是浪费%d个纹章。\n你应该升级%s物品到5/6。",
	UPGRADE_WARN_DISABLE_BTN     = "隐藏升级警告",
	UPGRADE_WARN_DISABLE_TOOLTIP = "查看Larias's使用指南了解更多信息。",
	-- Color picker swatch labels (gear popup)
	COLOR_PICKER_BG             = "背景",
	COLOR_PICKER_TEXT           = "文字",
	COLOR_PICKER_HDR            = "标题",
	-- Status banner (shown below the slider row)
	STATUS_SHEET_UPDATE_FMT      = "检测到电子表格更新 - 你落后于电子表格%d个版本",
	STATUS_NO_TRANSLATION_FMT    = "没有适用于%s的翻译。欢迎贡献！",
	STATUS_TRANSLATION_NOTICE    = "英文是最新的语言。你的本地化文件可能略有滞后。",
	-- Tracking panel header tooltips
	TOOLTIP_OPEN_GREAT_VAULT  = "点击打开宏伟宝库",
	TOOLTIP_OPEN_CURRENCIES   = "点击打开货币面板",

	-- Tracking panel
	TRACKING_GREAT_VAULT_TITLE = "宏伟宝库",
	TRACKING_CURRENCY_TITLE = "货币",
	TRACKING_GV_RAID     = "团队副本",
	TRACKING_GV_DUNGEONS = "地下城",
	TRACKING_GV_WORLD    = "世界",
	TRACKING_NA = "无",

	TRACKING_SPARKS_LABEL = "火花",
	TRACKING_CREST_LABEL        = "纹章",
	TRACKING_CREST_ID_LABEL_FMT = "纹章 %s：",
	TRACKING_CREST_NAMES_BY_ID  = {
		[3383] = "冒险者",
		[3341] = "老兵",
		[3343] = "勇士",
		[3345] = "英雄",
		[3347] = "神话",
	},
	TRACKING_DONE     = "完成",
	TRACKING_NOT_DONE = "未完成",

	TRACKING_QUEST_DELVERS_BOUNTY = "探寻者的赏赐",
	TRACKING_QUEST_WEEKLY_PREY = "每周猎物",

	TRACKING_NO_ID = "无ID",
	TRACKING_TRADE_UP_SUFFIX = "（转换）",
	TRACKING_CONVERT_TOOLTIP = "通过转换之前的纹章你将获得的纹章数量",

	TRACKING_CATALYST_LABEL = "化生台",
	TRACKING_INF            = "无限",

	-- Minimap tooltip
	MINIMAP_TOOLTIP_LEFT_CLICK_TOGGLE = "左键点击：切换清单",
	MINIMAP_TOOLTIP_RIGHT_CLICK_OPTIONS = "右键点击：选项",
	MINIMAP_TOOLTIP_MIDDLE_CLICK_ILVL = "中键点击：物品等级参考",

	-- Main window
	TAB_LIST    = "清单",
	TAB_OPTIONS = "选项",
	CLOSE               = "关闭",
	CHANGE_WEEK_BUTTON  = "更换周",
	ALL_WEEKS_COMPLETE  = "完成！",
	DONE_PREFIX         = "",
	ILVLREF_BUTTON = "查看物品等级",

	-- Character picker
	CHAR_PICKER_BUTTON          = "切换角色",
	CHAR_PICKER_TOOLTIP_REMOVE  = "要移除角色，请使用选项菜单。",

	-- Item level reference popup
	ILVLREF_WINDOW_TITLE  = "至暗之夜第一赛季物品等级参考",

	ILVLREF_SEC_TRACKS    = "升级路线（每次20纹章）",
	ILVLREF_SEC_CRAFTED   = "制造物品等级",
	ILVLREF_SEC_DUNGEONS  = "地下城物品等级",
	ILVLREF_SEC_RAID      = "至暗之夜团队副本大致物品等级",
	ILVLREF_SEC_DELVES    = "丰裕地下堡物品等级",

	ILVLREF_COL_ILVL         = "物品等级",
	ILVLREF_COL_TRACK        = "升级路线",
	ILVLREF_COL_CREST_NEEDED = "纹章",
	ILVLREF_COL_QUALITY      = "品质",
	ILVLREF_COL_SOURCE       = "来源",
	ILVLREF_COL_END_LOOT     = "最终掉落",
	ILVLREF_COL_GREAT_VAULT  = "宏伟宝库",
	ILVLREF_COL_DIFFICULTY   = "难度",
	ILVLREF_COL_BOSS1        = "早期",
	ILVLREF_COL_BOSS2        = "中期",
	ILVLREF_COL_BOSS3        = "晚期",
	ILVLREF_COL_BOSS4        = "最终",
	ILVLREF_COL_TIER         = "层级",
	ILVLREF_COL_MAP_DROP     = "地图掉落",

	ILVLREF_CREST_ADV          = "冒险者",
	ILVLREF_CREST_VET          = "老兵",
	ILVLREF_CREST_CHAMP        = "勇士",
	ILVLREF_CREST_HERO         = "英雄",
	ILVLREF_CREST_MYTH         = "神话",
	ILVLREF_DO_NOT_USE_CRESTS_FMT = "不要使用%s纹章",

	ILVLREF_DUNGEON_PRE_HEROIC = "赛季前英雄",
	ILVLREF_DUNGEON_HEROIC     = "英雄",
	ILVLREF_DUNGEON_PRE_MYTHIC = "赛季前史诗",
	ILVLREF_DUNGEON_MYTHIC     = "史诗",

	ILVLREF_RAID_LFR           = "随机团队",
	ILVLREF_RAID_NORMAL        = "普通",
	ILVLREF_RAID_HEROIC        = "英雄",
	ILVLREF_RAID_MYTHIC        = "史诗",

	ILVLREF_DELVE_TIER_FMT     = "T%d",

	ILVLREF_TOGGLE_EXPAND = "放大",
	ILVLREF_TOGGLE_SHRINK = "缩小",

	-- Slash commands
	SLASH_USAGE_TOGGLE   = "用法：/larias 或 /lcl 来切换清单",
	SLASH_USAGE_LOCALE   = "用法：/larias locale auto|enUS|deDE|esES|esMX|frFR|itIT|ptBR|ruRU|koKR|zhCN",
	SLASH_LOCALE_SET_FMT = "语言已设置为 %s。（生效：%s）",
	-- ── Support / copy-link strings ───────────────────────────────────────
	LOCALE_RELOAD_TEXT       = "语言设置已保存。重新加载界面以应用新语言。", -- ⚠️ UNVERIFIED
	LOCALE_RELOAD_BTN_NOW    = "立即重载", -- ⚠️ UNVERIFIED
	LOCALE_RELOAD_BTN_LATER  = "稍后", -- ⚠️ UNVERIFIED
	COPY_LINK_POPUP_TEXT     = "按 |cffffffffCtrl+C|r 复制：", -- ⚠️ UNVERIFIED
	GUIDE_LINK_HOVER_TOOLTIP = "点击复制攻略链接", -- ⚠️ UNVERIFIED
	SUPPORT_BTN_GUIDE_DOC    = "攻略文档", -- ⚠️ UNVERIFIED
	SUPPORT_BTN_CHECKLIST    = "清单", -- ⚠️ UNVERIFIED
	SUPPORT_BTN_DISCORD      = "Discord",
	PICKER_RESET_WEEK_TOOLTIP    = "重置为当前周：", -- ⚠️ UNVERIFIED
	PICKER_GO_TO_WEEK_TOOLTIP    = "前往当前周：", -- ⚠️ UNVERIFIED
	TRACKING_CREST_AMOUNT_TOOLTIP = "精确追踪你能持有的纹章数量，包括超出上限的纹章", -- ⚠️ UNVERIFIED
}

for key, value in pairs(STRINGS) do
	L[key] = value
end
