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
        id = "bd6b2f68",
        title = "Früher Zugang - 26. Feb bis 2. Mär",
        items = {
            { id = "f4b92a82", text = "Logge dich mit jedem Charakter ein, den du leveln möchtest, damit sie anfangen, Erholt-EP zu sammeln." },
            { id = "90db618c", text = "Level Charaktere mit Kriegsmodus auf 90 - DMF öffnet Sonntag für 10% mehr EP." },
            { id = "6af1d802", text = "Schließe den wöchentlichen Stormarion-Angriff im Leerensturm ab. (Er ist im Frühen Zugang verfügbar)" }, -- ⚠️ UNVERIFIED
            { id = "35bc0cfd", text = "(Optional) Töte jeden seltenen Gegner einmal in jeder Zone für Ruhm. Diese haben eine wöchentliche Sperre für jeden seltenen Gegner." },
            { id = "2687fe6c", text = "Jage die Schätze jeder Region für kostenlosen Ruhm. Siehe Dokument für Anleitung" },
            { id = "91e7ee6c", text = "Schließe 4x Beute im normalen Schwierigkeitsgrad für Ruhm ab" }, -- ⚠️ UNVERIFIED
            { id = "8bf4f442", text = "Schließe den Erfolg Mitternachts-Geschichtsjäger für Ruhm ab - siehe Dokument für Anleitung" }, -- ⚠️ UNVERIFIED
            { id = "c886190c", text = "Schließe den Erfolg Höchste Gipfel für Ruhm ab - siehe Dokument für Anleitung" },
            { id = "f9b8eb01", text = "Schließe Nebenquestreihen für Ruhm ab. (kann auf Twinks erledigt werden, um gleichzeitig zu leveln). DMF-Buff gibt keinen Ruhm." },
            { id = "4aa4b47d", text = "Hinweis: Nur die Champion-Gegenstände von Singularität UND Immersang sind im Early Access verfügbar - die anderen werden entweder am Montag nach dem offiziellen Start oder nach dem wöchentlichen Reset jeder Region verfügbar." },
            { id = "ba1890e4", text = "Schließe die wöchentliche Saltheril's Soiree in den Immersangwäldern ab. Vergiss nicht, die Ruhmquest für den Championhelm zu holen, wenn du den Ruhm hast" }, -- ⚠️ UNVERIFIED
        },
    },

    {
        id = "50281d6f",
        title = "Vorsaison Woche 1 - 3. März - M0s",
        items = {
            { id = "727109d8", text = "Gib keine Wappen aus, bis es dir gesagt wird. Siehe Anleitung, warum wir Wappen zurückhalten." },
            { id = "5a2e9ede", text = "NICHT HERSTELLEN" },
            { id = "c06ee1a3", text = "Wenn du auf einem Twink bist und einige dieser Quests nicht siehst, gehe zu Soridormi im Gasthaus von Silbermond und wähle \"Ich habe den Leerensturm gestoppt\", um die Kampagne zu überspringen." },
            { id = "44fbfe51", text = "Erhöhe den Ruf der Singularität auf Rang 7 für 1/6 Champion-Schmuckstück - kommt von einer Quest vom Rufhändler (nicht gekauft)" },
            { id = "02ceff50", text = "Erhöhe den Ruf der Hara'ti auf Rang 8 für 1/6 Champion-Gürtel - kommt von einer Quest vom Rufhändler (nicht gekauft)" },
            { id = "cdea3773", text = "Erhöhe den Ruf von Silbermond auf Rang 9 für 1/6 Champion-Helm - kommt von einer Quest vom Rufhändler (nicht gekauft)" },
            { id = "19687ed0", text = "Erhöhe den Ruf des Amani-Stammes auf Rang 9 für 1/6 Champion-Halskette - kommt von einer Quest vom Rufhändler (nicht gekauft)" },
            { id = "101e78a9", text = "Schließe die wöchentliche Dungeonquest von Halduron Hellfittich für 1000 Ruhm ab" },
            { id = "0c3b8835", text = "Schließe die wöchentliche Weltereignisquest für Gipfeltruhe von Lady Liadrin ab - kann wöchentliche Ereignisquest annehmen und mit den untenstehenden Ereignissen erledigen" },
            { id = "879d3833", text = "Schließe die wöchentliche Welttour-Quest von Lorthremar für Funken ab, indem du die untenstehenden Quests erledigst" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Wöchentliches Saltheril-Fest im Immergrünen Wald abschließen." },
            { id = "da2fa0ef", text = "Wöchentliches Überfluss-Ereignis in Zul'Aman abschließen." },
            { id = "dbc8384b", text = "Wöchentliches Legenden der Haranir-Ereignis in Harandar abschließen." },
            { id = "9ad64245", text = "Wöchentlichen Sturmarion-Angriff im Nichtsturm abschließen." },
            { id = "35bc0cfd", text = "(Optional) Töte jeden seltenen Gegner einmal in jeder Zone für Ruhm. Diese haben eine wöchentliche Sperre für jeden seltenen Gegner." },
            { id = "1b42ce30", text = "Falls noch nicht erledigt, jage die Schätze jeder Region, Geschichtsjäger und hohe Gipfel für kostenlosen Ruhm. Siehe Dokument für Anleitung" },
            { id = "a892ac44", text = "Schalte Tiefen bis Stufe 8 frei" },
            { id = "9bc44f02", text = "Schließe 2x Schwere Beute für Veteranen-Ausrüstung auf jedem Charakter ab - falls nur ein Charakter, mache 4x auf einem Charakter für Ruhm" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Welttour der M0-Dungeons abschließen – Veteran-Gs – noch nicht aufwerten" },
        },
    },

    {
        id = "ff1f5a67",
        title = "Vorsaison Woche 2 - 10. März - M0s",
        items = {
            { id = "727109d8", text = "Gib keine Wappen aus, bis es dir gesagt wird. Siehe Anleitung, warum wir Wappen zurückhalten." },
            { id = "5a2e9ede", text = "NICHT HERSTELLEN" },
            { id = "75c5fe6e", text = "Falls nicht abgeschlossen: weiter Ansehen für Champion-Teile erhöhen" },
            { id = "101e78a9", text = "Schließe die wöchentliche Dungeonquest von Halduron Hellfittich für 1000 Ruhm ab" },
            { id = "0c3b8835", text = "Schließe die wöchentliche Weltereignisquest für Gipfeltruhe von Lady Liadrin ab - kann wöchentliche Ereignisquest annehmen und mit den untenstehenden Ereignissen erledigen" },
            { id = "e326ed96", text = "Wöchentliches Saltheril-Fest im Immergrünen Wald abschließen." },
            { id = "da2fa0ef", text = "Wöchentliches Überfluss-Ereignis in Zul'Aman abschließen." },
            { id = "dbc8384b", text = "Wöchentliches Legenden der Haranir-Ereignis in Harandar abschließen." },
            { id = "9ad64245", text = "Wöchentlichen Sturmarion-Angriff im Nichtsturm abschließen." },
            { id = "35bc0cfd", text = "(Optional) Töte jeden seltenen Gegner einmal in jeder Zone für Ruhm. Diese haben eine wöchentliche Sperre für jeden seltenen Gegner." },
            { id = "23cb93ed", text = "Schalte Tiefen bis Stufe 8 frei, falls noch nicht geschehen" },
            { id = "9bc44f02", text = "Schließe 2x Schwere Beute für Veteranen-Ausrüstung auf jedem Charakter ab - falls nur ein Charakter, mache 4x auf einem Charakter für Ruhm" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Welttour der M0-Dungeons abschließen – Veteran-Gs – noch nicht aufwerten" },
            { id = "c33e5c84", text = "Falls du Dienstag den 17. raidest, craften. Dokument für mehr Infos lesen." },
        },
    },

    {
        id = "33a3fcba",
        title = "Saison 1 Woche 1 - 17. März - Heroisch-Woche",
        items = {
            { id = "727109d8", text = "Gib keine Wappen aus, bis es dir gesagt wird. Siehe Anleitung, warum wir Wappen zurückhalten." },
            { id = "5b379666", text = "LFR für Tier-Teile machen (Guide lesen warum)" },
            { id = "879d3833", text = "Schließe die wöchentliche Welttour-Quest von Lorthremar für Funken ab, indem du die untenstehenden Quests erledigst" }, -- ⚠️ UNVERIFIED
            { id = "9686fde4", text = "Schließe die wöchentliche Hausquest von Vaeli für ?Heldenwappen? ab (wird aktualisiert, wenn es live geht)" }, -- ⚠️ UNVERIFIED
            { id = "952916cd", text = "(Optional) Schließe eine Welttour von M0-Dungeons ab - belohnt Champion-Gegenstandsstufe" },
            { id = "22842538", text = "Schließe 2x Albtraum-Beute für Champion-Ausrüstung auf jedem Charakter ab" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Weltboss töten für Champion 2/6 250-Gs-Item" },
            { id = "3e0dfde7", text = "Falls verfügbar: PvP-Quest für garantierten Helden-Hals/-Ring abschließen" },
            { id = "b6846065", text = "Mache S8 oder höhere ertragreiche Tiefen, benutze Karte auf S8+ Tiefe - während du dies tust, schalte S11 Tiefen frei" },
            { id = "eff76e73", text = "Vor dem Schlachtzug: 2x 246-Gs-Teile craften, 2x Verzierungen in schwache Slots, 160 Veteran-Wappen nutzen" },
            { id = "2af0bfb5", text = "Vor dem Schlachtzug: alle Abenteurer-, Veteran- und Champion-Wappen für Upgrades ausgeben" },
            { id = "5768e0fe", text = "Wappen tracken: 0/100 Heroisch, 0/100 Mythisch" },
        },
    },

    {
        id = "d2de9d43",
        title = "Woche 2 - 24. März - Mythisch-Woche, M+ öffnet, nehmt Urlaub Nerds",
        items = {
            { id = "727109d8", text = "Gib keine Wappen aus, bis es dir gesagt wird. Siehe Anleitung, warum wir Wappen zurückhalten." },
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
