--[[
French (frFR) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
-- Always loaded so the locale-override feature works regardless of client language.
]]

local LOCALE = "frFR"

local LOCALE_REGISTRY_KEY = "LARIASWEEKLYCHECKLIST_LOCALE_REGISTRY"

local reg = _G[LOCALE_REGISTRY_KEY]
if type(reg) ~= "table" then
    reg = {}
    _G[LOCALE_REGISTRY_KEY] = reg
end
if type(reg.data) ~= "table" then reg.data = {} end

-- ⚠️ TERMES MIDNIGHT NON VÉRIFIÉS – Vérifier en jeu avant de publier :
--   Mode Guerre (Warmode), FLN = Foire de la Lune Noire (DMF),
--   Soirée de Saltheril (Saltheril's Soiree), Bois des Chants éternels (Eversong Woods),
--   Événement d'abondance (Abundance Event), Légendes des Haranir (Legends of the Haranir),
--   Harandar, Assaut de Stormarion (Stormarion Assault), Tempête du néant (Voidstorm),
--   La Singularité (The Singularity), Pierre runique fissurée (Cracked Keystone),
--   clés de coffre (Coffer keys),
--   XP reposée (Rested XP) ⚠️ NOUVEAU NON VÉRIFIÉ,
--   trésors de chaque région (regional treasures – nouvelle mécanique Midnight) ⚠️ NOUVEAU NON VÉRIFIÉ,
--   Gouffre abondant (Bountiful Delve) ⚠️ VÉRIFIER LE TERME EN JEU
local DATASET = {

    {
        id = "e225d803",
        title = "Accès anticipé - 26 fév. au 2 mars - Pay to Win",
        items = {
            { id = "f4b92a82", text = "Connectez-vous sur chaque personnage que vous prévoyez de monter pour qu'ils commencent à accumuler de l'XP reposée." }, -- ⚠️ UNVERIFIED: XP reposée (Rested XP)
            { id = "level_characters_warmode_on_to_90_dmf_opens_sunday_for_10_more_exp", text = "Montez vos personnages en Mode Guerre au niveau 90 – la FLN ouvre dimanche pour +10 % d'XP." },
            { id = "complete_the_weekly_stormarion_assault_in_the_voidstorm_it_is_available_in_early_access", text = "Complétez l'Assaut de Stormarion hebdo dans la Tempête du néant. (Disponible en accès anticipé)" }, -- ⚠️ UNVERIFIED
            { id = "35bc0cfd", text = "(Optionnel) Tuez chaque créature rare une fois par zone pour de la renommée. Chaque rare a un blocage hebdomadaire." },
            { id = "2687fe6c", text = "Cherchez les trésors de chaque région pour de la renommée gratuite. Voir doc pour le guide." }, -- ⚠️ UNVERIFIED: trésors de chaque région (Midnight regional treasures)
            { id = "91e7ee6c", text = "Complétez 4 fois la Traque en difficulté normale pour de la renommée." },
            { id = "complete_the_midnight_lore_hunter_achievement_for_renown_see_doc_for_guide", text = "Complétez le haut fait Chasseur de Lore de Midnight pour de la renommée - voir doc pour le guide" }, -- ⚠️ UNVERIFIED
            { id = "complete_the_highest_peaks_achievement_for_renown_see_doc_for_guide", text = "Complétez le haut fait Les Sommets les Plus Hauts pour de la renommée - voir doc pour le guide" }, -- ⚠️ UNVERIFIED
            { id = "complete_side_quest_chains_for_renown_can_be_done_on_alts_to_level_at_same_time_dmf_buff_does_not_give_renown", text = "Complétez les chaînes de quêtes secondaires pour la renommée. (Peut être fait sur les alts en levant en même temps). Le buff de la FLN ne donne pas de renommée." },
            { id = "note_only_the_singularity_champion_renown_trinket_is_available_in_early_access_the_others_will_become_available_either_monday_after_the_official_launch_or_after_each_region_s_weekly_reset", text = "Note : Seule la babiole champion de La Singularité est disponible en accès anticipé - les autres seront disponibles le lundi après le lancement officiel ou après la réinitialisation hebdomadaire de chaque région." }, -- ⚠️ UNVERIFIED
        },
    },
    {
        id = "50281d6f",
        title = "Pré-saison semaine 1 - 3 mars - M0",
        items = {
                        { id = "c3de7d35", text = "Ne dépensez aucun Écu avant d'en recevoir l'instruction" },
            { id = "raise_the_singularity_renown_to_rank_7_for_1_6_champion_trinket_available_in_early_access_comes_from_quest_from_the_renown_vendor_not_purchased", text = "Montez la renommée de La Singularité au rang 7 pour une babiole champion 1/6 - available in early access - comes from quest from the renown vendor (not purchased)" },
            { id = "raise_hara_ti_renown_to_rank_8_for_1_6_champion_belt_not_available_in_early_access_comes_from_quest_from_the_renown_vendor_not_purchased", text = "Montez la renommée de Hara'ti au rang 8 pour une ceinture champion 1/6 - not available in early access? - comes from quest from the renown vendor (not purchased)" },
            { id = "raise_silvermoon_renown_to_rank_9_for_1_6_champion_helm_not_available_in_early_access_comes_from_quest_from_the_renown_vendor_not_purchased", text = "Montez la renommée de Lune-d'Argent au rang 9 pour un casque champion 1/6 - NOT available in early access - comes from quest from the renown vendor (not purchased)" },
            { id = "raise_amani_tribe_renown_to_rank_9_for_1_6_champion_necklace_not_available_in_early_access_comes_from_quest_from_the_renown_vendor_not_purchased", text = "Montez la renommée de la tribu Amani au rang 9 pour un collier champion 1/6 - not available in early access? - comes from quest from the renown vendor (not purchased)" },
            { id = "e326ed96", text = "Complétez la Soirée de Saltheril hebdo dans les Bois des Chants éternels." },
            { id = "da2fa0ef", text = "Complétez l'Événement d'abondance hebdo dans Zul'Aman." },
            { id = "dbc8384b", text = "Complétez l'événement Légendes des Haranir hebdo à Harandar." },
            { id = "9ad64245", text = "Complétez l'Assaut de Stormarion hebdo dans la Tempête du néant." },
            { id = "35bc0cfd", text = "(Optionnel) Tuez chaque rare une fois par zone pour de la renommée. Blocage hebdomadaire par rare." },
            { id = "d47e5b93", text = "Si pas encore fait, cherchez les trésors de chaque région pour de la renommée gratuite. Voir doc pour le guide." }, -- ⚠️ UNVERIFIED: trésors de chaque région (Midnight regional treasures)
            { id = "346bdd7e", text = "Débloquez les Gouffres jusqu'au niveau 8 (11 si disponible)" },
            { id = "91b50b0a", text = "(Optionnel) Complétez 4 fois la Traque normale pour équipement aventure et renommée." },
            { id = "e0029ef7", text = "Complétez 4 fois la Traque difficile pour équipement vétéran et renommée." },
            { id = "a7ee4829", text = "Effectuez un tour mondial des donjons M0 – récompense niv. obj. vétéran – n'améliorez pas encore" },
        },
    },
    {
        id = "ff1f5a67",
        title = "Pré-saison semaine 2 - 10 mars - M0",
        items = {
            { id = "c3de7d35", text = "Ne dépensez aucun Écu avant d'en recevoir l'instruction" },
            { id = "75c5fe6e", text = "Si pas terminé, continuez à augmenter la renommée pour les pièces champion" },
            { id = "e326ed96", text = "Complétez la Soirée de Saltheril hebdo dans les Bois des Chants éternels." },
            { id = "da2fa0ef", text = "Complétez l'Événement d'abondance hebdo dans Zul'Aman." },
            { id = "dbc8384b", text = "Complétez l'événement Légendes des Haranir hebdo à Harandar." },
            { id = "9ad64245", text = "Complétez l'Assaut de Stormarion hebdo dans la Tempête du néant." },
            { id = "35bc0cfd", text = "(Optionnel) Tuez chaque rare une fois par zone pour de la renommée. Blocage hebdomadaire par rare." },
            { id = "072e6955", text = "Débloquez les Gouffres jusqu'au niveau 8 (11 si disponible), si pas encore fait" },
            { id = "91b50b0a", text = "(Optionnel) Complétez 4 fois la Traque normale pour équipement aventure et renommée." },
            { id = "e0029ef7", text = "Complétez 4 fois la Traque difficile pour équipement vétéran et renommée." },
            { id = "a7ee4829", text = "Effectuez un tour mondial des donjons M0 – récompense niv. obj. vétéran – n'améliorez pas encore" },
            { id = "c33e5c84", text = "Si vous raidez le mardi 17, fabriquez. Consultez le document pour plus d'informations." },
        },
    },
    {
        id = "33a3fcba",
        title = "Saison 1 semaine 1 - 17 mars - Semaine héroïque",
        items = {
            { id = "c3de7d35", text = "Ne dépensez aucun Écu avant d'en recevoir l'instruction" },
            { id = "5b379666", text = "Faites le LFR pour les pièces de palier (consultez le guide pour savoir pourquoi)" },
            { id = "optional_complete_a_world_tour_of_m0_dungeons_rewards_champ_ilvl", text = "(Optionnel?) Effectuez un tour mondial des donjons M0 – récompense niv. obj. champion" }, -- ⚠️ UNVERIFIED
            { id = "123747cb", text = "Complétez 4 fois la Traque de cauchemar pour équipement champion et renommée." },
            { id = "dc0e2686", text = "Tuez le boss mondial pour un objet champion 2/6 niv. 250" },
            { id = "3e0dfde7", text = "Si disponible, complétez la quête JcJ pour un collier/anneau héroïque garanti" },
            { id = "fdfd56bc", text = "Faites des Gouffres abondants T8 avec des clés de coffre, utilisez la carte sur les Gouffres T8+" },
            { id = "eff76e73", text = "Avant le raid : fabriquez 2 pièces niv. 246, 2 embellissements sur les emplacements faibles, utilisez 160 Écus de vétéran" },
            { id = "2af0bfb5", text = "Avant le raid : dépensez tous les Écus d'aventure, de vétéran et de champion pour tout améliorer" },
            { id = "5768e0fe", text = "Suivi des Écus : 0/100 Héroïque, 0/100 Mythique" },
        },
    },
    {
        id = "d2de9d43",
        title = "Semaine 2 - 24 mars - Semaine mythique, M+ ouvre, prenez des congés les nerds",
        items = {
            { id = "c3de7d35", text = "Ne dépensez aucun Écu avant d'en recevoir l'instruction" },
            { id = "7e42a12d", text = "Note arme fabriquée 1M, consultez le guide, vérifiez le chemin de fabrication (TRÈS IMPORTANT !)" },
            { id = "5b379666", text = "Faites le LFR pour les pièces de palier (consultez le guide pour savoir pourquoi)" },
            { id = "16cf341e", text = "(Optionnel) Tuez le boss mondial pour un objet champion 2/6 niv. 250" },
            { id = "3ccf0a1f", text = "(Optionnel) Complétez 4 fois la Traque de cauchemar pour équipement champion et renommée." },
            { id = "26d0b610", text = "Faites au moins un Gouffre abondant T11 pour obtenir la quête de la Pierre runique fissurée" }, -- ⚠️ UNVERIFIED: Gouffre abondant (Bountiful Delve)
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
            { id = "fb8255a7", text = "Fabriquez des objets – consultez le guide pour 2 choix de parcours" },
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

