--[[
French (frFR) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
]]
if GetLocale() ~= "frFR" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "frFR"

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
        title = "Saison 1 Semaine 1 - 17 mars - Semaine Héroïque, 2e fabrication",
        items = {
            { id = "791379ba", text = "Ne dépensez aucune Crête héroïque ou mythique tant qu'on ne vous le dit pas. Consultez le Guide pour savoir pourquoi nous conservons les crêtes." },
            { id = "fab7aef9", text = "Presque tout le monde peut probablement fabriquer votre objet d'étincelle maintenant. Consultez le guide pour savoir quoi et quand fabriquer." },
            { id = "e66847d8", text = "Faites le RDR pour les pièces de set - obtenir un bonus de 4 pièces permettra aux charges de catalyseur de tomber de tout le contenu" },
            { id = "b1a6f7eb", text = "Terminez la quête événementielle hebdomadaire pour le coffre apogée et l'étincelle auprès de Dame Liadrin - Faire l'Arcantina prend 3 minutes" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Terminez la quête de logement hebdomadaire auprès de Vaeli - la récompense est des armoiries plafonnées, peu importe ce que vous choisissez mais le plus grand gain à court terme est de sélectionner les Armoiries de champion" }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Optionnel) Montez le classement JcJ à 1600 pour une charge de catalyseur (c'est la même charge de catalyseur partagée avec la cote M+ de 2 000 de la semaine suivante). Si vous obtenez 2 pièces de set de votre raid cette semaine, cela vous permettrait de catalyser 2 objets et de commencer à obtenir des charges de Catalyseur de vos m+ la semaine prochaine." },
            { id = "ef789b0b", text = "(Optionnel) Complétez un Tour du Monde des donjons M0. Ceux-ci récompenseront un ilvl de champion sur un verrouillage quotidien - NE VOUS ÉPUISEZ PAS ! M+ ouvre la semaine prochaine et remplacera tout cela." },
            { id = "d78939c6", text = "Tâche quotidienne : envisagez de faire un m0 spécifique qui lâche un excellent bijou pour vous chaque jour. L'objet sera de ilvl champion (raid normal) et pourrait être un bon boost pour le raid de la semaine prochaine si vous ne parvenez pas encore à le farmer en Héroïque." },
            { id = "05b7e462", text = "Terminez 4x Proie difficile pour débloquer Proie cauchemardesque." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Terminez 3x Proie cauchemardesque pour obtenir l'équipement de champion sur chaque personnage et pour terminer la quête hebdomadaire pour l'objet d'invocation de boss et 20 armoiries de héros non plafonnées" }, -- ⚠️ UNVERIFIED
            { id = "cc5a28dd", text = "Terminez Nullaeus en difficulté ? pour 30 armoiries de héros non plafonnées. N'oubliez pas de ne pas les dépenser." }, -- ⚠️ UNVERIFIED
            { id = "bad52b04", text = "Terminez Nullaeus en difficulté ?? pour 30 écussons de héros et 30 écussons de mythe supplémentaires sans plafond. REMARQUE : Bien que le haut fait Panthéon des légendes exige de le faire en solo, vous pouvez le faire facilement en groupe. Avec un compagnon de délétion tank + soigneur, ajoutez simplement plus de DPS à votre groupe." }, -- ⚠️ UNVERIFIED
            { id = "f7a876a0", text = "Le vendeur dans la zone des tréfonds a un sac avec 2 clés gratuites qui dépassent le plafond. C'est une fois par confrérie - assurez-vous de l'acheter sur votre personnage principal." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Faites des Tréfonds abondants de palier 8 ou supérieur, utilisez la carte sur un Tréfonds palier 8+ - pendant ce temps, débloquez les Tréfonds palier 11" },
            { id = "2f9c0f4f", text = "Utilisez votre objet d'invocation de boss de la quête hebdomadaire Proie cauchemardesque dans une Exploration de palier 8 pour obtenir une carte puis utilisez-la pour un objet de piste héroïque." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Tuez le boss mondial pour un objet de champion 3/6 ilvl 253" }, -- ⚠️ UNVERIFIED
            { id = "bf5d2e12", text = "Remplissez votre coffre dans chaque emplacement pour plusieurs chances d'obtenir des objets de palier héroïque la semaine prochaine." },
            { id = "0755c002", text = "AVANT LE RAID, fabriquez 1 à 2 pièces de niveau d'objet 246 avec des enjolivements sur les emplacements faibles, en utilisant 80-160 écussons de vétéran. CEUX-CI NE NÉCESSITENT PAS D'ÉTINCELLES. Les objets que vous fabriquez sont les objets de qualité bleue à l'établi d'artisanat dans lesquels vous insérez 80 écussons de vétéran pour augmenter leur niveau d'objet. Consultez le guide pour plus d'informations. Vous pouvez également demander de l'aide sur le Discord si nécessaire." },
            { id = "146b7d62", text = "Après avoir fait autant que possible ci-dessus, mais AVANT le raid, dépensez toutes les Crêtes d'Aventurier, de Vétéran et de Champion pour améliorer n'importe quoi. Ne dépensez pas les crêtes Héroïques ou Mythiques." },
            { id = "c5055967", text = "Suivre les écussons dépensés : 0/180 héroïques, 0/130 mythiques" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semaine 2 - 24 mars - Semaine mythique, M+ ouvre, prenez des congés les nerds",
        items = {
            { id = "e8cef00e", text = "Consultez le guide pour savoir quoi et quand fabriquer." },
            { id = "4056a14a", text = "Si vous n'avez pas le bonus 4 pièces, faites le RDF pour des pièces de panoplie - obtenir un bonus 4 pièces permettra aux charges de catalyseur de tomber de tout le contenu" },
            { id = "83fd4310", text = "Terminez la quête d'événement mondial hebdomadaire pour obtenir une étincelle auprès de Dame Liadrin" },
            { id = "4c264b7f", text = "Terminez la quête de logement hebdomadaire auprès de Vaeli pour des armoiries de héros rapides" }, -- ⚠️ UNVERIFIED
            { id = "e8673800", text = "Aucune récompense répétable réelle, aucune raison de faire ?? Nulleaux après la première complétion" }, -- ⚠️ UNVERIFIED
            { id = "547b880e", text = "Terminez la quête hebdomadaire des 3 proies cauchemar pour obtenir un objet qui invoque un boss de délétion afin d'obtenir une carte et 20 écussons de héros sans plafond." },
            { id = "73ad86e4", text = "Faites au moins une délétion fructueuse de niveau 11 pour obtenir la quête de la pierre fendue pour 20 écussons de héros et de mythe sans plafond. Pendant que vous la faites, utilisez votre objet de boss de la quête des 3 proies cauchemar pour obtenir une carte et utilisez-la dans cette délétion" }, -- ⚠️ UNVERIFIED
            { id = "e2da3aa8", text = "Reforgez votre arme d'étincelle en mythique une fois que vous avez 80 crêtes mythiques" },
            { id = "74924a7b", text = "Farmez les +10 pour l'équipement niv. 266 dans chaque emplacement" },
            { id = "591e911b", text = "Avant d'entrer en mythique, améliorez les 3/6 objets de palier héros suivants à 6/6 - torse, pantalon, casque, 1 anneau, 1 bijou. Cela devrait prendre 300/320 écussons de héros. Gardez les 20 derniers écussons de héros au cas où vous obtenez un objet mythique 1/6 que vous devez améliorer à 2/6 d'abord. Cela vous donne le plus grand pic de puissance possible en entrant dans votre première semaine de mythique tout en vous donnant la possibilité d'économiser des écussons dans d'autres emplacements. Cette hypothèse est basée sur la fabrication d'une arme à 2 mains + 1 autre objet enjolivé la semaine prochaine. Les chasseurs ou d'autres qui n'ont pas fabriqué d'armes pourraient envisager d'améliorer leur arme au lieu du pantalon ou du casque afin d'obtenir ce pic de puissance après avoir tué le premier boss en mythique si les armes ne tombent pas." },
            { id = "cbfb6966", text = "Mythique : si vous avez un objet de piste mythique, passez aux conseils d'amélioration de la semaine suivante." },
            { id = "92eaba33", text = "Suivre les écussons dépensés : 320/320 héroïques, 0/250 mythiques - ne jamais garder d'écussons mythiques - peut varier si vous avez fabriqué" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semaine 3 - 31 mars - Ouverture du Raid final, 3e fabrication",
        items = {
            { id = "1fbc825e", text = "Ouvrez la chambre forte (objet myth 272+) - améliorez après fabrication" },
            { id = "83fd4310", text = "Terminez la quête d'événement mondial hebdomadaire pour obtenir une étincelle auprès de Dame Liadrin" },
            { id = "e8673800", text = "Aucune récompense répétable réelle, aucune raison de faire ?? Nulleaux après la première complétion" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Terminez la quête hebdomadaire des 3 proies cauchemar pour 20 écussons de héros sans plafond." },
            { id = "1db5f946", text = "Farmez des +10 pour le coffre + écussons" },
            { id = "d0aed922", text = "Héroïque : Améliorez un objet 3/6 266 à 6/6 276 pour 60 écussons héroïques. Améliorez 2 objets 3/6 266 à 4/6 269 pour 40 écussons héroïques. Gardez 20 écussons héroïques pour l'étape suivante." },
            { id = "2568bd36", text = "Mythique : Si votre objet de coffre était 1/6, améliorez d'abord son équivalent héroïque à 6/6 héroïque pour 20 écussons héroïques. Améliorez votre objet de palier mythique 1/6 272 à 6/6 289 pour 80 écussons mythiques." },
            { id = "484da4b0", text = "Si vous avez obtenu un 2e objet de piste mythique, passez aux conseils d'amélioration de la semaine prochaine pour celui-ci." },
            { id = "8e67d484", text = "Suivre les écussons dépensés : 440/440 héroïques, 240/350 mythiques - ne jamais garder d'écussons mythiques - peut varier si vous avez fabriqué" },
        },
    },

    {
        id = "572003ec",
        title = "Semaine 4 - 7 avr.",
        items = {
            { id = "9375e497", text = "Ouvrir le coffre (objet mythique 272+)" },
            { id = "83fd4310", text = "Terminez la quête d'événement mondial hebdomadaire pour obtenir une étincelle auprès de Dame Liadrin" },
            { id = "e8673800", text = "Aucune récompense répétable réelle, aucune raison de faire ?? Nulleaux après la première complétion" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Terminez la quête hebdomadaire des 3 proies cauchemar pour 20 écussons de héros sans plafond." },
            { id = "1db5f946", text = "Farmez des +10 pour le coffre + écussons" },
            { id = "6e25b0ce", text = "Héroïque : Améliorez 2 de vos objets 4/6 269 à 6/6 276 pour 80 écussons héroïques. Améliorez 1 objet 3/6 266 à 4/6 269 pour 20 écussons héroïques. Gardez 20 écussons héroïques pour l'étape suivante." },
            { id = "7bfe99b2", text = "Mythique : Si votre objet de coffre était 1/6, améliorez d'abord son équivalent héroïque à 6/6 héroïque pour 20 écussons héroïques. Améliorez votre objet de palier mythique 1/6 272 à 6/6 289 pour 80 écussons mythiques." },
            { id = "0ccf5c83", text = "Mythique : améliorez votre butin de raid de piste mythique 275 2/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "b95b0829", text = "Suivre les écussons dépensés : 560/560 héroïques, 400/450 mythiques - ne jamais garder d'écussons mythiques" },
        },
    },

    {
        id = "067d2566",
        title = "Semaine 5 - 14 avril - Terminé avec les écussons héroïques",
        items = {
            { id = "9375e497", text = "Ouvrir le coffre (objet mythique 272+)" },
            { id = "83fd4310", text = "Terminez la quête d'événement mondial hebdomadaire pour obtenir une étincelle auprès de Dame Liadrin" },
            { id = "e8673800", text = "Aucune récompense répétable réelle, aucune raison de faire ?? Nulleaux après la première complétion" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Terminez la quête hebdomadaire des 3 proies cauchemar pour 20 écussons de héros sans plafond." },
            { id = "1db5f946", text = "Farmez des +10 pour le coffre + écussons" },
            { id = "cb431e83", text = "Fabriquez l'objet suivant (Consultez le guide pour plus d'infos)" },
            { id = "13957611", text = "Héroïque : Améliorez le reste de vos objets héroïques à 6/6 276. Gardez 20 écussons héroïques pour l'étape suivante." },
            { id = "2568bd36", text = "Mythique : Si votre objet de coffre était 1/6, améliorez d'abord son équivalent héroïque à 6/6 héroïque pour 20 écussons héroïques. Améliorez votre objet de palier mythique 1/6 272 à 6/6 289 pour 80 écussons mythiques." },
            { id = "c581850d", text = "Suivre les écussons dépensés : 680/680 héroïques, 480/550 mythiques - ne jamais garder d'écussons mythiques" },
        },
    },

    {
        id = "db70d77d",
        title = "Semaine 6 - 21 avril+",
        items = {
            { id = "f9978f0e", text = "Ne fabriquez pas si vous pouvez obtenir des objets de coffre supérieurs à 1/6" },
            { id = "66e83cc1", text = "Améliorez les objets mythiques au fur et à mesure que vous les obtenez, en privilégiant le saut direct à 289 pour le bond de +4" },
            { id = "1786deeb", text = "Si nécessaire, prévoyez un éventuel échange arme à 1 main + main gauche fabriquée" },
            { id = "10aac768", text = "Profitez du système d'amélioration bien meilleur de Blizzard !" },
        },
    },
}

reg.data[LOCALE] = DATASET
