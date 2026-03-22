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
        id = "89ba2d2a",
        title = "Saison 1 Woche 1 - 17. März - Heroische Woche, 2. Herstellung",
        items = {
            { id = "791379ba", text = "Gib keine heroischen oder mythischen Wappen aus, bis es dir gesagt wird. Prüfe den Leitfaden, warum wir Wappen zurückhalten." },
            { id = "fab7aef9", text = "Fast jeder kann jetzt wahrscheinlich deinen Funken-Gegenstand herstellen. Prüfe den Leitfaden für was und wann du herstellen sollst." },
            { id = "e66847d8", text = "Mache LFR für Setteile - das Erhalten eines 4er-Setbonus ermöglicht es, dass Katalysatorladungen aus allen Inhalten droppen" },
            { id = "b1a6f7eb", text = "Schließe die wöchentliche Weltereignis-Quest für Gipfel-Truhe und Funken von Lady Liadrin ab - Die Arcantina dauert 3 Minuten" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Schließe die wöchentliche Behausungs-Quest von Vaeli ab - Belohnung sind gedeckelte Wappen, es ist egal was du wählst, aber der größte kurzfristige Nutzen ist die Auswahl von Championwappen" }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Optional) Erhöhe die PVP-Wertung auf 1600 für eine Katalysatorladung (dies ist dieselbe Katalysatorladung, die mit 2.000 M+-Wertung aus der nächsten Woche geteilt wird). Wenn du diese Woche 2 Setteile aus deinem Schlachtzug bekommst, würde dir dies erlauben, 2 Gegenstände zu katalysieren und nächste Woche Katalysatorladungen aus deinen M+ zu erhalten." },
            { id = "ef789b0b", text = "(Optional) Absolviere eine Welttournee durch M0-Dungeons. Diese belohnen Championgegenstandsstufe mit täglicher Sperre - BRENNE NICHT AUS! M+ öffnet nächste Woche und wird all das ersetzen." },
            { id = "d78939c6", text = "Tägliche Aufgabe: Erwäge, jeden Tag ein bestimmtes M0 zu laufen, das ein großartiges Schmuckstück für dich droppt. Der Gegenstand wird Championgegenstandsstufe (normaler Schlachtzug) haben und könnte ein schöner Boost sein, wenn du nächste Woche in den Schlachtzug gehst, falls du es noch nicht auf Heroisch farmen konntest." },
            { id = "05b7e462", text = "Schließe 4x Harte Beute ab, um Albtraum-Beute freizuschalten." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Schließe 3x Albtraumbeute ab, um Champion-Ausrüstung für jeden Charakter zu erhalten und die wöchentliche Quest für den Bossbeschwörungsgegenstand und 20 unbegrenzte Heldenwappen abzuschließen" }, -- ⚠️ UNVERIFIED
            { id = "cc5a28dd", text = "Schließe Nullaeus auf ?-Schwierigkeit für 30 unbegrenzte Helden-Wappen ab. Denk daran, gib diese nicht aus." }, -- ⚠️ UNVERIFIED
            { id = "bad52b04", text = "Schließe Nullaeus auf Schwierigkeitsgrad ?? ab, um 30 WEITERE nicht gedeckelte Heldenwappen und 30 nicht gedeckelte Mythische Wappen zu erhalten. HINWEIS: Obwohl der Ruhmeshallen-Erfolg erfordert, dass du dies solo machst, kannst du dies problemlos in einer Gruppe machen. Mit einem Tank + Heiler Tiefenbegleiter füge einfach mehr DDs zu deiner Gruppe hinzu." },
            { id = "f7a876a0", text = "Der Händler im Tiefen-Bereich hat eine Tasche mit 2 kostenlosen Schlüsseln, die über die Obergrenze gehen. Dies ist einmal pro Kriegsbund - stelle sicher, dass du es mit deinem Main kaufst." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Mache T8 oder höhere ertragreiche Tiefen, benutze Karte auf T8+-Tiefe - während du das machst, schalte T11-Tiefen frei" },
            { id = "2f9c0f4f", text = "Nutze deinen Boss-Beschwörungsgegenstand aus der wöchentlichen Albtraum-Beute-Quest in einem Tier-8-Delve, um eine Karte zu erhalten und nutze sie dann für einen Gegenstand der Helden-Stufe." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Töte Weltboss für Champion 3/6 253 Gegenstandsstufe Gegenstand" },
            { id = "bf5d2e12", text = "Fülle deine Truhe in jedem Slot für mehrere Chancen auf Heldenstufen-Gegenstände nächste Woche." },
            { id = "0755c002", text = "VOR DEM SCHLACHTZUG, fertige 1x-2x Gegenstände mit Gegenstandsstufe 246 mit Verzierungen auf schwachen Plätzen, verwende 80-160 Veteranen-Wappen. DIESE BENÖTIGEN KEINE FUNKEN. Die Gegenstände, die du fertigst, sind die blauen Gegenstände an der Fertigungsbank, in die du 80x Veteranen-Wappen einfügst, um ihre Gegenstandsstufe zu erhöhen. Prüfe den Leitfaden für weitere Informationen. Du kannst auch im Discord um Hilfe bitten, wenn du sie brauchst." },
            { id = "146b7d62", text = "Nachdem du so viel wie möglich von oben erledigt hast, aber VOR dem Schlachtzug, gib alle Abenteurerwappen, Veteranenwappen und Championenwappen aus, um irgendetwas aufzuwerten. Gib keine Heroischen oder Mythischen Wappen aus." },
            { id = "c5055967", text = "Verfolge ausgegebene Wappen: 0/180 Heroisch, 0/130 Mythisch" },
        },
    },

    {
        id = "d2de9d43",
        title = "Woche 2 - 24. März - Mythisch-Woche, M+ öffnet, nehmt Urlaub Nerds",
        items = {
            { id = "e8cef00e", text = "Prüfe den Leitfaden für was und wann du herstellen sollst." },
            { id = "4056a14a", text = "Falls du kein 4er-Set hast, mache LFR für Set-Teile - das Erhalten eines 4er-Set-Bonus ermöglicht es, dass Katalysator-Ladungen von allen Inhalten fallen" },
            { id = "83fd4310", text = "Schließe die wöchentliche Weltereignis-Quest für einen Funken von Lady Liadrin ab" },
            { id = "4c264b7f", text = "Schließe die wöchentliche Behausungs-Quest von Vaeli für schnelle Heldenwappen ab" }, -- ⚠️ UNVERIFIED
            { id = "260911ab", text = "(Unbekannte Belohnung bei wiederholten Wochen) - Schließe ?? Nulleaus für unbekannte Belohnungen ab" },
            { id = "547b880e", text = "Schließe die wöchentliche Quest 3x Albtraumbeute ab, um einen Gegenstand zu erhalten, der einen Tiefenboss beschwört, um eine Karte und 20 nicht gedeckelte Heldenwappen zu erhalten." },
            { id = "73ad86e4", text = "Mache mindestens eine ertragreiche Tiefe der Stufe 11, um die Quest Rissiger Schlüsselstein für 20 nicht gedeckelte Helden- und Mythische Wappen zu erhalten. Verwende dabei deinen Boss-Gegenstand aus der Quest 3x Albtraumbeute, um eine Karte zu erhalten und verwende sie in dieser Tiefe" },
            { id = "286f219c", text = "Weiterhin alle Abenteurer-, Veteran- und Champion-Wappen für Upgrades ausgeben" },
            { id = "74924a7b", text = "+10er farmen für 266-Ausrüstung in jedem Slot" },
            { id = "591e911b", text = "Bevor du Mythisch betrittst, verbessere die folgenden 3/6 Helden-Gegenstände auf 6/6 - Brust, Hose, Helm, 1 Ring, 1 Schmuckstück. Dies sollte 300/320 Heldenwappen kosten. Spare die letzten 20 Heldenwappen für den Fall, dass du einen Myth 1/6 Gegenstand bekommst, den du zuerst auf 2/6 verbessern musst. Dies gibt dir den größtmöglichen Machtzuwachs beim Eintritt in deine erste Mythische Woche, während du immer noch die Möglichkeit hast, Wappen auf anderen Plätzen zu sparen. Diese Annahme basiert darauf, nächste Woche eine 2H + 1 weiteren verzierten Gegenstand zu fertigen. Jäger oder andere, die keine Waffen gefertigt haben, könnten in Betracht ziehen, ihre Waffe anstelle von Hose oder Helm zu verbessern, um diesen Machtzuwachs zu erhalten, nachdem sie den ersten Boss auf Mythisch getötet haben, falls die Waffen nicht droppen." },
            { id = "cbfb6966", text = "Mythisch: Falls du ein Mythen-Spur-Item hast, Upgrade-Tipps der nächsten Woche dafür nutzen." },
            { id = "92eaba33", text = "Verfolge ausgegebene Wappen: 320/320 Heroisch, 0/250 Mythisch - behalte niemals Mythische Wappen - kann variieren, wenn du gefertigt hast" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Woche 3 - 31. März - Finaler Schlachtzug öffnet, 3. Herstellung",
        items = {
            { id = "1fbc825e", text = "Öffne Truhe (272+ Mythisch-Gegenstand) - werte nach der Herstellung auf" },
            { id = "83fd4310", text = "Schließe die wöchentliche Weltereignis-Quest für einen Funken von Lady Liadrin ab" },
            { id = "260911ab", text = "(Unbekannte Belohnung bei wiederholten Wochen) - Schließe ?? Nulleaus für unbekannte Belohnungen ab" },
            { id = "09b2b53b", text = "Schließe die wöchentliche Quest 3x Albtraumbeute für 20 nicht gedeckelte Heldenwappen ab." },
            { id = "1db5f946", text = "Farme +10er für Gewölbe + Wappen" },
            { id = "d0aed922", text = "Heroisch: Verbessere einen 3/6 266 Gegenstand auf 6/6 276 für 60 Heroische Wappen. Verbessere 2 3/6 266 Gegenstände auf 4/6 269 für 40 Heroische Wappen. Spare 20 Heroische Wappen für den nächsten Schritt." },
            { id = "2568bd36", text = "Mythisch: Wenn dein Gewölbe-Gegenstand 1/6 war, verbessere zuerst sein heroisches Gegenstück auf 6/6 heroisch für 20 Heroische Wappen. Verbessere deinen 1/6 272 Myth-Gegenstand auf 6/6 289 für 80 Mythische Wappen." },
            { id = "484da4b0", text = "Wenn du einen 2. Mythisch-Pfad-Gegenstand bekommen hast, springe zum Aufwertungsratschlag der nächsten Woche dafür." },
            { id = "8e67d484", text = "Verfolge ausgegebene Wappen: 440/440 Heroisch, 240/350 Mythisch - behalte niemals Mythische Wappen - kann variieren, wenn du gefertigt hast" },
        },
    },

    {
        id = "572003ec",
        title = "Woche 4 - 7. Apr.",
        items = {
            { id = "9375e497", text = "Öffne Gewölbe (272+ Myth-Gegenstand)" },
            { id = "83fd4310", text = "Schließe die wöchentliche Weltereignis-Quest für einen Funken von Lady Liadrin ab" },
            { id = "260911ab", text = "(Unbekannte Belohnung bei wiederholten Wochen) - Schließe ?? Nulleaus für unbekannte Belohnungen ab" },
            { id = "09b2b53b", text = "Schließe die wöchentliche Quest 3x Albtraumbeute für 20 nicht gedeckelte Heldenwappen ab." },
            { id = "1db5f946", text = "Farme +10er für Gewölbe + Wappen" },
            { id = "6e25b0ce", text = "Heroisch: Verbessere 2 deiner 4/6 269 Gegenstände auf 6/6 276 für 80 Heroische Wappen. Verbessere 1 3/6 266 Gegenstand auf 4/6 269 für 20 Heroische Wappen. Spare 20 Heroische Wappen für den nächsten Schritt." },
            { id = "7bfe99b2", text = "Mythisch: Wenn dein Gewölbe-Gegenstand 1/6 war, verbessere zuerst sein heroisches Gegenstück auf 6/6 heroisch für 20 Heroische Wappen. Verbessere deinen 1/6 272 Myth-Gegenstand auf 6/6 289 für 80 Mythische Wappen." },
            { id = "0ccf5c83", text = "Mythisch: Schlachtzug-Drop 2/6 275 Mythen-Spur auf 6/6 289 für 80 Mythen-Wappen aufwerten." },
            { id = "b95b0829", text = "Verfolge ausgegebene Wappen: 560/560 Heroisch, 400/450 Mythisch - behalte niemals Mythische Wappen" },
        },
    },

    {
        id = "067d2566",
        title = "Woche 5 - 14. Apr - Fertig mit Heroischen Wappen",
        items = {
            { id = "9375e497", text = "Öffne Gewölbe (272+ Myth-Gegenstand)" },
            { id = "83fd4310", text = "Schließe die wöchentliche Weltereignis-Quest für einen Funken von Lady Liadrin ab" },
            { id = "260911ab", text = "(Unbekannte Belohnung bei wiederholten Wochen) - Schließe ?? Nulleaus für unbekannte Belohnungen ab" },
            { id = "09b2b53b", text = "Schließe die wöchentliche Quest 3x Albtraumbeute für 20 nicht gedeckelte Heldenwappen ab." },
            { id = "1db5f946", text = "Farme +10er für Gewölbe + Wappen" },
            { id = "cb431e83", text = "Fertige nächsten Gegenstand (Prüfe Leitfaden für weitere Infos)" },
            { id = "13957611", text = "Heroisch: Verbessere die letzten deiner heroischen Gegenstände auf 6/6 276. Spare 20 Heroische Wappen für den nächsten Schritt." },
            { id = "2568bd36", text = "Mythisch: Wenn dein Gewölbe-Gegenstand 1/6 war, verbessere zuerst sein heroisches Gegenstück auf 6/6 heroisch für 20 Heroische Wappen. Verbessere deinen 1/6 272 Myth-Gegenstand auf 6/6 289 für 80 Mythische Wappen." },
            { id = "c581850d", text = "Verfolge ausgegebene Wappen: 680/680 Heroisch, 480/550 Mythisch - behalte niemals Mythische Wappen" },
        },
    },

    {
        id = "db70d77d",
        title = "Woche 6 - 21. Apr+",
        items = {
            { id = "f9978f0e", text = "Fertige nicht, wenn du Gewölbe-Gegenstände höher als 1/6 bekommen kannst" },
            { id = "66e83cc1", text = "Verbessere Mythische Gegenstände, sobald du sie bekommst, bevorzuge den Sprung auf 289 für den +4 Sprung" },
            { id = "1786deeb", text = "Falls nötig, plane für möglichen 1H + gefertigte Nebenhand-Wechsel" },
            { id = "10aac768", text = "Genieße Blizzards viel besseres Verbesserungssystem!" },
        },
    },
}

reg.data[LOCALE] = DATASET
