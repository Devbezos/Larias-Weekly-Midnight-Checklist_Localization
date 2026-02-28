-- Localization companion: early-init.
-- Runs before all locale files so that the LOAD_ALL_LOCALES guard works at load time.
--
-- If either the main addon OR this localization addon is a dev/pre-release build
-- (version string contains "-", e.g. "2.1.0-alpha", "2.0.6-1") then automatically
-- load all locales so contributors can test every translation without changing
-- their WoW client language.
do
    -- Support both legacy GetAddOnMetadata and the newer C_AddOns.GetAddOnMetadata.
    local _GetMeta = (C_AddOns and C_AddOns.GetAddOnMetadata) or GetAddOnMetadata
    if _GetMeta then
        local mainVer   = _GetMeta("LariasWeeklyChecklist", "Version") or ""
        local localeVer = _GetMeta("LariasWeeklyChecklist_Localization", "Version") or ""
        if mainVer:find("%-") or localeVer:find("%-") then
            _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] = true
        end
    end
end
