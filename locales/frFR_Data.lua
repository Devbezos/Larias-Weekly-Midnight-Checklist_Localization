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
        id = "bd6b2f68",
        title = "Accès Anticipé - 26 fév. au 2 mars",
        items = {
            { id = "f4b92a82", text = "Connectez-vous sur chaque personnage que vous prévoyez de monter de niveau afin qu'ils commencent à accumuler de l'XP reposée." },
            { id = "90db618c", text = "Montez les personnages en mode guerre jusqu'au niveau 90 - La Foire de Sombrelune ouvre dimanche pour 10% d'exp en plus." },
            { id = "6af1d802", text = "Terminez l'assaut hebdomadaire de Stormarion dans le Voidstorm. (Il est disponible en Accès Anticipé)" }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Optionnel) Tuez chaque créature rare une fois dans chaque zone pour gagner du renom. Il s'agit d'un bonus unique pour chaque rare qui ne se réinitialise pas chaque semaine." },
            { id = "0394cb0d", text = "Traquez les trésors de chaque région pour obtenir du Renom gratuit. Consultez le guide pour plus d'informations" },
            { id = "91e7ee6c", text = "Terminez 4x Proie en difficulté normale pour du renom" }, -- ⚠️ UNVERIFIED
            { id = "c699a5d6", text = "Complétez le haut fait Chasseur de légendes de Minuit pour du renom - Consultez le guide pour plus d'informations" }, -- ⚠️ UNVERIFIED
            { id = "cfd4a904", text = "Complétez le haut fait Les plus hauts sommets pour du renom - Consultez le guide pour plus d'informations" }, -- ⚠️ UNVERIFIED
            { id = "f9b8eb01", text = "Terminez les chaînes de quêtes secondaires pour du renom. (peut être fait sur les rerolls pour monter de niveau en même temps). Le bonus de la Foire de Sombrelune ne donne pas de renom." },
            { id = "4aa4b47d", text = "Note : Seuls les objets de champion de la Singularité ET de Chantvif sont disponibles en accès anticipé - les autres deviendront disponibles soit le lundi après le lancement officiel, soit après la réinitialisation hebdomadaire de chaque région." },
            { id = "ba1890e4", text = "Terminez la Soirée de Saltheril hebdomadaire dans les Bois des Chants éternels. N'oubliez pas de prendre la quête de renom pour le heaume de champion si vous avez le renom" },
        },
    },

    {
        id = "50281d6f",
        title = "Pré-saison semaine 1 - 3 mars - M0",
        items = {
            { id = "ebe944e7", text = "Économisez 160 écussons de vétéran pour fabriquer 2 objets de vétéran avec embellissements" },
            { id = "5a2e9ede", text = "NE PAS FABRIQUER" },
            { id = "c06ee1a3", text = "Si vous êtes sur un reroll et ne voyez pas certaines de ces quêtes, allez voir Soridormi à l'auberge de Lune-d'Argent et choisissez « J'ai arrêté le Voidstorm » pour passer la campagne." }, -- ⚠️ UNVERIFIED
            { id = "755d27e7", text = "Élevez le renom de La Singularité au rang 7 pour un bijou de champion 1/6 - provient d'une quête du vendeur de renom" },
            { id = "f213fee8", text = "Élevez le renom des Hara'ti au rang 8 pour une ceinture de champion 1/6 - provient d'une quête du vendeur de renom" },
            { id = "81fd810d", text = "Élevez le renom de Lune-d'Argent au rang 9 pour un heaume de champion 1/6 - provient d'une quête du vendeur de renom" },
            { id = "804b15e3", text = "Élevez le renom de la tribu Amani au rang 9 pour un collier de champion 1/6 - provient d'une quête du vendeur de renom" },
            { id = "101e78a9", text = "Terminez la quête de donjon hebdomadaire de Halduron Brightewing pour 1000 de renom" }, -- ⚠️ UNVERIFIED
            { id = "0c3b8835", text = "Terminez la quête d'événement mondial hebdomadaire pour un coffre apogée auprès de Dame Liadrin - vous pouvez prendre la quête d'événement hebdomadaire et la faire avec les événements ci-dessous" }, -- ⚠️ UNVERIFIED
            { id = "879d3833", text = "Terminez la quête de tour du monde hebdomadaire de Lorthremar pour une étincelle en faisant les quêtes ci-dessous" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Complétez la Soirée de Saltheril hebdo dans les Bois des Chants éternels." },
            { id = "da2fa0ef", text = "Complétez l'Événement d'abondance hebdo dans Zul'Aman." },
            { id = "dbc8384b", text = "Complétez l'événement Légendes des Haranir hebdo à Harandar." },
            { id = "9ad64245", text = "Complétez l'Assaut de Stormarion hebdo dans la Tempête du néant." },
            { id = "6762e305", text = "(Optionnel) Tuez chaque créature rare une fois dans chaque zone pour gagner du renom. Il s'agit d'un bonus unique pour chaque rare qui ne se réinitialise pas chaque semaine." },
            { id = "666a0192", text = "Si ce n'est pas fait, traquez les trésors de chaque région, le chasseur de légendes et les hauts sommets pour du Renom gratuit. Consultez le guide pour plus d'informations." },
            { id = "a892ac44", text = "Débloquez les Profondeurs jusqu'au palier 8" },
            { id = "d54f7430", text = "Complétez 4x Proie coriace. Les 2 premières donneront de l'équipement Vétéran ; les 4 donneront des Armoiries vétéran dont vous avez besoin pour plafonner." },
            { id = "efb035ba", text = "(Optionnel) Terminez 2x Proie difficile aléatoire pour obtenir des armoiries vétéran sur chaque personnage - faire 2x optionnel par semaine plafonnera les armoiries vétéran à la fin de la semaine 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Effectuez un tour mondial des donjons M0 – récompense niv. obj. vétéran – n'améliorez pas encore" },
            { id = "c60d586a", text = "Correctif du jeudi 5 mars : Blizzard a ajouté par correctif la possibilité d'obtenir un haut fait qui réduit le coût d'amélioration de vos écussons de 50% sur votre compte une fois qu'un personnage atteint 237 dans chaque emplacement. Consultez le guide pour plus d'informations." },
            { id = "77405dc2", text = "Nouveau : Si vous n'avez qu'un seul personnage, après avoir terminé votre premier tour du monde des donjons M0, vous pouvez dépenser des écussons d'aventurier sur les objets restants." },
            { id = "95531889", text = "Nouveau : Si vous avez plusieurs personnages, une fois que vous avez obtenu le nouveau haut fait, vous pouvez améliorer librement sur tous les autres personnages." },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pré-saison semaine 2 - 10 mars - M0",
        items = {
            { id = "ebe944e7", text = "Économisez 160 écussons de vétéran pour fabriquer 2 objets de vétéran avec embellissements" },
            { id = "5a2e9ede", text = "NE PAS FABRIQUER" },
            { id = "75c5fe6e", text = "Si pas terminé, continuez à augmenter la renommée pour les pièces champion" },
            { id = "101e78a9", text = "Terminez la quête de donjon hebdomadaire de Halduron Brightewing pour 1000 de renom" }, -- ⚠️ UNVERIFIED
            { id = "e0ecce24", text = "Complétez la quête d'événement mondial hebdomadaire pour un coffre apogée et une étincelle auprès de Dame Liadrin" },
            { id = "8b55f0c7", text = "(Optionnel) Complétez la Soirée de Saltheril hebdomadaire dans les Bois des Chants éternels." },
            { id = "8e107032", text = "(Optionnel) Complétez l'événement d'Abondance hebdomadaire dans Zul'Aman." },
            { id = "d5a12c89", text = "(Optionnel) Complétez l'événement Légendes des Haranir hebdomadaire à Harandar." },
            { id = "514a6926", text = "(Optionnel) Complétez l'Assaut de Stormarion hebdomadaire dans le Videorage." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Optionnel) Tuez chaque créature rare une fois dans chaque zone pour gagner du renom. Il s'agit d'un bonus unique pour chaque rare qui ne se réinitialise pas chaque semaine." },
            { id = "23cb93ed", text = "Débloquez les Profondeurs jusqu'au palier 8 si ce n'est pas encore fait" },
            { id = "d54f7430", text = "Complétez 4x Proie coriace. Les 2 premières donneront de l'équipement Vétéran ; les 4 donneront des Armoiries vétéran dont vous avez besoin pour plafonner." },
            { id = "efb035ba", text = "(Optionnel) Terminez 2x Proie difficile aléatoire pour obtenir des armoiries vétéran sur chaque personnage - faire 2x optionnel par semaine plafonnera les armoiries vétéran à la fin de la semaine 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Effectuez un tour mondial des donjons M0 – récompense niv. obj. vétéran – n'améliorez pas encore" },
            { id = "dc01eba9", text = "Si vous avez des pièces d'aventurier restantes, vous pouvez les améliorer librement." },
            { id = "f2af7330", text = "Si vous faites un raid le mardi 17, craftez. Consultez le guide pour plus d'informations." },
        },
    },

    {
        id = "33a3fcba",
        title = "Saison 1 semaine 1 - 17 mars - Semaine héroïque",
        items = {
            { id = "36d21691", text = "Ne dépensez aucun écusson héroïque ou mythique avant qu'on vous le dise. Consultez le guide pour comprendre pourquoi nous conservons les écussons." },
            { id = "e66847d8", text = "Faites le RDF pour des pièces de panoplie - obtenir un bonus 4 pièces permettra aux charges de catalyseur de tomber de tout le contenu" },
            { id = "e0ecce24", text = "Complétez la quête d'événement mondial hebdomadaire pour un coffre apogée et une étincelle auprès de Dame Liadrin" },
            { id = "9686fde4", text = "Complétez la quête de logement hebdomadaire de Vaeli pour ?armoiries héros? (sera mis à jour quand ce sera en ligne)" },
            { id = "ca5a8044", text = "Si disponible, complétez la quête JcJ pour un collier/anneau héros garanti - peut-être faisable avec le classement JcJ optionnel ci-dessous" },
            { id = "d8d237fa", text = "(Optionnel) Élevez votre classement JcJ à 1600 pour une charge de catalyseur (c'est la même charge de catalyseur partagée avec 2 000 de score M+ de la semaine suivante). Si vous obtenez 2 pièces de panoplie de votre raid cette semaine, cela vous permettrait de catalyser 2 objets et de commencer à recevoir des charges de Catalyseur de vos m+ la semaine prochaine." },
            { id = "45c7d35b", text = "(Optionnel) Complétez une tournée mondiale des donjons M0 - récompense ilvl champion - verrouillage quotidien" },
            { id = "22842538", text = "Terminez 2x Proie cauchemardesque pour de l'équipement Champion sur chaque personnage" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Tuez le boss mondial pour un objet champion 2/6 niv. 250" },
            { id = "b6846065", text = "Faites des Profondeurs généreuses de palier 8 ou supérieur, utilisez la carte sur une Profondeur palier 8+ - en faisant cela, débloquez les Profondeurs palier 11" },
            { id = "8c700b67", text = "Avant le raid, fabriquez 2 pièces ilvl 246, 2 embellissements sur des emplacements faibles, utilisez 160 écussons de vét. Ceux-ci ne nécessitent pas d'étincelles." },
            { id = "679a07b9", text = "Avant le raid, dépensez toutes les Armoiries aventurier, vétéran et champion en améliorant tout. Ne dépensez pas les armoiries héroïques ou mythiques." },
            { id = "5768e0fe", text = "Suivi des Écus : 0/100 Héroïque, 0/100 Mythique" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semaine 2 - 24 mars - Semaine mythique, M+ ouvre, prenez des congés les nerds",
        items = {
            { id = "36d21691", text = "Ne dépensez aucun écusson héroïque ou mythique avant qu'on vous le dise. Consultez le guide pour comprendre pourquoi nous conservons les écussons." },
            { id = "e0ecce24", text = "Complétez la quête d'événement mondial hebdomadaire pour un coffre apogée et une étincelle auprès de Dame Liadrin" },
            { id = "9686fde4", text = "Complétez la quête de logement hebdomadaire de Vaeli pour ?armoiries héros? (sera mis à jour quand ce sera en ligne)" },
            { id = "4056a14a", text = "Si vous n'avez pas le bonus 4 pièces, faites le RDF pour des pièces de panoplie - obtenir un bonus 4 pièces permettra aux charges de catalyseur de tomber de tout le contenu" },
            { id = "16cf341e", text = "(Optionnel) Tuez le boss mondial pour un objet champion 2/6 niv. 250" },
            { id = "4aa82ede", text = "(Optionnel) Complétez 2x Proie cauchemardesque pour de l'équipement Champion sur chaque personnage" },
            { id = "26d0b610", text = "Faites au moins un Gouffre abondant T11 pour obtenir la quête de la Pierre runique fissurée" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continuez à dépenser tous les Écus d'aventure, de vétéran et de champion pour tout améliorer" },
            { id = "74924a7b", text = "Farmez les +10 pour l'équipement niv. 266 dans chaque emplacement" },
            { id = "eb45e64d", text = "Avant le raid mythique : améliorez 11 objets héroïques 3/6 une fois chacun" },
            { id = "cbfb6966", text = "Mythique : si vous avez un objet de piste mythique, passez aux conseils d'amélioration de la semaine suivante." },
            { id = "0e855644", text = "Suivi des Écus : 220/220 Héroïque, 0/220 Mythique – ne jamais conserver d'Écus mythiques" },
            { id = "721f006f", text = "Niveau d'objet final : 4x266, 11x269" },
        },
    },

    {
        id = "b0abc363",
        title = "Semaine 3 - 31 mars - Le raid final ouvre",
        items = {
            { id = "1fbc825e", text = "Ouvrez la Grande Chambre Forte (objet mythique 272+) – améliorez après fabrication" },
            { id = "8226c872", text = "Sans bonus 4 pièces, faites le LFR pour les pièces de palier (consultez le guide)" },
            { id = "1db5f946", text = "Farmez les +10 pour la Grande Chambre Forte + Écus" },
            { id = "c316485a", text = "Héroïque : améliorez 2 de vos objets 269 4/6 à 276 6/6 pour 80 Écus héroïques" },
            { id = "2568bd36", text = "Mythique : si votre objet de la Grande Chambre Forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 pour 20 Écus héroïques. Améliorez ensuite votre objet de piste mythique 272 1/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "484da4b0", text = "Si vous obtenez un 2e objet de piste mythique, passez aux conseils d'amélioration de la semaine suivante." },
            { id = "0ecf8e89", text = "Suivi des Écus : 320/320 Héroïque, 160/320 Mythique – ne jamais conserver d'Écus mythiques" },
            { id = "02884180", text = "Niveau d'objet final : 3x266, 8x269, 2x276h, 1x285(fabriqué), 1x289" },
        },
    },

    {
        id = "572003ec",
        title = "Semaine 4 - 7 avr.",
        items = {
            { id = "9375e497", text = "Ouvrez la Grande Chambre Forte (objet mythique 272+)" },
            { id = "1db5f946", text = "Farmez les +10 pour la Grande Chambre Forte + Écus" },
            { id = "c316485a", text = "Héroïque : améliorez 2 de vos objets 269 4/6 à 276 6/6 pour 80 Écus héroïques" },
            { id = "2568bd36", text = "Mythique : si votre objet de la Grande Chambre Forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 pour 20 Écus héroïques. Améliorez ensuite votre objet de piste mythique 272 1/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "0ccf5c83", text = "Mythique : améliorez votre butin de raid de piste mythique 275 2/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "299f3284", text = "Suivi des Écus : 420/400 Héroïque, 320/420 Mythique – ne jamais conserver d'Écus mythiques" },
            { id = "8b8cde46", text = "Niveau d'objet final : 2x266, 5x269, 4x276h, 1x285(fabriqué), 3x289" },
        },
    },

    {
        id = "239053b5",
        title = "Semaine 5 - 14 avr.",
        items = {
            { id = "9375e497", text = "Ouvrez la Grande Chambre Forte (objet mythique 272+)" },
            { id = "1db5f946", text = "Farmez les +10 pour la Grande Chambre Forte + Écus" },
            { id = "11e426da", text = "Fabriquez le prochain objet (consultez le document pour plus d'informations)" },
            { id = "c316485a", text = "Héroïque : améliorez 2 de vos objets 269 4/6 à 276 6/6 pour 80 Écus héroïques" },
            { id = "2568bd36", text = "Mythique : si votre objet de la Grande Chambre Forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 pour 20 Écus héroïques. Améliorez ensuite votre objet de piste mythique 272 1/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "8d74c3e1", text = "Suivi des Écus : 520/520 Héroïque, 480/520 Mythique – ne jamais conserver d'Écus mythiques" },
            { id = "4f04ba4e", text = "Niveau d'objet final : 1x266, 2x269, 6x276h, 2x285(fabriqué), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semaine 6 - 21 avr. - Écus héroïques épuisés",
        items = {
            { id = "9375e497", text = "Ouvrez la Grande Chambre Forte (objet mythique 272+)" },
            { id = "1db5f946", text = "Farmez les +10 pour la Grande Chambre Forte + Écus" },
            { id = "c35cf0b6", text = "Héroïque : améliorez votre dernier objet 269 4/6 à 276 6/6 pour 40 Écus héroïques" },
            { id = "2568bd36", text = "Mythique : si votre objet de la Grande Chambre Forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 pour 20 Écus héroïques. Améliorez ensuite votre objet de piste mythique 272 1/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "0ccf5c83", text = "Mythique : améliorez votre butin de raid de piste mythique 275 2/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "4510d1aa", text = "Suivi des Écus : 560/620 Héroïque, 620/620 Mythique – ne jamais conserver d'Écus mythiques" },
            { id = "67f84375", text = "Niveau d'objet final : 7x276h, 2x285(fabriqué), 1x285, 5x289" },
        },
    },

    {
        id = "fd1bf82c",
        title = "Semaine 7 - 28 avr.+",
        items = {
            { id = "f9978f0e", text = "Ne fabriquez pas si vous pouvez obtenir des objets de la Grande Chambre Forte supérieurs à 1/6" },
            { id = "66e83cc1", text = "Améliorez les objets mythiques au fur et à mesure, en privilégiant le saut à 289 pour le bonus +4" },
            { id = "a90c240c", text = "Planifiez un éventuel échange 1M + main secondaire fabriquée" },
            { id = "10aac768", text = "Profitez du bien meilleur système d'amélioration de Blizzard !" },
        },
    },
}

reg.data[LOCALE] = DATASET
