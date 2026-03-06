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
            { id = "6762e305", text = "(Optional) Töte jede seltene Kreatur einmal in jeder Zone für Ruhm. Dies ist ein einmaliger Bonus für jede seltene Kreatur und wird nicht wöchentlich zurückgesetzt." },
            { id = "0394cb0d", text = "Jage die Schätze jeder Region für kostenlosen Ruhm. Prüfe den Leitfaden für weitere Infos" },
            { id = "91e7ee6c", text = "Schließe 4x Beute im normalen Schwierigkeitsgrad für Ruhm ab" }, -- ⚠️ UNVERIFIED
            { id = "c699a5d6", text = "Schließe den Erfolg Midnight-Geschichtsjäger für Ruhm ab - Prüfe den Leitfaden für weitere Infos" }, -- ⚠️ UNVERIFIED
            { id = "cfd4a904", text = "Schließe den Erfolg Höchste Gipfel für Ruhm ab - Prüfe den Leitfaden für weitere Infos" }, -- ⚠️ UNVERIFIED
            { id = "f9b8eb01", text = "Schließe Nebenquestreihen für Ruhm ab. (kann auf Twinks erledigt werden, um gleichzeitig zu leveln). DMF-Buff gibt keinen Ruhm." },
            { id = "4aa4b47d", text = "Hinweis: Nur die Champion-Gegenstände von Singularität UND Immersang sind im Early Access verfügbar - die anderen werden entweder am Montag nach dem offiziellen Start oder nach dem wöchentlichen Reset jeder Region verfügbar." },
            { id = "ba1890e4", text = "Schließe die wöchentliche Saltheril's Soiree in den Immersangwäldern ab. Vergiss nicht, die Ruhmquest für den Championhelm zu holen, wenn du den Ruhm hast" }, -- ⚠️ UNVERIFIED
        },
    },

    {
        id = "50281d6f",
        title = "Vorsaison Woche 1 - 3. März - M0s",
        items = {
            { id = "ebe944e7", text = "Spare 160 Veteranenabzeichen für die Herstellung von 2x Veteranengegenständen mit Verzierungen" },
            { id = "5a2e9ede", text = "NICHT HERSTELLEN" },
            { id = "c06ee1a3", text = "Wenn du auf einem Twink bist und einige dieser Quests nicht siehst, gehe zu Soridormi im Gasthaus von Silbermond und wähle \"Ich habe den Leerensturm gestoppt\", um die Kampagne zu überspringen." },
            { id = "755d27e7", text = "Erhöhe den Ruhm der Singularität auf Rang 7 für ein 1/6-Champion-Schmuckstück - kommt von einer Quest vom Ruhmverkäufer" }, -- ⚠️ UNVERIFIED
            { id = "f213fee8", text = "Erhöhe den Ruhm der Hara'ti auf Rang 8 für einen 1/6-Champion-Gürtel - kommt von einer Quest vom Ruhmverkäufer" }, -- ⚠️ UNVERIFIED
            { id = "81fd810d", text = "Erhöhe den Ruhm von Silbermond auf Rang 9 für einen 1/6-Champion-Helm - kommt von einer Quest vom Ruhmverkäufer" },
            { id = "804b15e3", text = "Erhöhe den Ruhm des Amani-Stammes auf Rang 9 für eine 1/6-Champion-Halskette - kommt von einer Quest vom Ruhmverkäufer" },
            { id = "101e78a9", text = "Schließe die wöchentliche Dungeonquest von Halduron Hellfittich für 1000 Ruhm ab" },
            { id = "0c3b8835", text = "Schließe die wöchentliche Weltereignisquest für Gipfeltruhe von Lady Liadrin ab - kann wöchentliche Ereignisquest annehmen und mit den untenstehenden Ereignissen erledigen" },
            { id = "879d3833", text = "Schließe die wöchentliche Welttour-Quest von Lorthremar für Funken ab, indem du die untenstehenden Quests erledigst" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Wöchentliches Saltheril-Fest im Immergrünen Wald abschließen." },
            { id = "da2fa0ef", text = "Wöchentliches Überfluss-Ereignis in Zul'Aman abschließen." },
            { id = "dbc8384b", text = "Wöchentliches Legenden der Haranir-Ereignis in Harandar abschließen." },
            { id = "9ad64245", text = "Wöchentlichen Sturmarion-Angriff im Nichtsturm abschließen." },
            { id = "6762e305", text = "(Optional) Töte jede seltene Kreatur einmal in jeder Zone für Ruhm. Dies ist ein einmaliger Bonus für jede seltene Kreatur und wird nicht wöchentlich zurückgesetzt." },
            { id = "666a0192", text = "Falls noch nicht erledigt, jage die Schätze jeder Region, Geschichtsjäger und hohe Gipfel für kostenlosen Ruhm. Prüfe den Leitfaden für weitere Infos." },
            { id = "a892ac44", text = "Schalte Tiefen bis Stufe 8 frei" },
            { id = "d54f7430", text = "Schließe 4x Harte Beute ab. Die ersten 2 geben Veteranen-Ausrüstung; alle 4 geben Veteranen-Wappen, die du zum Maximieren brauchst." },
            { id = "efb035ba", text = "(Optional) Schließe 2x zufällige Harte Beute für Veteranenwappen auf jedem Charakter ab - wenn du 2x optional pro Woche machst, erreichst du die Obergrenze für Veteranenwappen bis zum Ende von Woche 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Welttour der M0-Dungeons abschließen – Veteran-Gs – noch nicht aufwerten" },
            { id = "c60d586a", text = "Donnerstag, 5. März Hotfix-Info: Blizzard hat per Hotfix die Möglichkeit hinzugefügt, eine Errungenschaft zu verdienen, die die Kosten für das Aufwerten deiner Abzeichen um 50% auf deinem Account reduziert, sobald ein Charakter in jedem einzelnen Slot 237 erreicht hat. Weitere Informationen im Leitfaden." },
            { id = "77405dc2", text = "Neu: Wenn du nur einen Charakter hast, kannst du nach Abschluss deiner ersten Welttour der M0-Dungeons Abenteurerabzeichen für verbleibende Gegenstände ausgeben." },
            { id = "95531889", text = "Neu: Wenn du mehrere Charaktere hast, kannst du, sobald du die neue Errungenschaft erhalten hast, auf allen anderen Charakteren frei aufwerten." },
        },
    },

    {
        id = "ff1f5a67",
        title = "Vorsaison Woche 2 - 10. März - M0s",
        items = {
            { id = "ebe944e7", text = "Spare 160 Veteranenabzeichen für die Herstellung von 2x Veteranengegenständen mit Verzierungen" },
            { id = "5a2e9ede", text = "NICHT HERSTELLEN" },
            { id = "75c5fe6e", text = "Falls nicht abgeschlossen: weiter Ansehen für Champion-Teile erhöhen" },
            { id = "101e78a9", text = "Schließe die wöchentliche Dungeonquest von Halduron Hellfittich für 1000 Ruhm ab" },
            { id = "e0ecce24", text = "Schließe die wöchentliche Weltereignisquest für eine Gipfel-Truhe und einen Funken von Lady Liadrin ab" },
            { id = "8b55f0c7", text = "(Optional) Schließe das wöchentliche Saltherils Soiree im Immersangwald ab." },
            { id = "8e107032", text = "(Optional) Schließe das wöchentliche Überfluss-Event in Zul'aman ab." },
            { id = "d5a12c89", text = "(Optional) Schließe das wöchentliche Event Legenden der Haranir in Harandar ab." }, -- ⚠️ UNVERIFIED
            { id = "514a6926", text = "(Optional) Schließe den wöchentlichen Sturmarion-Angriff im Leersturm ab." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Optional) Töte jede seltene Kreatur einmal in jeder Zone für Ruhm. Dies ist ein einmaliger Bonus für jede seltene Kreatur und wird nicht wöchentlich zurückgesetzt." },
            { id = "23cb93ed", text = "Schalte Tiefen bis Stufe 8 frei, falls noch nicht geschehen" },
            { id = "d54f7430", text = "Schließe 4x Harte Beute ab. Die ersten 2 geben Veteranen-Ausrüstung; alle 4 geben Veteranen-Wappen, die du zum Maximieren brauchst." },
            { id = "efb035ba", text = "(Optional) Schließe 2x zufällige Harte Beute für Veteranenwappen auf jedem Charakter ab - wenn du 2x optional pro Woche machst, erreichst du die Obergrenze für Veteranenwappen bis zum Ende von Woche 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Welttour der M0-Dungeons abschließen – Veteran-Gs – noch nicht aufwerten" },
            { id = "dc01eba9", text = "Wenn du noch Abenteuerergegenstände übrig hast, kannst du diese gerne aufwerten." },
            { id = "f2af7330", text = "Falls du am Dienstag, den 17., raidest, stelle her. Prüfe den Leitfaden für weitere Infos." },
        },
    },

    {
        id = "33a3fcba",
        title = "Saison 1 Woche 1 - 17. März - Heroisch-Woche",
        items = {
            { id = "36d21691", text = "Gib keine Heroischen oder Mythischen Abzeichen aus, bis du dazu aufgefordert wirst. Im Leitfaden erfährst du, warum wir Abzeichen aufheben." },
            { id = "e66847d8", text = "Mache LFR für Set-Teile - das Erhalten eines 4er-Set-Bonus ermöglicht es, dass Katalysator-Ladungen von allen Inhalten fallen" },
            { id = "e0ecce24", text = "Schließe die wöchentliche Weltereignisquest für eine Gipfel-Truhe und einen Funken von Lady Liadrin ab" },
            { id = "9686fde4", text = "Schließe die wöchentliche Behausungsquest von Vaeli für ?Helden-Wappen? ab (wird aktualisiert, wenn es live geht)" }, -- ⚠️ UNVERIFIED
            { id = "ca5a8044", text = "Falls verfügbar, schließe die PvP-Quest für einen garantierten Helden-Hals/Ring ab - kann möglicherweise mit der unten stehenden optionalen PvP-Wertung gemacht werden" },
            { id = "d8d237fa", text = "(Optional) Erhöhe die PVP-Wertung auf 1600 für eine Katalysator-Ladung (dies ist die gleiche Katalysator-Ladung, die mit der 2.000 M+-Wertung aus der nächsten Woche geteilt wird). Wenn du diese Woche 2 Set-Teile aus deinem Schlachtzug bekommst, würde dir dies erlauben, 2 Gegenstände zu katalysieren und ab nächster Woche Katalysator-Ladungen aus deinen M+ zu erhalten." },
            { id = "45c7d35b", text = "(Optional) Schließe eine Welttournee von M0-Dungeons ab - belohnt mit Champion-Gegenstandsstufe - tägliche Sperre" },
            { id = "22842538", text = "Schließe 2x Albtraum-Beute für Champion-Ausrüstung auf jedem Charakter ab" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Weltboss töten für Champion 2/6 250-Gs-Item" },
            { id = "b6846065", text = "Mache S8 oder höhere ertragreiche Tiefen, benutze Karte auf S8+ Tiefe - während du dies tust, schalte S11 Tiefen frei" },
            { id = "8c700b67", text = "Stelle vor dem Schlachtzug 2x Gegenstände mit Gegenstandsstufe 246 her, 2x Verzierungen auf schwachen Slots, verwende 160 Vet-Abzeichen. Diese benötigen keine Funken." },
            { id = "679a07b9", text = "Gib vor dem Schlachtzug alle Abenteurer-, Veteranen- und Champion-Wappen für Aufwertungen aus. Gib keine Heroischen oder Mythischen Wappen aus." },
            { id = "5768e0fe", text = "Wappen tracken: 0/100 Heroisch, 0/100 Mythisch" },
        },
    },

    {
        id = "d2de9d43",
        title = "Woche 2 - 24. März - Mythisch-Woche, M+ öffnet, nehmt Urlaub Nerds",
        items = {
            { id = "36d21691", text = "Gib keine Heroischen oder Mythischen Abzeichen aus, bis du dazu aufgefordert wirst. Im Leitfaden erfährst du, warum wir Abzeichen aufheben." },
            { id = "e0ecce24", text = "Schließe die wöchentliche Weltereignisquest für eine Gipfel-Truhe und einen Funken von Lady Liadrin ab" },
            { id = "9686fde4", text = "Schließe die wöchentliche Behausungsquest von Vaeli für ?Helden-Wappen? ab (wird aktualisiert, wenn es live geht)" }, -- ⚠️ UNVERIFIED
            { id = "4056a14a", text = "Falls du kein 4er-Set hast, mache LFR für Set-Teile - das Erhalten eines 4er-Set-Bonus ermöglicht es, dass Katalysator-Ladungen von allen Inhalten fallen" },
            { id = "16cf341e", text = "(Optional) Weltboss töten für Champion 2/6 250-Gs-Item" },
            { id = "4aa82ede", text = "(Optional) Schließe 2x Albtraum-Beute für Champion-Ausrüstung auf jedem Charakter ab" },
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
