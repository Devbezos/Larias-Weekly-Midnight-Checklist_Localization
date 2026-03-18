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
            { id = "79c35167", text = "Économisez 160 crêtes de Vétéran pour l'artisanat - voir plus bas pour les instructions (Celles-ci ne nécessitent pas d'Étincelles)" },
            { id = "e8cef00e", text = "Consultez le guide pour savoir quoi et quand fabriquer." },
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
            { id = "79c35167", text = "Économisez 160 crêtes de Vétéran pour l'artisanat - voir plus bas pour les instructions (Celles-ci ne nécessitent pas d'Étincelles)" },
            { id = "b4de098c", text = "Note spéciale pour les classes à double arme - vous pouvez probablement fabriquer votre objet à étincelle maintenant. Consultez le Guide pour savoir quoi et quand fabriquer." },
            { id = "d8f307f2", text = "Alerte de mise à jour du guide texte : J'ai mis à jour les conseils de fabrication d'Étincelle pour chaque classe. Je recommande fortement de Consulter le Guide avec les nouvelles informations." },
            { id = "0d50e744", text = "NA : Blizzard a ajouté via correctif une quête d'étincelle PvE de Liadrin. Si vous avez déjà fait celle en JcJ, vous pouvez ignorer celle-ci car elle ne donne pas une quatrième étincelle. Si vous n'avez complété aucune quête d'étincelle cette semaine, faites celle de Liadrin pour votre troisième étincelle." },
            { id = "ab127896", text = "EU : Après votre réinitialisation, complétez la quête hebdomadaire de Liadrin pour une étincelle." },
            { id = "5fd1b2ad", text = "NE FAITES PAS la quête JcJ pour l'anneau/amulette héroïque. Vous ne pouvez pas terminer la série de quêtes avant l'ouverture des m+" },
            { id = "ed534745", text = "(Optionnel) Nouveau : Farmez 10 000 points d'honneur et achetez à l'hôtel des ventes ou farmez 6 Héliotrope infusé pour la semaine prochaine. Voir la semaine prochaine pour plus d'informations. Note : ceci est très min-max. C'est pour 2 sertissages supplémentaires pour les deux premières semaines." },
            { id = "9626318e", text = "(Optionnel) Terminez la quête de donjon hebdomadaire d'Halduron Aile-Brillante pour 1000 renommée" },
            { id = "8b55f0c7", text = "(Optionnel) Complétez la Soirée de Saltheril hebdomadaire dans les Bois des Chants éternels." },
            { id = "8e107032", text = "(Optionnel) Complétez l'événement d'Abondance hebdomadaire dans Zul'Aman." },
            { id = "d5a12c89", text = "(Optionnel) Complétez l'événement Légendes des Haranir hebdomadaire à Harandar." },
            { id = "514a6926", text = "(Optionnel) Complétez l'Assaut de Stormarion hebdomadaire dans le Videorage." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Optionnel) Tuez chaque créature rare une fois dans chaque zone pour gagner du renom. Il s'agit d'un bonus unique pour chaque rare qui ne se réinitialise pas chaque semaine." },
            { id = "23cb93ed", text = "Débloquez les Profondeurs jusqu'au palier 8 si ce n'est pas encore fait" },
            { id = "d54f7430", text = "Complétez 4x Proie coriace. Les 2 premières donneront de l'équipement Vétéran ; les 4 donneront des Armoiries vétéran dont vous avez besoin pour plafonner." },
            { id = "7b67a15d", text = "(Optionnel) Terminez une Proie difficile aléatoire pour atteindre le plafond de crêtes de Vétéran sur chaque personnage" },
            { id = "a7ee4829", text = "Effectuez un tour mondial des donjons M0 – récompense niv. obj. vétéran – n'améliorez pas encore" },
            { id = "dc01eba9", text = "Si vous avez des pièces d'aventurier restantes, vous pouvez les améliorer librement." },
            { id = "5853685a", text = "Si vous faites un raid mardi 17, lisez les étapes d'artisanat de la semaine prochaine. Sinon, attendez le jour de votre raid ou la veille de votre raid pour faire cela." },
        },
    },

    {
        id = "89ba2d2a",
        title = "Saison 1 Semaine 1 - 17 mars - Semaine Héroïque, 2e fabrication",
        items = {
            { id = "791379ba", text = "Ne dépensez aucune Crête héroïque ou mythique tant qu'on ne vous le dit pas. Consultez le Guide pour savoir pourquoi nous conservons les crêtes." },
            { id = "fab7aef9", text = "Presque tout le monde peut probablement fabriquer votre objet d'étincelle maintenant. Consultez le guide pour savoir quoi et quand fabriquer." },
            { id = "e66847d8", text = "Faites le RDR pour les pièces de set - obtenir un bonus de 4 pièces permettra aux charges de catalyseur de tomber de tout le contenu" },
            { id = "b1a6f7eb", text = "Terminez la quête événementielle hebdomadaire pour le coffre apogée et l'étincelle auprès de Dame Liadrin - Faire l'Arcantina prend 3 minutes" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Terminez la quête de logement hebdomadaire auprès de Vaeli - la récompense est des armoiries plafonnées, peu importe ce que vous choisissez mais le plus grand gain à court terme est de sélectionner les Armoiries de champion" }, -- ⚠️ UNVERIFIED
            { id = "1e1d846c", text = "Note : les deux prochaines choses sont liées - elles servent pour une petite amélioration - deux sertissages supplémentaires pour les deux premières semaines." },
            { id = "50eaf609", text = "(Optionnel) Nouveau : Terminez des matchs JcJ pour obtenir un objet de quête qui récompense 9x Héraldique du gladiateur galactique. Vous les utiliserez pour fabriquer des objets ci-dessous. Ne faites ceci que si vous avez ou allez farmer l'honneur pour les châsses ci-dessous. Note : c'est très min-max, c'est essentiellement pour 2 châsses supplémentaires. L'arène est le plus rapide" }, -- ⚠️ UNVERIFIED
            { id = "a1884373", text = "(Optionnel) Nouveau : Achetez 2 Monture de joaillier galactique auprès du vendeur pour 5000 points d'honneur et 3 Héliotrope infusé chacune. Vous les utiliserez pour sertir les objets fabriqués ci-dessous. Ces objets n'apparaîtront pas chez le vendeur avant cette semaine. Ceci est très min-max, c'est essentiellement pour 2 sertissages supplémentaires." }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Optionnel) Montez le classement JcJ à 1600 pour une charge de catalyseur (c'est la même charge de catalyseur partagée avec la cote M+ de 2 000 de la semaine suivante). Si vous obtenez 2 pièces de set de votre raid cette semaine, cela vous permettrait de catalyser 2 objets et de commencer à obtenir des charges de Catalyseur de vos m+ la semaine prochaine." },
            { id = "ef789b0b", text = "(Optionnel) Complétez un Tour du Monde des donjons M0. Ceux-ci récompenseront un ilvl de champion sur un verrouillage quotidien - NE VOUS ÉPUISEZ PAS ! M+ ouvre la semaine prochaine et remplacera tout cela." },
            { id = "d78939c6", text = "Tâche quotidienne : envisagez de faire un m0 spécifique qui lâche un excellent bijou pour vous chaque jour. L'objet sera de ilvl champion (raid normal) et pourrait être un bon boost pour le raid de la semaine prochaine si vous ne parvenez pas encore à le farmer en Héroïque." },
            { id = "05b7e462", text = "Terminez 4x Proie difficile pour débloquer Proie cauchemardesque." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Terminez 3x Proie cauchemardesque pour obtenir l'équipement de champion sur chaque personnage et pour terminer la quête hebdomadaire pour l'objet d'invocation de boss et 20 armoiries de héros non plafonnées" }, -- ⚠️ UNVERIFIED
            { id = "cc5a28dd", text = "Terminez Nullaeus en difficulté ? pour 30 armoiries de héros non plafonnées. N'oubliez pas de ne pas les dépenser." }, -- ⚠️ UNVERIFIED
            { id = "5c891668", text = "Terminez Nullaeus en difficulté ?? pour 30 Armoiries de héros non plafonnées supplémentaires et 30 Armoiries de mythe non plafonnées. REMARQUE : Bien que le haut fait du Panthéon de la renommée exige que vous fassiez cela en solo, vous pouvez le faire plus facilement en groupe. Avec un compagnon de tréfonds tank + soigneur, ajoutez simplement plus de DPS à votre groupe." }, -- ⚠️ UNVERIFIED
            { id = "f7a876a0", text = "Le vendeur dans la zone des tréfonds a un sac avec 2 clés gratuites qui dépassent le plafond. C'est une fois par confrérie - assurez-vous de l'acheter sur votre personnage principal." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Faites des Tréfonds abondants de palier 8 ou supérieur, utilisez la carte sur un Tréfonds palier 8+ - pendant ce temps, débloquez les Tréfonds palier 11" },
            { id = "2f9c0f4f", text = "Utilisez votre objet d'invocation de boss de la quête hebdomadaire Proie cauchemardesque dans une Exploration de palier 8 pour obtenir une carte puis utilisez-la pour un objet de piste héroïque." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Tuez le boss mondial pour un objet de champion 3/6 ilvl 253" }, -- ⚠️ UNVERIFIED
            { id = "bf5d2e12", text = "Remplissez votre coffre dans chaque emplacement pour plusieurs chances d'obtenir des objets de palier héroïque la semaine prochaine." },
            { id = "4820451a", text = "(Optionnel) Nouveau : Si vous avez farmé l'honneur et obtenu votre Héraldique du gladiateur galactique et vos Montures de joaillier galactique (voir ci-dessus), fabriquez des Brassards et une Ceinture au niveau d'objet 246 et ajoutez-leur un sertissage. Ces objets peuvent recevoir des ornementations - si vous avez fabriqué une arme avec une ornementation, ne mettez qu'une seule ornementation sur ceux-ci. Si vous n'avez pas fabriqué d'arme, mettez 2 ornementations dessus. Ces objets équivalent à 1/6 Champion avec un sertissage et vous pouvez les utiliser pendant quelques semaines en début de saison. Niveau d'objet confirmé à 1/6 champion." }, -- ⚠️ UNVERIFIED
            { id = "2e0ae86e", text = "Si vous n'avez pas farmé d'honneur pour des objets JcJ, alors AVANT LE RAID, fabriquez 1 à 2 pièces de niveau d'objet 246 avec embellissements sur les emplacements faibles, en utilisant 80 à 160 Crêtes de vétéran. CELLES-CI NE NÉCESSITENT PAS D'ÉTINCELLES. Les objets que vous fabriquez sont les objets de qualité bleue à l'établi d'artisanat dans lesquels vous insérez 80 Crêtes de vétéran pour augmenter leur niveau d'objet. Consultez le Guide pour plus d'informations. Vous pouvez également demander de l'aide sur le Discord si nécessaire." },
            { id = "146b7d62", text = "Après avoir fait autant que possible ci-dessus, mais AVANT le raid, dépensez toutes les Crêtes d'Aventurier, de Vétéran et de Champion pour améliorer n'importe quoi. Ne dépensez pas les crêtes Héroïques ou Mythiques." },
            { id = "8824d048", text = "Suivez les crêtes dépensées : 0/100 Héroïque, 0/100 Mythique" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semaine 2 - 24 mars - Semaine mythique, M+ ouvre, prenez des congés les nerds",
        items = {
            { id = "36d21691", text = "Ne dépensez aucun écusson héroïque ou mythique avant qu'on vous le dise. Consultez le guide pour comprendre pourquoi nous conservons les écussons." },
            { id = "e8cef00e", text = "Consultez le guide pour savoir quoi et quand fabriquer." },
            { id = "4056a14a", text = "Si vous n'avez pas le bonus 4 pièces, faites le RDF pour des pièces de panoplie - obtenir un bonus 4 pièces permettra aux charges de catalyseur de tomber de tout le contenu" },
            { id = "e0ecce24", text = "Terminez la quête d'événement mondial hebdomadaire pour un cache apogée et une étincelle auprès de Dame Liadrin" },
            { id = "4c264b7f", text = "Terminez la quête de logement hebdomadaire auprès de Vaeli pour des armoiries de héros rapides" }, -- ⚠️ UNVERIFIED
            { id = "0c60ad29", text = "(Optionnel) Tuez le Boss du monde pour un objet de champion 3/6 niveau d'objet 253" }, -- ⚠️ UNVERIFIED
            { id = "4aa82ede", text = "(Optionnel) Complétez 2x Proie cauchemardesque pour de l'équipement Champion sur chaque personnage" },
            { id = "26d0b610", text = "Faites au moins un Gouffre abondant T11 pour obtenir la quête de la Pierre runique fissurée" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continuez à dépenser tous les Écus d'aventure, de vétéran et de champion pour tout améliorer" },
            { id = "74924a7b", text = "Farmez les +10 pour l'équipement niv. 266 dans chaque emplacement" },
            { id = "ae0baeca", text = "Après les reconquêtes N/H mais AVANT le raid Mythique, Améliorez 11 objets héros 3/6 une fois chacun. Si vous n'avez pas autant d'objets Héroïques, améliorez davantage un anneau ou un bijou pour réduire le risque de gaspiller des crêtes." },
            { id = "cbfb6966", text = "Mythique : si vous avez un objet de piste mythique, passez aux conseils d'amélioration de la semaine suivante." },
            { id = "00cb43a8", text = "Suivez les crêtes dépensées : 220/220 Héroïque, 0/220 Mythique - ne gardez jamais de crêtes Mythiques - peut varier si vous avez fabriqué" },
            { id = "adb492bd", text = "Niveau d'objet final : 4x266, 11x269 - peut varier si vous avez fabriqué" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semaine 3 - 31 mars - Ouverture du Raid final, 3e fabrication",
        items = {
            { id = "1fbc825e", text = "Ouvrez la chambre forte (objet myth 272+) - améliorez après fabrication" },
            { id = "8226c872", text = "Si pas de 4p, faites le RDR pour les pièces de set (consultez le guide pour savoir pourquoi)" },
            { id = "1db5f946", text = "Farmez des +10 pour la chambre forte + crêtes" },
            { id = "c316485a", text = "Héroïque : Améliorez 2 de vos objets 4/6 269 à 6/6 276 pour 80 Crêtes héroïques" },
            { id = "2568bd36", text = "Mythique : Si votre objet de chambre forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 héroïque pour 20 Crêtes héroïques. Améliorez votre objet de piste Mythique 1/6 272 à 6/6 289 pour 80 crêtes Mythiques." },
            { id = "484da4b0", text = "Si vous avez obtenu un 2e objet de piste mythique, passez aux conseils d'amélioration de la semaine prochaine pour celui-ci." },
            { id = "40b01764", text = "Suivez les crêtes dépensées : 320/320 Héroïque, 160/320 Mythique - ne gardez jamais de crêtes Mythiques - peut varier si vous avez fabriqué" },
            { id = "c0774809", text = "Niveau d'objet final : 2x266, 8x269, 2x276h, 2x285(fabriqué), 1x289 - peut varier si vous avez fabriqué" },
        },
    },

    {
        id = "572003ec",
        title = "Semaine 4 - 7 avr.",
        items = {
            { id = "9375e497", text = "Ouvrez la chambre forte (objet myth 272+)" },
            { id = "1db5f946", text = "Farmez des +10 pour la chambre forte + crêtes" },
            { id = "c316485a", text = "Héroïque : Améliorez 2 de vos objets 4/6 269 à 6/6 276 pour 80 Crêtes héroïques" },
            { id = "2568bd36", text = "Mythique : Si votre objet de chambre forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 héroïque pour 20 Crêtes héroïques. Améliorez votre objet de piste Mythique 1/6 272 à 6/6 289 pour 80 crêtes Mythiques." },
            { id = "0ccf5c83", text = "Mythique : améliorez votre butin de raid de piste mythique 275 2/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "bccfe037", text = "Suivez les crêtes dépensées : 420/400 Héroïque, 320/420 Mythique - ne conservez jamais de crêtes Mythiques" },
            { id = "8184483b", text = "Niveau d'objet final : 2x266, 4x269, 4x276h, 2x285(fabriqué), 3x289" },
        },
    },

    {
        id = "71d2703a",
        title = "Semaine 5 - 14 avril, 4e fabrication",
        items = {
            { id = "9375e497", text = "Ouvrez la chambre forte (objet myth 272+)" },
            { id = "1db5f946", text = "Farmez des +10 pour la chambre forte + crêtes" },
            { id = "11e426da", text = "Fabriquez l'objet suivant (voir le doc pour plus d'infos)" },
            { id = "c316485a", text = "Héroïque : Améliorez 2 de vos objets 4/6 269 à 6/6 276 pour 80 Crêtes héroïques" },
            { id = "2568bd36", text = "Mythique : Si votre objet de chambre forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 héroïque pour 20 Crêtes héroïques. Améliorez votre objet de piste Mythique 1/6 272 à 6/6 289 pour 80 crêtes Mythiques." },
            { id = "92a40a6f", text = "Suivez les crêtes dépensées : 520/520 Héroïque, 480/520 Mythique - ne conservez jamais de crêtes Mythiques" },
            { id = "4f04ba4e", text = "Niveau d'objet final : 1x266, 2x269, 6x276h, 2x285(fabriqué), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semaine 6 - 21 avr. - Écus héroïques épuisés",
        items = {
            { id = "9375e497", text = "Ouvrez la chambre forte (objet myth 272+)" },
            { id = "1db5f946", text = "Farmez des +10 pour la chambre forte + crêtes" },
            { id = "c35cf0b6", text = "Héroïque : améliorez votre dernier objet 269 4/6 à 276 6/6 pour 40 Écus héroïques" },
            { id = "2568bd36", text = "Mythique : Si votre objet de chambre forte était 1/6, améliorez d'abord son équivalent héroïque à 6/6 héroïque pour 20 Crêtes héroïques. Améliorez votre objet de piste Mythique 1/6 272 à 6/6 289 pour 80 crêtes Mythiques." },
            { id = "0ccf5c83", text = "Mythique : améliorez votre butin de raid de piste mythique 275 2/6 à 6/6 289 pour 80 Écus mythiques." },
            { id = "4f11d7d8", text = "Suivez les crêtes dépensées : 560/620 Héroïque, 620/620 Mythique - ne conservez jamais de crêtes Mythiques" },
            { id = "37472f94", text = "Niveau d'objet final : 7x276h, 2x285(fabriqué), 1x285, 5x289" },
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
