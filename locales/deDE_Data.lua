--[[
German (deDE) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
]]
if GetLocale() ~= "deDE" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "deDE"

local LOCALE_REGISTRY_KEY = "LARIASWEEKLYCHECKLIST_LOCALE_REGISTRY"

local reg = _G[LOCALE_REGISTRY_KEY]
if type(reg) ~= "table" then
    reg = {}
    _G[LOCALE_REGISTRY_KEY] = reg
end
if type(reg.data) ~= "table" then reg.data = {} end

local DATASET = {

    {
        id = "e225d803",
        title = "Früher Zugang - 26. Feb. bis 2. März - Pay to Win",
        items = {
            { id = "f4b92a82", text = "Mit jedem Charakter einloggen, den du leveln möchtest, damit er mit dem Ansammeln ausgeruhter EP beginnt." }, -- ⚠️ UNVERIFIED
            { id = "825bfe20", text = "Charaktere im Kriegsmodus auf Level 90 bringen – JdD öffnet Sonntag für +10 % XP." },
            { id = "50f90465", text = "Wöchentlichen Sturmarion-Angriff im Nichtsturm abschließen. (Im Frühen Zugang verfügbar)" }, -- ⚠️ UNVERIFIED
            { id = "7644d082", text = "(Optional) Jeden seltenen Gegner einmal pro Zone für Ansehen töten. Wöchentlicher Lockout pro Seltenem." },
            { id = "6892e5d5", text = "Schätze jeder Region für kostenloses Ansehen aufspüren. Dokument für Guide lesen." }, -- ⚠️ UNVERIFIED
            { id = "f466c57b", text = "4x Beute auf Normaler Schwierigkeit für Ansehen abschließen." },
            { id = "35bc0cfd", text = "(Optional) Jeden seltenen Gegner einmal pro Zone für Ansehen töten. Wöchentlicher Lockout pro Seltenem." },
            { id = "2687fe6c", text = "Die-höchsten-Gipfel-Errungenschaft für Ansehen abschließen – Guide im Dokument lesen" }, -- ⚠️ UNVERIFIED
            { id = "91e7ee6c", text = "Nebenquestketten für Ansehen abschließen. (Kann auf Alts gleichzeitig beim Leveln erledigt werden). JdD-Buff gewährt kein Ansehen." },
            { id = "4e99ff6e", text = "Hinweis: Nur das Champion-Ansehen-Schmuckstück der Singularität ist im Frühen Zugang verfügbar – die anderen werden entweder am Montag nach dem offiziellen Release oder nach dem wöchentlichen Reset jeder Region freigeschaltet." }, -- ⚠️ UNVERIFIED
        },
    },

    {
        id = "50281d6f",
        title = "Vorsaison Woche 1 - 3. März - M0s",
        items = {
            { id = "c3de7d35", text = "Keine Wappen ausgeben, bis es angewiesen wird" },
            { id = "fe628d60", text = "Ansehen bei 'Die Singularität' auf Rang 7 erhöhen für 1/6-Champion-Schmuckstück - available in early access - comes from quest from the renown vendor (not purchased)" },
            { id = "9b594c78", text = "Ansehen bei Hara'ti auf Rang 8 erhöhen für 1/6-Champion-Gürtel - not available in early access? - comes from quest from the renown vendor (not purchased)" },
            { id = "6c01e9d5", text = "Ansehen bei Silbermond auf Rang 9 erhöhen für 1/6-Champion-Helm - NOT available in early access - comes from quest from the renown vendor (not purchased)" },
            { id = "484f13d6", text = "Ansehen beim Amani-Stamm auf Rang 9 erhöhen für 1/6-Champion-Halskette - not available in early access? - comes from quest from the renown vendor (not purchased)" },
            { id = "e326ed96", text = "Wöchentliches Saltheril-Fest im Immergrünen Wald abschließen." },
            { id = "da2fa0ef", text = "Wöchentliches Überfluss-Ereignis in Zul'Aman abschließen." },
            { id = "dbc8384b", text = "Wöchentliches Legenden der Haranir-Ereignis in Harandar abschließen." },
            { id = "9ad64245", text = "Wöchentlichen Sturmarion-Angriff im Nichtsturm abschließen." },
            { id = "35bc0cfd", text = "(Optional) Jeden seltenen Gegner einmal pro Zone für Ansehen töten. Wöchentlicher Lockout pro Seltenem." },
            { id = "d47e5b93", text = "Falls noch nicht erledigt, Schätze jeder Region für kostenloses Ansehen aufspüren. Dokument für Guide lesen." }, -- ⚠️ UNVERIFIED
            { id = "346bdd7e", text = "Tiefen bis Stufe 8 freischalten (11 falls verfügbar)" },
            { id = "91b50b0a", text = "(Optional) 4x Normale Beute für Abenteurer-Ausrüstung und Ansehen abschließen." },
            { id = "e0029ef7", text = "4x Schwere Beute für Veteran-Ausrüstung und Ansehen abschließen." },
            { id = "a7ee4829", text = "Welttour der M0-Dungeons abschließen – Veteran-Gs – noch nicht aufwerten" },
        },
    },

    {
        id = "ff1f5a67",
        title = "Vorsaison Woche 2 - 10. März - M0s",
        items = {
            { id = "c3de7d35", text = "Keine Wappen ausgeben, bis es angewiesen wird" },
            { id = "75c5fe6e", text = "Falls nicht abgeschlossen: weiter Ansehen für Champion-Teile erhöhen" },
            { id = "e326ed96", text = "Wöchentliches Saltheril-Fest im Immergrünen Wald abschließen." },
            { id = "da2fa0ef", text = "Wöchentliches Überfluss-Ereignis in Zul'Aman abschließen." },
            { id = "dbc8384b", text = "Wöchentliches Legenden der Haranir-Ereignis in Harandar abschließen." },
            { id = "9ad64245", text = "Wöchentlichen Sturmarion-Angriff im Nichtsturm abschließen." },
            { id = "35bc0cfd", text = "(Optional) Jeden seltenen Gegner einmal pro Zone für Ansehen töten. Wöchentlicher Lockout pro Seltenem." },
            { id = "072e6955", text = "Tiefen bis Stufe 8 freischalten (11 falls verfügbar), falls noch nicht erledigt" },
            { id = "91b50b0a", text = "(Optional) 4x Normale Beute für Abenteurer-Ausrüstung und Ansehen abschließen." },
            { id = "e0029ef7", text = "4x Schwere Beute für Veteran-Ausrüstung und Ansehen abschließen." },
            { id = "a7ee4829", text = "Welttour der M0-Dungeons abschließen – Veteran-Gs – noch nicht aufwerten" },
            { id = "c33e5c84", text = "Falls du Dienstag den 17. raidest, craften. Dokument für mehr Infos lesen." },
        },
    },

    {
        id = "33a3fcba",
        title = "Saison 1 Woche 1 - 17. März - Heroisch-Woche",
        items = {
            { id = "c3de7d35", text = "Keine Wappen ausgeben, bis es angewiesen wird" },
            { id = "5b379666", text = "LFR für Tier-Teile machen (Guide lesen warum)" },
            { id = "dd71541a", text = "(Optional?) Welttour der M0-Dungeons abschließen – Champion-Gs" }, -- ⚠️ UNVERIFIED
            { id = "123747cb", text = "4x Albtraum-Beute für Champion-Ausrüstung und Ansehen abschließen." },
            { id = "dc0e2686", text = "Weltboss töten für Champion 2/6 250-Gs-Item" },
            { id = "3e0dfde7", text = "Falls verfügbar: PvP-Quest für garantierten Helden-Hals/-Ring abschließen" },
            { id = "fdfd56bc", text = "T8-Üppige Tiefen mit Truhen-Schlüsseln machen, Karte bei T8+-Tiefen nutzen" },
            { id = "eff76e73", text = "Vor dem Schlachtzug: 2x 246-Gs-Teile craften, 2x Verzierungen in schwache Slots, 160 Veteran-Wappen nutzen" },
            { id = "2af0bfb5", text = "Vor dem Schlachtzug: alle Abenteurer-, Veteran- und Champion-Wappen für Upgrades ausgeben" },
            { id = "5768e0fe", text = "Wappen tracken: 0/100 Heroisch, 0/100 Mythisch" },
        },
    },

    {
        id = "d2de9d43",
        title = "Woche 2 - 24. März - Mythisch-Woche, M+ öffnet, nehmt Urlaub Nerds",
        items = {
            { id = "c3de7d35", text = "Keine Wappen ausgeben, bis es angewiesen wird" },
            { id = "7e42a12d", text = "1H-Craft-Hinweis, Guide lesen, Craftpfad-Info prüfen (SEHR WICHTIG!)" },
            { id = "5b379666", text = "LFR für Tier-Teile machen (Guide lesen warum)" },
            { id = "16cf341e", text = "(Optional) Weltboss töten für Champion 2/6 250-Gs-Item" },
            { id = "3ccf0a1f", text = "(Optional) 4x Albtraum-Beute für Champion-Ausrüstung und Ansehen abschließen." },
            { id = "26d0b610", text = "Mindestens eine T11-Üppige Tiefe für den Zerbrochener-Schlussstein-Quest machen" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Weiterhin alle Abenteurer-, Veteran- und Champion-Wappen für Upgrades ausgeben" },
            { id = "74924a7b", text = "+10er farmen für 266-Ausrüstung in jedem Slot" },
            { id = "eb45e64d", text = "Vor dem Mythisch-Schlachtzug: 11x 3/6-Heldenteile je einmal aufwerten" },
            { id = "cbfb6966", text = "Mythisch: Falls du ein Mythen-Spur-Item hast, Upgrade-Tipps der nächsten Woche dafür nutzen." },
            { id = "0e855644", text = "Wappen tracken: 220/220 Heroisch, 0/220 Mythisch – Mythen-Wappen nie horten" },
            { id = "721f006f", text = "Abschluss-Gs: 4x266, 11x269" },
        },
    },

    {
        id = "b0abc363",
        title = "Woche 3 - 31. März - Letzter Schlachtzug öffnet",
        items = {
            { id = "1fbc825e", text = "Große Schatzkammer öffnen (272+ Mythisch-Item) – nach dem Craften aufwerten" },
            { id = "fb8255a7", text = "Items craften – Guide für 2 auswählbare Pfade lesen" },
            { id = "8226c872", text = "Falls kein 4p: LFR für Tier-Teile machen (Guide lesen warum)" },
            { id = "1db5f946", text = "+10er farmen für Große Schatzkammer + Wappen" },
            { id = "c316485a", text = "Heroisch: 2 deiner 4/6-269-Items auf 6/6 276 für 80 Heroisch-Wappen aufwerten" },
            { id = "2568bd36", text = "Mythisch: Falls Item der Großen Schatzkammer 1/6 war, erst Heroisch-Gegenstück auf 6/6 für 20 Heroisch-Wappen. Dann 1/6 272 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen." },
            { id = "484da4b0", text = "Falls 2. Mythen-Spur-Item: Upgrade-Tipps der nächsten Woche dafür nutzen." },
            { id = "0ecf8e89", text = "Wappen tracken: 320/320 Heroisch, 160/320 Mythisch – Mythen-Wappen nie horten" },
            { id = "02884180", text = "Abschluss-Gs: 3x266, 8x269, 2x276h, 1x285(gecraftet), 1x289" },
        },
    },

    {
        id = "572003ec",
        title = "Woche 4 - 7. Apr.",
        items = {
            { id = "9375e497", text = "Große Schatzkammer öffnen (272+ Mythisch-Item)" },
            { id = "1db5f946", text = "+10er farmen für Große Schatzkammer + Wappen" },
            { id = "c316485a", text = "Heroisch: 2 deiner 4/6-269-Items auf 6/6 276 für 80 Heroisch-Wappen aufwerten" },
            { id = "2568bd36", text = "Mythisch: Falls Item der Großen Schatzkammer 1/6 war, erst Heroisch-Gegenstück auf 6/6 für 20 Heroisch-Wappen. Dann 1/6 272 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen." },
            { id = "0ccf5c83", text = "Mythisch: Schlachtzug-Drop 2/6 275 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen aufwerten." },
            { id = "299f3284", text = "Wappen tracken: 420/400 Heroisch, 320/420 Mythisch – Mythen-Wappen nie horten" },
            { id = "8b8cde46", text = "Abschluss-Gs: 2x266, 5x269, 4x276h, 1x285(gecraftet), 3x289" },
        },
    },

    {
        id = "239053b5",
        title = "Woche 5 - 14. Apr.",
        items = {
            { id = "9375e497", text = "Große Schatzkammer öffnen (272+ Mythisch-Item)" },
            { id = "1db5f946", text = "+10er farmen für Große Schatzkammer + Wappen" },
            { id = "11e426da", text = "Nächstes Item craften (Dokument für mehr Infos lesen)" },
            { id = "c316485a", text = "Heroisch: 2 deiner 4/6-269-Items auf 6/6 276 für 80 Heroisch-Wappen aufwerten" },
            { id = "2568bd36", text = "Mythisch: Falls Item der Großen Schatzkammer 1/6 war, erst Heroisch-Gegenstück auf 6/6 für 20 Heroisch-Wappen. Dann 1/6 272 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen." },
            { id = "8d74c3e1", text = "Wappen tracken: 520/520 Heroisch, 480/520 Mythisch – Mythen-Wappen nie horten" },
            { id = "4f04ba4e", text = "Abschluss-Gs: 1x266, 2x269, 6x276h, 2x285(gecraftet), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Woche 6 - 21. Apr. - Fertig mit Heroisch-Wappen",
        items = {
            { id = "9375e497", text = "Große Schatzkammer öffnen (272+ Mythisch-Item)" },
            { id = "1db5f946", text = "+10er farmen für Große Schatzkammer + Wappen" },
            { id = "c35cf0b6", text = "Heroisch: Letztes 4/6-269-Item auf 6/6 276 für 40 Heroisch-Wappen aufwerten" },
            { id = "2568bd36", text = "Mythisch: Falls Item der Großen Schatzkammer 1/6 war, erst Heroisch-Gegenstück auf 6/6 für 20 Heroisch-Wappen. Dann 1/6 272 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen." },
            { id = "0ccf5c83", text = "Mythisch: Schlachtzug-Drop 2/6 275 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen aufwerten." },
            { id = "4510d1aa", text = "Wappen tracken: 560/620 Heroisch, 620/620 Mythisch – Mythen-Wappen nie horten" },
            { id = "67f84375", text = "Abschluss-Gs: 7x276h, 2x285(gecraftet), 1x285, 5x289" },
        },
    },

    {
        id = "fd1bf82c",
        title = "Woche 7 - 28. Apr.+",
        items = {
            { id = "f9978f0e", text = "Nicht craften wenn Items der Großen Schatzkammer besser als 1/6 möglich" },
            { id = "66e83cc1", text = "Mythisch-Items sofort aufwerten, bevorzugt auf 289 für den +4-Sprung" },
            { id = "a90c240c", text = "Möglichen 1H + gecrafteten Nebenwaffenwechsel planen" },
            { id = "10aac768", text = "Blizzards viel besseres Upgrade-System genießen!" },
        },
    },
}

reg.data[LOCALE] = DATASET
