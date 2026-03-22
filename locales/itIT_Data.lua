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
        id = "89ba2d2a",
        title = "Stagione 1 Settimana 1 - 17 Mar - Settimana Eroica, 2° creazione",
        items = {
            { id = "791379ba", text = "Non spendere stemmi Eroici o Mitici finché non ti viene detto di farlo. Controlla la Guida per sapere perché conserviamo gli stemmi." },
            { id = "fab7aef9", text = "Quasi tutti ora possono probabilmente creare il tuo oggetto con scintilla. Controlla la Guida per cosa e quando creare." },
            { id = "e66847d8", text = "Fai LFR per pezzi del set - ottenere un bonus set da 4 pezzi permetterà alle cariche del catalizzatore di cadere da tutti i contenuti" },
            { id = "b1a6f7eb", text = "Completa la missione evento mondiale settimanale per la cassa apicale e la scintilla da Lady Liadrin - Fare l'Arcantina richiede 3 minuti" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Completa la missione abitativa settimanale da Vaeli - la ricompensa è creste limitate, non importa cosa scegli ma il maggior potenziamento a breve termine è selezionare Creste del Campione" }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Opzionale) Aumenta il grado PVP a 1600 per carica del catalizzatore (questa è la stessa carica del catalizzatore condivisa con il punteggio M+ di 2.000 della prossima settimana). Se ottieni 2 pezzi del set dall'incursione questa settimana, questo ti permetterebbe di catalizzare 2 oggetti e iniziare a ricevere cadute di carica del Catalizzatore dalle tue m+ la prossima settimana." },
            { id = "ef789b0b", text = "(Facoltativo) Completa un Tour Mondiale di segrete M0. Queste ricompenseranno livello oggetto campione con blocco giornaliero - NON ESAURIRTI! M+ si apre la prossima settimana e sostituirà tutto questo." },
            { id = "d78939c6", text = "Compito Giornaliero: considera di fare una specifica m0 che rilascia un ottimo ninnolo per te ogni giorno. L'oggetto sarà livello oggetto campione (incursione normale) e potrebbe essere un bel potenziamento per l'incursione della prossima settimana se non riesci ancora a farmarlo su Eroico." },
            { id = "05b7e462", text = "Completa 4x Preda Difficile per sbloccare Preda da Incubo." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Completa 3x Preda da Incubo per equipaggiamento Campione su ogni personaggio e per completare la missione settimanale per l'oggetto di evocazione del boss e 20 stemmi eroe non limitati" }, -- ⚠️ UNVERIFIED
            { id = "cc5a28dd", text = "Completa Nullaeus a difficoltà ? per 30 stemmi Eroe illimitati. Ricorda di non spenderli." }, -- ⚠️ UNVERIFIED
            { id = "bad52b04", text = "Completa Nullaeus a difficoltà ?? per ottenere 30 stemmi Eroe illimitati aggiuntivi e 30 stemmi Mito illimitati. NOTA: Sebbene l'impresa Sala della Fama richieda di farlo da solo, puoi farlo facilmente in gruppo. Con un compagno di spedizione tank + guaritore, aggiungi semplicemente più DPS al tuo gruppo." },
            { id = "f7a876a0", text = "Il venditore nell'area delle caverne ha una borsa con 2 chiavi gratuite che vanno oltre il limite. Questo è una volta per compagnia di guerra - assicurati di acquistarla sul tuo personaggio principale." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Fai ricognizioni abbondanti livello 8 o superiore, usa mappa su ricognizione livello 8+  - mentre fai questo, sblocca le ricognizioni livello 11" },
            { id = "2f9c0f4f", text = "Usa il tuo oggetto d'evocazione boss dalla missione settimanale Preda da Incubo in una Fossa di livello 8 per ottenere una mappa e poi usala per un oggetto livello Eroe." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Uccidi il Boss Mondiale per oggetto camp 3/6 253 livl oggetto" }, -- ⚠️ UNVERIFIED
            { id = "bf5d2e12", text = "Riempi il tuo forziere in ogni slot per avere più possibilità di ottenere oggetti di livello eroe la prossima settimana." },
            { id = "0755c002", text = "PRIMA DEL RAID, crea 1-2 pezzi da 246 ilvl con abbellimenti negli slot deboli, usando 80-160 Stemmi Veterano. QUESTI NON RICHIEDONO SCINTILLE. Gli oggetti che stai creando sono gli oggetti di qualità blu al banco di lavorazione in cui inserisci 80 Stemmi Veterano per aumentare il loro ilvl. Controlla la Guida per maggiori informazioni. Puoi anche chiedere aiuto su Discord se ne hai bisogno." },
            { id = "146b7d62", text = "Dopo aver fatto quanto più possibile sopra, ma PRIMA dell'incursione, spendi tutti gli Stemmi Avventuriero, Veterano e Campione per potenziare qualsiasi cosa. Non spendere stemmi Eroici o Mitici." },
            { id = "c5055967", text = "Traccia stemmi spesi: 0/180 Eroici, 0/130 Mitici" },
        },
    },

    {
        id = "d2de9d43",
        title = "Settimana 2 - 24 marzo - Settimana mitica, M+ apre, prendetevi ferie nerd",
        items = {
            { id = "e8cef00e", text = "Controlla la Guida per cosa e quando creare." },
            { id = "4056a14a", text = "Se non hai il set da 4, fai LFR per pezzi tier - ottenere un bonus set da 4 pezzi permetterà alle cariche del catalizzatore di droppare da tutti i contenuti" },
            { id = "83fd4310", text = "Completa la missione settimanale dell'evento mondiale per ottenere una scintilla da Lady Liadrin" },
            { id = "4c264b7f", text = "Completa la missione abitativa settimanale da Vaeli per creste dell'eroe veloci" }, -- ⚠️ UNVERIFIED
            { id = "260911ab", text = "(Ricompensa Sconosciuta nelle settimane successive) - Completa ?? Nullaeus per ricompense sconosciute" },
            { id = "547b880e", text = "Completa la missione settimanale 3 prede dell'incubo per ottenere un oggetto che evoca un boss della spedizione per ottenere una mappa e 20 stemmi Eroe illimitati." },
            { id = "73ad86e4", text = "Completa almeno una spedizione generosa t11 per ottenere la Missione Chiave di Volta Incrinata per 20 stemmi Eroe e Mito illimitati. Mentre la fai, usa il tuo oggetto boss dalla missione 3 prede dell'incubo per ottenere una mappa e usala in questa spedizione" },
            { id = "286f219c", text = "Continua a spendere tutti gli Emblemi esploratore, veterano e campione potenziando tutto" },
            { id = "74924a7b", text = "Farma i +10 per equipaggiamento liv. 266 in ogni slot" },
            { id = "591e911b", text = "Prima di entrare in Mitica, potenzia i seguenti 3/6 oggetti traccia eroe a 6/6 - pettorale, pantaloni, elmo, 1 anello, 1 ninnolo. Questo dovrebbe richiedere 300/320 stemmi eroe. Conserva gli ultimi 20 stemmi Eroe nel caso ottenga un oggetto mito 1/6 che devi potenziare prima a 2/6. Questo ti dà il maggior aumento di potenza possibile entrando nella tua prima settimana di mitica pur dandoti l'opportunità di risparmiare stemmi in altri slot. Questa ipotesi si basa sulla creazione di un'arma a 2 mani + 1 altro oggetto abbellito la prossima settimana. I cacciatori o altri che non hanno creato armi potrebbero considerare di potenziare la loro arma invece di pantaloni o elmo per ottenere quell'aumento di potenza dopo aver ucciso il primo boss in mitica se le armi non cadono." },
            { id = "cbfb6966", text = "Mitico: se hai un oggetto del percorso mitico, passa ai consigli di potenziamento della settimana successiva." },
            { id = "92eaba33", text = "Traccia stemmi spesi: 320/320 Eroici, 0/250 Mitici - non trattenere mai gli stemmi Mitici - può variare se hai creato" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Settimana 3 - 31 Mar - Apertura Incursione Finale, 3° creazione",
        items = {
            { id = "1fbc825e", text = "Apri cassa (oggetto mitico 272+) - potenzia dopo aver creato" },
            { id = "83fd4310", text = "Completa la missione settimanale dell'evento mondiale per ottenere una scintilla da Lady Liadrin" },
            { id = "260911ab", text = "(Ricompensa Sconosciuta nelle settimane successive) - Completa ?? Nullaeus per ricompense sconosciute" },
            { id = "09b2b53b", text = "Completa la missione settimanale 3 prede dell'incubo per 20 stemmi Eroe illimitati." },
            { id = "1db5f946", text = "Farma +10 per forziere + stemmi" },
            { id = "d0aed922", text = "Eroico: Potenzia un oggetto 3/6 266 a 6/6 276 per 60 Stemmi Eroici. Potenzia 2 oggetti 3/6 266 a 4/6 269 per 40 Stemmi Eroici. Conserva 20 Stemmi Eroici per il prossimo passaggio." },
            { id = "2568bd36", text = "Mitico: Se il tuo oggetto del forziere era 1/6, potenzia prima la sua controparte eroica a 6/6 eroico per 20 Stemmi Eroici. Potenzia il tuo oggetto traccia Mito 1/6 272 a 6/6 289 per 80 stemmi Mito." },
            { id = "484da4b0", text = "Se hai ottenuto un 2° oggetto di traccia mitica, salta ai consigli di potenziamento della prossima settimana per esso." },
            { id = "8e67d484", text = "Traccia stemmi spesi: 440/440 Eroici, 240/350 Mitici - non trattenere mai gli stemmi Mitici - può variare se hai creato" },
        },
    },

    {
        id = "572003ec",
        title = "Settimana 4 - 7 apr.",
        items = {
            { id = "9375e497", text = "Apri forziere (oggetto mito 272+)" },
            { id = "83fd4310", text = "Completa la missione settimanale dell'evento mondiale per ottenere una scintilla da Lady Liadrin" },
            { id = "260911ab", text = "(Ricompensa Sconosciuta nelle settimane successive) - Completa ?? Nullaeus per ricompense sconosciute" },
            { id = "09b2b53b", text = "Completa la missione settimanale 3 prede dell'incubo per 20 stemmi Eroe illimitati." },
            { id = "1db5f946", text = "Farma +10 per forziere + stemmi" },
            { id = "6e25b0ce", text = "Eroico: Potenzia 2 dei tuoi oggetti 4/6 269 a 6/6 276 per 80 Stemmi Eroici. Potenzia 1 oggetto 3/6 266 a 4/6 269 per 20 Stemmi Eroici. Conserva 20 Stemmi Eroici per il prossimo passaggio." },
            { id = "7bfe99b2", text = "Mitico: Se il tuo oggetto del forziere era 1/6, potenzia prima la sua controparte eroica a 6/6 eroico per 20 Stemmi Eroici. Potenzia il tuo oggetto traccia Mito 1/6 272 a 6/6 289 per 80 stemmi Mito." },
            { id = "0ccf5c83", text = "Mitico: potenzia il tuo bottino del raid 2/6 275 del percorso mitico a 6/6 289 per 80 emblemi mitici." },
            { id = "b95b0829", text = "Traccia stemmi spesi: 560/560 Eroici, 400/450 Mitici - non trattenere mai gli stemmi Mitici" },
        },
    },

    {
        id = "067d2566",
        title = "Settimana 5 - 14 Apr - Finito con gli Stemmi Eroici",
        items = {
            { id = "9375e497", text = "Apri forziere (oggetto mito 272+)" },
            { id = "83fd4310", text = "Completa la missione settimanale dell'evento mondiale per ottenere una scintilla da Lady Liadrin" },
            { id = "260911ab", text = "(Ricompensa Sconosciuta nelle settimane successive) - Completa ?? Nullaeus per ricompense sconosciute" },
            { id = "09b2b53b", text = "Completa la missione settimanale 3 prede dell'incubo per 20 stemmi Eroe illimitati." },
            { id = "1db5f946", text = "Farma +10 per forziere + stemmi" },
            { id = "cb431e83", text = "Crea il prossimo oggetto (Controlla la Guida per maggiori informazioni)" },
            { id = "13957611", text = "Eroico: Potenzia gli ultimi dei tuoi oggetti eroici a 6/6 276. Conserva 20 Stemmi Eroici per il prossimo passaggio." },
            { id = "2568bd36", text = "Mitico: Se il tuo oggetto del forziere era 1/6, potenzia prima la sua controparte eroica a 6/6 eroico per 20 Stemmi Eroici. Potenzia il tuo oggetto traccia Mito 1/6 272 a 6/6 289 per 80 stemmi Mito." },
            { id = "c581850d", text = "Traccia stemmi spesi: 680/680 Eroici, 480/550 Mitici - non trattenere mai gli stemmi Mitici" },
        },
    },

    {
        id = "db70d77d",
        title = "Settimana 6 - 21 Apr+",
        items = {
            { id = "f9978f0e", text = "Non creare se puoi ottenere oggetti del forziere superiori a 1/6" },
            { id = "66e83cc1", text = "Potenzia gli oggetti Mitici man mano che li ottieni, preferendo portarli a 289 per il salto +4" },
            { id = "1786deeb", text = "Se necessario, pianifica un possibile scambio 1M + MF creata" }, -- ⚠️ UNVERIFIED
            { id = "10aac768", text = "Goditi il sistema di potenziamento molto migliore di Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
