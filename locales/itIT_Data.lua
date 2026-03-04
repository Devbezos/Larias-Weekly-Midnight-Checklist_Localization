--[[
Italian (itIT) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
]]
if GetLocale() ~= "itIT" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "itIT"

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
        title = "Accesso Anticipato - 26 Feb fino a 2 Mar",
        items = {
            { id = "f4b92a82", text = "Accedi con ogni personaggio che intendi livellare in modo che inizi ad accumulare PE riposo." },
            { id = "90db618c", text = "Livella i personaggi in modalità guerra fino a 90 - la FdL apre domenica per il 10% di ESP in più." }, -- ⚠️ UNVERIFIED
            { id = "6af1d802", text = "Completa l'Assalto Stormarion settimanale nella Tempesta del Vuoto. (È disponibile nell'Accesso Anticipato)" }, -- ⚠️ UNVERIFIED
            { id = "35bc0cfd", text = "(Opzionale) Uccidi ogni raro una volta in ogni zona per rinomanza. Questi hanno un blocco settimanale per ogni raro." },
            { id = "2687fe6c", text = "Cerca i tesori di ogni regione per Rinomanza gratuita. Vedi la documentazione per la guida" },
            { id = "91e7ee6c", text = "Completa 4x Preda in difficoltà normale per rinomanza" }, -- ⚠️ UNVERIFIED
            { id = "8bf4f442", text = "Completa l'impresa Cacciatore delle Leggende di Midnight per rinomanza - vedi la documentazione per la guida" }, -- ⚠️ UNVERIFIED
            { id = "c886190c", text = "Completa l'impresa Vette Più Alte per rinomanza - vedi la documentazione per la guida" }, -- ⚠️ UNVERIFIED
            { id = "f9b8eb01", text = "Completa le catene di missioni secondarie per rinomanza. (può essere fatto con gli alt per livellare contemporaneamente). Il buff della FdL non dà rinomanza." }, -- ⚠️ UNVERIFIED
            { id = "4aa4b47d", text = "Nota: Solo gli oggetti campione di Singularity E Eversong sono disponibili nell'accesso anticipato - gli altri diventeranno disponibili lunedì dopo il lancio ufficiale o dopo il reset settimanale di ogni regione." },
            { id = "ba1890e4", text = "Completa il Ricevimento di Saltheril settimanale nei Boschi di Cantaluna. Non dimenticare di prendere la missione di fama per l'elmo del campione se hai la fama necessaria" },
        },
    },

    {
        id = "50281d6f",
        title = "Pre-stagione settimana 1 - 3 marzo - M0",
        items = {
            { id = "727109d8", text = "Non spendere alcuna Cresta finché non ti viene detto di farlo. Vedi la guida per capire perché conserviamo le creste." },
            { id = "5a2e9ede", text = "NON CRAFTARE" },
            { id = "c06ee1a3", text = "Se sei su un alt e non vedi alcune di queste missioni, vai da Soridormi nella Locanda di Lunargenta e scegli \"Ho Fermato la Tempesta del Vuoto\" per saltare la campagna." }, -- ⚠️ UNVERIFIED
            { id = "44fbfe51", text = "Porta la reputazione di The Singularity al rango 7 per il gingillo campione 1/6 - proviene dalla missione del venditore di reputazione (non acquistato)" },
            { id = "02ceff50", text = "Porta la reputazione di Hara'ti al rango 8 per la cintura campione 1/6 - proviene dalla missione del venditore di reputazione (non acquistato)" },
            { id = "cdea3773", text = "Porta la reputazione di Silvermoon al rango 9 per l'elmo campione 1/6 - proviene dalla missione del venditore di reputazione (non acquistato)" },
            { id = "19687ed0", text = "Porta la reputazione di Tribù Amani al rango 9 per la collana campione 1/6 - proviene dalla missione del venditore di reputazione (non acquistato)" },
            { id = "101e78a9", text = "Completa la missione settimanale del dungeon da Halduron Ali Lucenti per 1000 rinomanza" }, -- ⚠️ UNVERIFIED
            { id = "0c3b8835", text = "Completa la missione settimanale dell'evento mondiale per una cassa apice da Lady Liadrin - puoi prendere la missione dell'evento settimanale e farla con gli eventi sotto" },
            { id = "879d3833", text = "Completa la missione settimanale del giro del mondo da Lorthremar per una scintilla facendo le missioni sotto" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Completa la Serata di Saltheril settimanale nel Bosco dei Canti Eterni." },
            { id = "da2fa0ef", text = "Completa l'Evento dell'abbondanza settimanale a Zul'Aman." },
            { id = "dbc8384b", text = "Completa l'evento Leggende degli Haranir settimanale a Harandar." },
            { id = "9ad64245", text = "Completa l'Assalto di Stormarion settimanale nella Tempesta del Vuoto." },
            { id = "35bc0cfd", text = "(Opzionale) Uccidi ogni raro una volta in ogni zona per rinomanza. Questi hanno un blocco settimanale per ogni raro." },
            { id = "1b42ce30", text = "Se non fatto, cerca i tesori di ogni regione, il cacciatore delle leggende e le vette alte per Rinomanza gratuita. Vedi la documentazione per la guida" }, -- ⚠️ UNVERIFIED
            { id = "a892ac44", text = "Sblocca le Spedizioni fino al livello 8" },
            { id = "9bc44f02", text = "Completa 2x Preda Difficile per equipaggiamento Veterano su ogni personaggio - se solo un personaggio, fai 4x su un personaggio per rinomanza" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mondiale dei dungeon M0 - ricompensa livello oggetto veterano - non potenziare ancora" },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pre-stagione settimana 2 - 10 marzo - M0",
        items = {
            { id = "727109d8", text = "Non spendere alcuna Cresta finché non ti viene detto di farlo. Vedi la guida per capire perché conserviamo le creste." },
            { id = "5a2e9ede", text = "NON CRAFTARE" },
            { id = "75c5fe6e", text = "Se non completato, continua ad aumentare la reputazione per i pezzi campione" },
            { id = "101e78a9", text = "Completa la missione settimanale del dungeon da Halduron Ali Lucenti per 1000 rinomanza" }, -- ⚠️ UNVERIFIED
            { id = "0c3b8835", text = "Completa la missione settimanale dell'evento mondiale per una cassa apice da Lady Liadrin - puoi prendere la missione dell'evento settimanale e farla con gli eventi sotto" },
            { id = "e326ed96", text = "Completa la Serata di Saltheril settimanale nel Bosco dei Canti Eterni." },
            { id = "da2fa0ef", text = "Completa l'Evento dell'abbondanza settimanale a Zul'Aman." },
            { id = "dbc8384b", text = "Completa l'evento Leggende degli Haranir settimanale a Harandar." },
            { id = "9ad64245", text = "Completa l'Assalto di Stormarion settimanale nella Tempesta del Vuoto." },
            { id = "35bc0cfd", text = "(Opzionale) Uccidi ogni raro una volta in ogni zona per rinomanza. Questi hanno un blocco settimanale per ogni raro." },
            { id = "23cb93ed", text = "Sblocca le Spedizioni fino al livello 8 se non ancora fatto" },
            { id = "9bc44f02", text = "Completa 2x Preda Difficile per equipaggiamento Veterano su ogni personaggio - se solo un personaggio, fai 4x su un personaggio per rinomanza" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mondiale dei dungeon M0 - ricompensa livello oggetto veterano - non potenziare ancora" },
            { id = "c33e5c84", text = "Se radi martedì 17, crafta. Consulta il documento per ulteriori informazioni." },
        },
    },

    {
        id = "33a3fcba",
        title = "Stagione 1 settimana 1 - 17 marzo - Settimana eroica",
        items = {
            { id = "727109d8", text = "Non spendere alcuna Cresta finché non ti viene detto di farlo. Vedi la guida per capire perché conserviamo le creste." },
            { id = "5b379666", text = "Fai il LFR per i pezzi tier (controlla la guida per sapere perché)" },
            { id = "879d3833", text = "Completa la missione settimanale del giro del mondo da Lorthremar per una scintilla facendo le missioni sotto" }, -- ⚠️ UNVERIFIED
            { id = "9686fde4", text = "Completa la missione settimanale dell'abitazione da Vaeli per ?creste eroe? (sarà aggiornato quando sarà disponibile)" }, -- ⚠️ UNVERIFIED
            { id = "952916cd", text = "(Opzionale) Completa un Giro del Mondo di dungeon M0 - ricompensa ilvl campione" }, -- ⚠️ UNVERIFIED
            { id = "22842538", text = "Completa 2x Preda Incubo per equipaggiamento Campione su ogni personaggio" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Uccidi il boss mondiale per un oggetto campione 2/6 livello 250" },
            { id = "3e0dfde7", text = "Se disponibile, completa la missione JcJ per collana/anello eroe garantito" },
            { id = "b6846065", text = "Fai spedizioni fruttuose di livello 8 o superiore, usa la mappa su spedizioni di livello 8+ - mentre fai questo, sblocca le spedizioni di livello 11" },
            { id = "eff76e73", text = "Prima del raid: crafta 2 pezzi liv. 246, 2 ornamenti negli slot deboli, usa 160 emblemi veterano" },
            { id = "2af0bfb5", text = "Prima del raid: spendi tutti gli Emblemi esploratore, veterano e campione potenziando tutto" },
            { id = "5768e0fe", text = "Tieni traccia degli emblemi: 0/100 Eroico, 0/100 Mitico" },
        },
    },

    {
        id = "d2de9d43",
        title = "Settimana 2 - 24 marzo - Settimana mitica, M+ apre, prendetevi ferie nerd",
        items = {
            { id = "727109d8", text = "Non spendere alcuna Cresta finché non ti viene detto di farlo. Vedi la guida per capire perché conserviamo le creste." },
            { id = "7e42a12d", text = "Nota sull'arma 1M craftata, controlla la guida, verifica il percorso di crafting (MOLTO IMPORTANTE!)" },
            { id = "5b379666", text = "Fai il LFR per i pezzi tier (controlla la guida per sapere perché)" },
            { id = "16cf341e", text = "(Facoltativo) Uccidi il boss mondiale per un oggetto campione 2/6 livello 250" },
            { id = "3ccf0a1f", text = "(Facoltativo) Completa 4 volte la Preda da Incubo per equipaggiamento campione e reputazione." },
            { id = "26d0b610", text = "Fai almeno una Scorribanda generosa di livello 11 per ottenere la missione della Pietra Runica Incrinata" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continua a spendere tutti gli Emblemi esploratore, veterano e campione potenziando tutto" },
            { id = "74924a7b", text = "Farma i +10 per equipaggiamento liv. 266 in ogni slot" },
            { id = "eb45e64d", text = "Prima del raid mitico: potenzia 11 oggetti eroe 3/6 una volta ciascuno" },
            { id = "cbfb6966", text = "Mitico: se hai un oggetto del percorso mitico, passa ai consigli di potenziamento della settimana successiva." },
            { id = "0e855644", text = "Tieni traccia degli emblemi: 220/220 Eroico, 0/220 Mitico – non accumulare mai Emblemi Mitici" },
            { id = "721f006f", text = "Livello oggetto finale: 4x266, 11x269" },
        },
    },

    {
        id = "b0abc363",
        title = "Settimana 3 - 31 marzo - Apre il raid finale",
        items = {
            { id = "1fbc825e", text = "Apri il Grande Forziere (oggetto mitico 272+) - potenzia dopo il crafting" },
            { id = "fb8255a7", text = "Crea oggetti – consulta la guida per 2 percorsi da scegliere" },
            { id = "8226c872", text = "Senza bonus 4 pezzi: fai il LFR per i pezzi tier (controlla la guida)" },
            { id = "1db5f946", text = "Farma i +10 per il Grande Forziere + emblemi" },
            { id = "c316485a", text = "Eroico: potenzia 2 dei tuoi oggetti 269 4/6 a 276 6/6 per 80 emblemi eroici" },
            { id = "2568bd36", text = "Mitico: se il tuo oggetto del Grande Forziere era 1/6, potenzia prima la controparte eroica a 6/6 per 20 emblemi eroici. Poi potenzia il tuo oggetto del percorso mitico 272 1/6 a 6/6 289 per 80 emblemi mitici." },
            { id = "484da4b0", text = "Se hai un 2° oggetto del percorso mitico, passa ai consigli di potenziamento della settimana successiva." },
            { id = "0ecf8e89", text = "Tieni traccia degli emblemi: 320/320 Eroico, 160/320 Mitico – non accumulare mai Emblemi Mitici" },
            { id = "02884180", text = "Livello oggetto finale: 3x266, 8x269, 2x276h, 1x285(craftato), 1x289" },
        },
    },

    {
        id = "572003ec",
        title = "Settimana 4 - 7 apr.",
        items = {
            { id = "9375e497", text = "Apri il Grande Forziere (oggetto mitico 272+)" },
            { id = "1db5f946", text = "Farma i +10 per il Grande Forziere + emblemi" },
            { id = "c316485a", text = "Eroico: potenzia 2 dei tuoi oggetti 269 4/6 a 276 6/6 per 80 emblemi eroici" },
            { id = "2568bd36", text = "Mitico: se il tuo oggetto del Grande Forziere era 1/6, potenzia prima la controparte eroica a 6/6 per 20 emblemi eroici. Poi potenzia il tuo oggetto del percorso mitico 272 1/6 a 6/6 289 per 80 emblemi mitici." },
            { id = "0ccf5c83", text = "Mitico: potenzia il tuo bottino del raid 2/6 275 del percorso mitico a 6/6 289 per 80 emblemi mitici." },
            { id = "299f3284", text = "Tieni traccia degli emblemi: 420/400 Eroico, 320/420 Mitico – non accumulare mai Emblemi Mitici" },
            { id = "8b8cde46", text = "Livello oggetto finale: 2x266, 5x269, 4x276h, 1x285(craftato), 3x289" },
        },
    },

    {
        id = "239053b5",
        title = "Settimana 5 - 14 apr.",
        items = {
            { id = "9375e497", text = "Apri il Grande Forziere (oggetto mitico 272+)" },
            { id = "1db5f946", text = "Farma i +10 per il Grande Forziere + emblemi" },
            { id = "11e426da", text = "Crea il prossimo oggetto (consulta il documento per ulteriori informazioni)" },
            { id = "c316485a", text = "Eroico: potenzia 2 dei tuoi oggetti 269 4/6 a 276 6/6 per 80 emblemi eroici" },
            { id = "2568bd36", text = "Mitico: se il tuo oggetto del Grande Forziere era 1/6, potenzia prima la controparte eroica a 6/6 per 20 emblemi eroici. Poi potenzia il tuo oggetto del percorso mitico 272 1/6 a 6/6 289 per 80 emblemi mitici." },
            { id = "8d74c3e1", text = "Tieni traccia degli emblemi: 520/520 Eroico, 480/520 Mitico – non accumulare mai Emblemi Mitici" },
            { id = "4f04ba4e", text = "Livello oggetto finale: 1x266, 2x269, 6x276h, 2x285(craftato), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Settimana 6 - 21 apr. - Finiti gli emblemi eroici",
        items = {
            { id = "9375e497", text = "Apri il Grande Forziere (oggetto mitico 272+)" },
            { id = "1db5f946", text = "Farma i +10 per il Grande Forziere + emblemi" },
            { id = "c35cf0b6", text = "Eroico: potenzia il tuo ultimo oggetto 269 4/6 a 276 6/6 per 40 emblemi eroici" },
            { id = "2568bd36", text = "Mitico: se il tuo oggetto del Grande Forziere era 1/6, potenzia prima la controparte eroica a 6/6 per 20 emblemi eroici. Poi potenzia il tuo oggetto del percorso mitico 272 1/6 a 6/6 289 per 80 emblemi mitici." },
            { id = "0ccf5c83", text = "Mitico: potenzia il tuo bottino del raid 2/6 275 del percorso mitico a 6/6 289 per 80 emblemi mitici." },
            { id = "4510d1aa", text = "Tieni traccia degli emblemi: 560/620 Eroico, 620/620 Mitico – non accumulare mai Emblemi Mitici" },
            { id = "67f84375", text = "Livello oggetto finale: 7x276h, 2x285(craftato), 1x285, 5x289" },
        },
    },

    {
        id = "fd1bf82c",
        title = "Settimana 7 - 28 apr.+",
        items = {
            { id = "f9978f0e", text = "Non craftare se puoi ottenere oggetti dal Grande Forziere superiori a 1/6" },
            { id = "66e83cc1", text = "Potenzia gli oggetti mitici man mano che li ottieni, preferendo il salto a 289 per il +4" },
            { id = "a90c240c", text = "Pianifica un possibile scambio a 1M + mano secondaria craftata" },
            { id = "10aac768", text = "Goditi il sistema di potenziamento molto migliore di Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
