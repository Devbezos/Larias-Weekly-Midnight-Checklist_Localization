--[[
French (frFR) strings for Larias's Checklist
]]

local addonName = ...
local LOCALE_REGISTRY_KEY = "LARIASWEEKLYMIDNIGHTCHECKLIST_LOCALE_REGISTRY"

local reg = _G[LOCALE_REGISTRY_KEY]
if type(reg) ~= "table" then
    reg = {}
    _G[LOCALE_REGISTRY_KEY] = reg
end
if type(reg.strings) ~= "table" then reg.strings = {} end

reg.strings["frFR"] = reg.strings["frFR"] or {}
local L = reg.strings["frFR"]

local function Set(key, value)
    L[key] = value
end

Set("DISPLAY_NAME", "Larias's Checklist")

-- UI: popup shown when a new addon version is installed (until acknowledged).
Set("UPDATE_AVAILABLE_TITLE", "Nouvelle version disponible")
Set("UPDATE_AVAILABLE_TEXT", "Nouvelle version disponible")
Set("UPDATE_AVAILABLE_FMT", "%s a une mise à jour disponible.\n\nVeuillez mettre à jour l'addon vers la version la plus récente.")

Set("OPTIONS_SHOW_GREAT_VAULT", "Afficher la Grande chambre forte")
Set("OPTIONS_SHOW_CURRENCY", "Afficher les monnaies")

Set("HIDE_COMPLETED_WEEKS", "Masquer les semaines terminées")
Set("OPTIONS_BUTTON", "Options")
Set("RESET_BUTTON", "Réinitialiser")
Set("DONE_PREFIX", "[Fait] ")

Set("OPTIONS_LANGUAGE", "Langue")
Set("OPTIONS_LANGUAGE_AUTO", "Auto")

Set("TRACKING_GREAT_VAULT_TITLE", "Grande chambre forte")
Set("TRACKING_CURRENCY_TITLE", "Monnaie")
Set("TRACKING_GV_RAID", "Raid")
Set("TRACKING_GV_DUNGEONS", "Donjons")
Set("TRACKING_NA", "N/A")

Set("TRACKING_SPARKS_LABEL", "Étincelles :")
Set("TRACKING_DONE", "Fait")
Set("TRACKING_NOT_DONE", "Pas fait")

Set("TRACKING_QUEST_DELVERS_BOUNTY", "Butin de l'explorateur :")
Set("TRACKING_QUEST_WEEKLY_PREY", "Proie hebdomadaire :")

Set("TRACKING_CREST_LABEL", "Crête :")
Set("TRACKING_CREST_ID_LABEL_FMT", "Crête %s :")
Set("TRACKING_NO_ID", "Aucun ID")
Set("TRACKING_TRADE_UP_SUFFIX", " Amélioration)")

Set("TRACKING_CATALYST_LABEL", "Catalyseur :")

Set("TRACKING_CURRENCY_FALLBACK_PREFIX", "Monnaie ")
Set("TRACKING_CREST_MATCH_SUBSTRING", "crête")
Set("TRACKING_INF", "INF")

-- Currency name overrides (useful when addon language override differs from WoW client locale).
-- Keys can be currency IDs (number) or API names (string).
Set("CURRENCY_NAME_OVERRIDES", {
    -- TWW crests (from Constants): 3284, 3286, 3288, 3290
    [3284] = "Usée",
    [3286] = "Taillée",
    [3288] = "Runique",
    [3290] = "Dorée",

    -- Midnight profile crests (from Constants): 3383, 3341, 3343, 3345, 3347
    [3383] = "Usée",
    [3341] = "Taillée",
    [3343] = "Runique",
    [3345] = "Dorée",
    [3347] = "Mythique",
})
