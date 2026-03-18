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
            { id = "79c35167", text = "Spare 160 Veteranenwappen für die Herstellung - siehe weiter unten für Anweisungen (Diese benötigen keine Funken)" },
            { id = "e8cef00e", text = "Prüfe den Leitfaden für was und wann du herstellen sollst." },
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
            { id = "79c35167", text = "Spare 160 Veteranenwappen für die Herstellung - siehe weiter unten für Anweisungen (Diese benötigen keine Funken)" },
            { id = "b4de098c", text = "Besonderer Hinweis für Klassen mit Zweihandführung - du kannst wahrscheinlich jetzt deinen Funkengegenstand herstellen. Prüfe den Leitfaden für was und wann du herstellen solltest." },
            { id = "d8f307f2", text = "Textleitfaden-Update-Warnung: Ich habe die Funken-Herstellungsempfehlungen für jede einzelne Klasse aktualisiert. Ich empfehle dringend, den Leitfaden mit den neuen Informationen zu überprüfen." },
            { id = "0d50e744", text = "NA: Blizzard hat per Hotfix eine PvE-Funkenquest von Liadrin hinzugefügt. Wenn du bereits die PvP-Quest abgeschlossen hast, kannst du diese überspringen, da sie keinen vierten Funken gibt. Wenn du diese Woche noch keine Funkenquest abgeschlossen hast, mache die Liadrin-Quest für deinen dritten Funken." },
            { id = "ab127896", text = "EU: Nach deinem Reset, schließe die Wochenquest von Liadrin für einen Funken ab." },
            { id = "5fd1b2ad", text = "Mache NICHT die PvP-Quest für den heroischen Ring/das heroische Amulett. Du kannst die Questreihe nicht beenden, bevor M+ öffnet" },
            { id = "ed534745", text = "(Optional) Neu: Farme 10.000 Ehre und kaufe entweder im AH oder farme 6 Infundierter Heliotrop für nächste Woche. Siehe nächste Woche für Infos. Hinweis: dies ist sehr min-maxy. Es ist für 2 zusätzliche Sockel für die ersten zwei Wochen." }, -- ⚠️ UNVERIFIED
            { id = "9626318e", text = "(Optional) Schließe die wöchentliche Verliesquest von Halduron Brightwing für 1000 Ruhm ab" },
            { id = "8b55f0c7", text = "(Optional) Schließe das wöchentliche Saltherils Soiree im Immersangwald ab." },
            { id = "8e107032", text = "(Optional) Schließe das wöchentliche Überfluss-Event in Zul'aman ab." },
            { id = "d5a12c89", text = "(Optional) Schließe das wöchentliche Event Legenden der Haranir in Harandar ab." }, -- ⚠️ UNVERIFIED
            { id = "514a6926", text = "(Optional) Schließe den wöchentlichen Sturmarion-Angriff im Leersturm ab." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Optional) Töte jede seltene Kreatur einmal in jeder Zone für Ruhm. Dies ist ein einmaliger Bonus für jede seltene Kreatur und wird nicht wöchentlich zurückgesetzt." },
            { id = "23cb93ed", text = "Schalte Tiefen bis Stufe 8 frei, falls noch nicht geschehen" },
            { id = "d54f7430", text = "Schließe 4x Harte Beute ab. Die ersten 2 geben Veteranen-Ausrüstung; alle 4 geben Veteranen-Wappen, die du zum Maximieren brauchst." },
            { id = "7b67a15d", text = "(Optional) Schließe zufällige Harte Beute ab, um Veteranenwappen auf jedem Charakter zu maximieren" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Welttour der M0-Dungeons abschließen – Veteran-Gs – noch nicht aufwerten" },
            { id = "dc01eba9", text = "Wenn du noch Abenteuerergegenstände übrig hast, kannst du diese gerne aufwerten." },
            { id = "5853685a", text = "Wenn du am Dienstag, den 17. raidest, lies die Herstellungsschritte der nächsten Woche. Ansonsten warte bis zum Tag deines Schlachtzugs oder am Tag vor deinem Schlachtzug, um dies zu tun." },
        },
    },

    {
        id = "89ba2d2a",
        title = "Saison 1 Woche 1 - 17. März - Heroische Woche, 2. Herstellung",
        items = {
            { id = "791379ba", text = "Gib keine heroischen oder mythischen Wappen aus, bis es dir gesagt wird. Prüfe den Leitfaden, warum wir Wappen zurückhalten." },
            { id = "fab7aef9", text = "Fast jeder kann jetzt wahrscheinlich deinen Funken-Gegenstand herstellen. Prüfe den Leitfaden für was und wann du herstellen sollst." },
            { id = "e66847d8", text = "Mache LFR für Setteile - das Erhalten eines 4er-Setbonus ermöglicht es, dass Katalysatorladungen aus allen Inhalten droppen" },
            { id = "b1a6f7eb", text = "Schließe die wöchentliche Weltereignis-Quest für Gipfel-Truhe und Funken von Lady Liadrin ab - Die Arcantina dauert 3 Minuten" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Schließe die wöchentliche Behausungs-Quest von Vaeli ab - Belohnung sind gedeckelte Wappen, es ist egal was du wählst, aber der größte kurzfristige Nutzen ist die Auswahl von Championwappen" }, -- ⚠️ UNVERIFIED
            { id = "1e1d846c", text = "Hinweis: die nächsten beiden Dinge sind miteinander verbunden - sie sind für ein kleines Upgrade - zwei zusätzliche Sockel für die ersten zwei Wochen." },
            { id = "50eaf609", text = "(Optional) Neu: Schließe PvP-Matches ab, um einen Questgegenstand zu erhalten, der 9x Heroldik des galaktischen Gladiators belohnt. Du wirst diese verwenden, um die unten aufgeführten Gegenstände herzustellen. Mache dies nur, wenn du die Ehre für die Sockel unten hast oder farmen wirst. Hinweis: Dies ist sehr min-maxy, es geht im Wesentlichen um 2 zusätzliche Sockel. Arena ist am schnellsten" }, -- ⚠️ UNVERIFIED
            { id = "a1884373", text = "(Optional) Neu: Kaufe 2 Fassung des Galaktischen Juweliers vom Händler für je 5000 Ehre und 3 Infundierter Heliotrop. Du wirst diese verwenden, um die hergestellten Gegenstände unten zu sockeln. Diese Gegenstände werden erst diese Woche beim Händler erscheinen. Dies ist sehr min-maxy, es ist im Wesentlichen für 2 zusätzliche Sockel." }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Optional) Erhöhe die PVP-Wertung auf 1600 für eine Katalysatorladung (dies ist dieselbe Katalysatorladung, die mit 2.000 M+-Wertung aus der nächsten Woche geteilt wird). Wenn du diese Woche 2 Setteile aus deinem Schlachtzug bekommst, würde dir dies erlauben, 2 Gegenstände zu katalysieren und nächste Woche Katalysatorladungen aus deinen M+ zu erhalten." },
            { id = "ef789b0b", text = "(Optional) Absolviere eine Welttournee durch M0-Dungeons. Diese belohnen Championgegenstandsstufe mit täglicher Sperre - BRENNE NICHT AUS! M+ öffnet nächste Woche und wird all das ersetzen." },
            { id = "d78939c6", text = "Tägliche Aufgabe: Erwäge, jeden Tag ein bestimmtes M0 zu laufen, das ein großartiges Schmuckstück für dich droppt. Der Gegenstand wird Championgegenstandsstufe (normaler Schlachtzug) haben und könnte ein schöner Boost sein, wenn du nächste Woche in den Schlachtzug gehst, falls du es noch nicht auf Heroisch farmen konntest." },
            { id = "05b7e462", text = "Schließe 4x Harte Beute ab, um Albtraum-Beute freizuschalten." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Schließe 3x Albtraumbeute ab, um Champion-Ausrüstung für jeden Charakter zu erhalten und die wöchentliche Quest für den Bossbeschwörungsgegenstand und 20 unbegrenzte Heldenwappen abzuschließen" }, -- ⚠️ UNVERIFIED
            { id = "cc5a28dd", text = "Schließe Nullaeus auf ?-Schwierigkeit für 30 unbegrenzte Helden-Wappen ab. Denk daran, gib diese nicht aus." }, -- ⚠️ UNVERIFIED
            { id = "5c891668", text = "Schließe Nullaeus auf ??-Schwierigkeit für 30 WEITERE ungedeckelte Heldenwappen und 30 ungedeckelte Mythoswappen ab. HINWEIS: Während die Ruhmeshallen-Errungenschaft erfordert, dass du dies alleine schaffst, kannst du dies einfacher in einer Gruppe machen. Mit einem Tank + Heiler Tiefen-Begleiter, füge einfach mehr DDs zu deiner Gruppe hinzu." }, -- ⚠️ UNVERIFIED
            { id = "f7a876a0", text = "Der Händler im Tiefen-Bereich hat eine Tasche mit 2 kostenlosen Schlüsseln, die über die Obergrenze gehen. Dies ist einmal pro Kriegsbund - stelle sicher, dass du es mit deinem Main kaufst." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Mache T8 oder höhere ertragreiche Tiefen, benutze Karte auf T8+-Tiefe - während du das machst, schalte T11-Tiefen frei" },
            { id = "2f9c0f4f", text = "Nutze deinen Boss-Beschwörungsgegenstand aus der wöchentlichen Albtraum-Beute-Quest in einem Tier-8-Delve, um eine Karte zu erhalten und nutze sie dann für einen Gegenstand der Helden-Stufe." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Töte Weltboss für Champion 3/6 253 Gegenstandsstufe Gegenstand" },
            { id = "bf5d2e12", text = "Fülle deine Truhe in jedem Slot für mehrere Chancen auf Heldenstufen-Gegenstände nächste Woche." },
            { id = "4820451a", text = "(Optional) Neu: Falls du Ehre gefarmt hast und deine Heraldik des Galaktischen Gladiators und Sockel des Galaktischen Juweliers erhalten hast (siehe oben), stelle Armschienen und Gürtel mit 246 Gegenstandsstufe her und füge einen Sockel hinzu. Diese Gegenstände können Verschönerungen aufnehmen - falls du eine Waffe mit einer Verschönerung hergestellt hast, verwende nur eine Verschönerung auf diesen. Falls du keine Waffe hergestellt hast, verwende 2x Verschönerungen auf ihnen. Diese Gegenstände entsprechen 1/6 Championsspur mit einem Sockel und du kannst diese für einige Wochen in der Saison verwenden. Gegenstandsstufe bestätigt als 1/6 Champion." }, -- ⚠️ UNVERIFIED
            { id = "2e0ae86e", text = "Wenn du keine Ehre für PvP-Gegenstände gefarmt hast, stelle VOR DEM SCHLACHTZUG 1x-2x 246 Gegenstandsstufen-Teile mit Verzierungen für schwache Slots her, indem du 80-160 Veteranenabzeichen verwendest. DIESE BENÖTIGEN KEINE FUNKEN. Die Gegenstände, die du herstellst, sind die Gegenstände mit blauer Qualität an der Herstellungsbank, in die du 80x Veteranenabzeichen einfügst, um ihre Gegenstandsstufe zu erhöhen. Prüfe den Leitfaden für weitere Informationen. Du kannst auch im Discord um Hilfe bitten, falls du sie brauchst." },
            { id = "146b7d62", text = "Nachdem du so viel wie möglich von oben erledigt hast, aber VOR dem Schlachtzug, gib alle Abenteurerwappen, Veteranenwappen und Championenwappen aus, um irgendetwas aufzuwerten. Gib keine Heroischen oder Mythischen Wappen aus." },
            { id = "8824d048", text = "Verfolge ausgegebene Wappen: 0/100 Heroisch, 0/100 Mythisch" },
        },
    },

    {
        id = "d2de9d43",
        title = "Woche 2 - 24. März - Mythisch-Woche, M+ öffnet, nehmt Urlaub Nerds",
        items = {
            { id = "36d21691", text = "Gib keine Heroischen oder Mythischen Abzeichen aus, bis du dazu aufgefordert wirst. Im Leitfaden erfährst du, warum wir Abzeichen aufheben." },
            { id = "e8cef00e", text = "Prüfe den Leitfaden für was und wann du herstellen sollst." },
            { id = "4056a14a", text = "Falls du kein 4er-Set hast, mache LFR für Set-Teile - das Erhalten eines 4er-Set-Bonus ermöglicht es, dass Katalysator-Ladungen von allen Inhalten fallen" },
            { id = "e0ecce24", text = "Schließe die wöchentliche Weltereignisquest für Gipfelcache und Funken von Lady Liadrin ab" },
            { id = "4c264b7f", text = "Schließe die wöchentliche Behausungs-Quest von Vaeli für schnelle Heldenwappen ab" }, -- ⚠️ UNVERIFIED
            { id = "0c60ad29", text = "(Optional) Töte den Weltboss für ein Champ 3/6 253 Gegenstandsstufe Item" }, -- ⚠️ UNVERIFIED
            { id = "4aa82ede", text = "(Optional) Schließe 2x Albtraum-Beute für Champion-Ausrüstung auf jedem Charakter ab" },
            { id = "26d0b610", text = "Mindestens eine T11-Üppige Tiefe für den Zerbrochener-Schlussstein-Quest machen" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Weiterhin alle Abenteurer-, Veteran- und Champion-Wappen für Upgrades ausgeben" },
            { id = "74924a7b", text = "+10er farmen für 266-Ausrüstung in jedem Slot" },
            { id = "ae0baeca", text = "Nach N/H-Reclears, aber VOR dem Mythischen Schlachtzug, werte 11x 3/6 Heldengegenstände jeweils einmal auf. Wenn du nicht so viele Heroische Gegenstände hast, werte einen Ring oder ein Schmuckstück mehr auf, um das Risiko der Verschwendung von Wappen zu reduzieren." },
            { id = "cbfb6966", text = "Mythisch: Falls du ein Mythen-Spur-Item hast, Upgrade-Tipps der nächsten Woche dafür nutzen." },
            { id = "00cb43a8", text = "Verfolge ausgegebene Wappen: 220/220 Heroisch, 0/220 Mythisch - halte niemals Mythische Wappen zurück - kann variieren, falls du etwas hergestellt hast" },
            { id = "adb492bd", text = "Endgültige Gegenstandsstufe: 4x266, 11x269 - kann variieren, falls du etwas hergestellt hast" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Woche 3 - 31. März - Finaler Schlachtzug öffnet, 3. Herstellung",
        items = {
            { id = "1fbc825e", text = "Öffne Truhe (272+ Mythisch-Gegenstand) - werte nach der Herstellung auf" },
            { id = "8226c872", text = "Wenn kein 4er-Set, mache LFR für Setteile (prüfe Leitfaden warum)" },
            { id = "1db5f946", text = "Farme +10er für Truhe + Wappen" },
            { id = "c316485a", text = "Heroisch: Werte 2 deiner 4/6 269er Gegenstände auf 6/6 276 für 80 heroische Wappen auf" },
            { id = "2568bd36", text = "Mythisch: Wenn dein Truhengegenstand 1/6 war, werte zuerst sein heroisches Gegenstück auf 6/6 heroisch für 20 heroische Wappen auf. Werte deinen 1/6 272er Mythisch-Pfad-Gegenstand auf 6/6 289 für 80 mythische Wappen auf." },
            { id = "484da4b0", text = "Wenn du einen 2. Mythisch-Pfad-Gegenstand bekommen hast, springe zum Aufwertungsratschlag der nächsten Woche dafür." },
            { id = "40b01764", text = "Verfolge ausgegebene Wappen: 320/320 Heroisch, 160/320 Mythisch - halte niemals Mythische Wappen zurück - kann variieren, falls du etwas hergestellt hast" },
            { id = "c0774809", text = "Endgültige Gegenstandsstufe: 2x266, 8x269, 2x276h, 2x285(hergestellt), 1x289 - kann variieren, falls du etwas hergestellt hast" },
        },
    },

    {
        id = "572003ec",
        title = "Woche 4 - 7. Apr.",
        items = {
            { id = "9375e497", text = "Öffne Truhe (272+ Mythisch-Gegenstand)" },
            { id = "1db5f946", text = "Farme +10er für Truhe + Wappen" },
            { id = "c316485a", text = "Heroisch: Werte 2 deiner 4/6 269er Gegenstände auf 6/6 276 für 80 heroische Wappen auf" },
            { id = "2568bd36", text = "Mythisch: Wenn dein Truhengegenstand 1/6 war, werte zuerst sein heroisches Gegenstück auf 6/6 heroisch für 20 heroische Wappen auf. Werte deinen 1/6 272er Mythisch-Pfad-Gegenstand auf 6/6 289 für 80 mythische Wappen auf." },
            { id = "0ccf5c83", text = "Mythisch: Schlachtzug-Drop 2/6 275 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen aufwerten." },
            { id = "bccfe037", text = "Verfolge ausgegebene Wappen: 420/400 Heroisch, 320/420 Mythisch - halte niemals mythische Wappen zurück" },
            { id = "8184483b", text = "Endgültige Gegenstandsstufe: 2x266, 4x269, 4x276h, 2x285(hergestellt), 3x289" },
        },
    },

    {
        id = "71d2703a",
        title = "Woche 5 - 14. April, 4. Herstellung",
        items = {
            { id = "9375e497", text = "Öffne Truhe (272+ Mythisch-Gegenstand)" },
            { id = "1db5f946", text = "Farme +10er für Truhe + Wappen" },
            { id = "11e426da", text = "Stelle nächsten Gegenstand her (siehe Dokument für mehr Informationen)" },
            { id = "c316485a", text = "Heroisch: Werte 2 deiner 4/6 269er Gegenstände auf 6/6 276 für 80 heroische Wappen auf" },
            { id = "2568bd36", text = "Mythisch: Wenn dein Truhengegenstand 1/6 war, werte zuerst sein heroisches Gegenstück auf 6/6 heroisch für 20 heroische Wappen auf. Werte deinen 1/6 272er Mythisch-Pfad-Gegenstand auf 6/6 289 für 80 mythische Wappen auf." },
            { id = "92a40a6f", text = "Verfolge ausgegebene Wappen: 520/520 Heroisch, 480/520 Mythisch - halte niemals mythische Wappen zurück" },
            { id = "4f04ba4e", text = "Endgegenstandsstufe: 1x266, 2x269, 6x276h, 2x285(hergestellt), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Woche 6 - 21. Apr. - Fertig mit Heroisch-Wappen",
        items = {
            { id = "9375e497", text = "Öffne Truhe (272+ Mythisch-Gegenstand)" },
            { id = "1db5f946", text = "Farme +10er für Truhe + Wappen" },
            { id = "c35cf0b6", text = "Heroisch: Letztes 4/6-269-Item auf 6/6 276 für 40 Heroisch-Wappen aufwerten" },
            { id = "2568bd36", text = "Mythisch: Wenn dein Truhengegenstand 1/6 war, werte zuerst sein heroisches Gegenstück auf 6/6 heroisch für 20 heroische Wappen auf. Werte deinen 1/6 272er Mythisch-Pfad-Gegenstand auf 6/6 289 für 80 mythische Wappen auf." },
            { id = "0ccf5c83", text = "Mythisch: Schlachtzug-Drop 2/6 275 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen aufwerten." },
            { id = "4f11d7d8", text = "Verfolge ausgegebene Wappen: 560/620 Heroisch, 620/620 Mythisch - halte niemals mythische Wappen zurück" },
            { id = "37472f94", text = "Endgültige Gegenstandsstufe: 7x276h, 2x285(hergestellt), 1x285, 5x289" },
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
