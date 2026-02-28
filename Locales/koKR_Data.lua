--[[
Korean Korea (koKR) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
]]
if GetLocale() ~= "koKR" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "koKR"

local LOCALE_REGISTRY_KEY = "LARIASWEEKLYCHECKLIST_LOCALE_REGISTRY"

local reg = _G[LOCALE_REGISTRY_KEY]
if type(reg) ~= "table" then
    reg = {}
    _G[LOCALE_REGISTRY_KEY] = reg
end
if type(reg.data) ~= "table" then reg.data = {} end

-- ⚠️ 미엸신 미검증 용어 – 배포 전 게임 내 확인 필요:
--   전쟁 모드 (Warmode), 다크문 = 다크문 페어 (DMF),
--   Saltheril's Soiree, Eversong Woods (한국어 이름 미검증),
--   풍요 이벤트 (Abundance Event), 하라니르의 전설 (Legends of the Haranir),
--   하란다르 (Harandar), Stormarion Assault (한국어 이름 미검증), 공허폭풍 (Voidstorm),
--   특이점 (The Singularity), 금이 간 컋리돌 (구독 텀), Coffer keys,
--   휴식 경험치 (Rested XP) ⚠️ 새롭게 추가됨 미검증,
--   각 지역의 보물 (Regional Treasures – 두점기 신규 메트) ⚠️ 새롭게 추가됨 미검증
local DATASET = {

    {
        id = "early_access_feb_26_through_mar_2_pay_to_win",
        title = "얼리 억세스 - 2월 26일부터 3월 2일 까지 - 페이투윈 ㄷㄷ",
        items = {
            { id = "log_on_to_each_character_you_plan_on_leveling_so_they_start_accumulating_rested_xp", text = "레벨업할 각 캐릭터에 로그인하여 휴식 경험치 누적을 시작하게 하세요." }, -- ⚠️ UNVERIFIED: 휴식 경험치 (Rested XP)
            { id = "level_characters_warmode_on_to_90_dmf_opens_sunday_for_10_more_exp", text = "전쟁 모드를 켜고 90까지 레벨업 - 일요일부터 다크문으로 10% 경험치 버프. 더 이상 영예를 주지 않음" },
            { id = "if_available_complete_the_weekly_saltheril_s_soiree_in_eversong_woods_with_the_dmf_buff", text = "가능하다면, Eversong Woods에서 주간 Saltheril's Soiree 완료" },
            { id = "if_available_complete_the_weekly_abundance_event_in_zul_aman_with_the_dmf_buff", text = "가능하다면, 줄아만에서 주간 풍요 이벤트 완료" },
            { id = "if_available_complete_the_weekly_legends_of_the_haranir_event_in_harandar_with_the_dmf_buff", text = "가능하다면, 하란다르에서 주간 하라니르의 전설 이벤트 완료" },
            { id = "if_available_complete_the_weekly_stormarion_assault_in_the_voidstorm_with_the_dmf_buff", text = "가능하다면, 공허폭풍에서 주간 Stormarion Assault 완료" },
            { id = "optional_with_dmf_buff_kill_each_rare_once_in_each_zone_for_renown_these_are_a_weekly_lockout_for_each_rare", text = "(선택) 영예를 위해 모든 희귀몹을 한번씩 잡기. 희귀몹마다 주1회만 평판 지급" },
            { id = "with_dmf_buff_hunt_down_each_region_s_treasures_for_free_renown_see_doc_for_guide", text = "각 지역의 보물을 찾아 무료 영예 획득. 가이드는 문서 참조." }, -- ⚠️ UNVERIFIED: 각 지역의 보물 (Midnight regional treasures)
            { id = "complete_4x_prey_on_normal_difficulty_for_veteran_gear", text = "노련가 장비를 위해 4x 사냥감을 일반 난이도로 완료" },
            { id = "once_dmf_opens_complete_side_quest_chains_for_renown_can_be_done_on_alts_to_level_at_same_time", text = "영예 획득을 위해 사이드 퀘스트 진행 (부캐들 레벨업 하면서 진행 가능). 신규: 다크문 페어가 더 이상 영예 버프를 제공하지 않습니다!" },
        },
    },
    {
        id = "pre_season_week_1_march_3_m0_s",
        title = "프리시즌 1주차 - 3월 3일 - 주로 깡신런",
        items = {
                        { id = "do_not_spend_any_crests_until_told_to_do_so", text = "언급하기 전까지는 절대 문장을 소모하지 말 것" },
{ id = "raise_the_singularity_renown_to_rank_7_for_1_6_champion_trinket", text = "The Singularity 영예 7까지 올려서 챔피언 1/6 장신구 획득" },
            { id = "raise_hara_ti_renown_to_rank_8_for_1_6_champion_belt", text = "Hara'ti 영예 8까지 올려서 챔피언 1/6 허리띠 획득" },
            { id = "raise_silvermoon_renown_to_rank_9_for_1_6_champion_helm", text = "실버문 영예 9까지 올려서 챔피언 1/6 머리 투구 획득" },
            { id = "raise_amani_tribe_renown_to_rank_9_for_1_6_champion_necklace", text = "아마니 부족 영예 9까지 올려서 챔피언 1/6 목걸이 획득" },
            { id = "complete_the_weekly_saltheril_s_soiree_in_eversong_woods_with_the_dmf_buff", text = "Eversong Woods에서 주간 Saltheril's Soiree 완료" },
            { id = "complete_the_weekly_abundance_event_in_zul_aman_with_the_dmf_buff", text = "줄아만에서 주간 풍요 이벤트 완료" },
            { id = "complete_the_weekly_legends_of_the_haranir_event_in_harandar_with_the_dmf_buff", text = "하란다르에서 주간 하라니르의 전설 이벤트 완료" },
            { id = "complete_the_weekly_stormarion_assault_in_the_voidstorm_with_the_dmf_buff", text = "공허폭풍에서 주간 Stormarion Assault 완료" },
            { id = "optional_kill_each_rare_once_in_each_zone_for_renown_these_are_a_weekly_lockout_for_each_rare", text = "(선택) 영예를 위해 모든 희귀몹을 한번씩 잡기. 희귀몹마다 주1회만 평판 지급" },
            { id = "if_not_done_with_dmf_buff_hunt_down_each_region_s_treasures_for_free_renown_see_doc_for_guide", text = "아직 안 했다면, 각 지역의 보물을 찾아 무료 영예 획득. 가이드는 문서 참조." }, -- ⚠️ UNVERIFIED: 각 지역의 보물 (Midnight regional treasures)
            { id = "unlock_delves_through_tier_8_11_if_available", text = "구렁 8단까지 뚫어 놓기 (가능하면 11단 까지)" },
            { id = "optional_complete_4x_normal_prey_for_adventurer_gear_and_renown", text = "(선택) 모험가 장비 및 영예를 위해 4x 사냥감을 일반 난이도로 완료" },
            { id = "complete_4x_hard_prey_for_veteran_gear_and_renown", text = "노련가 장비 및 영예를 위해 4x 사냥감을 어려움 난이도로 완료" },
            { id = "complete_a_world_tour_of_m0_dungeons_rewards_vet_ilvl_do_not_upgrade_yet", text = "깡신런 완료 - 보상 노련가 240 장비 - 아직 업그레이드 안 함" },
        },
    },
    {
        id = "pre_season_week_2_march_10_m0_s",
        title = "프리시즌 2주차 - 3월 12일 - 여전히 깡신런",
        items = {
            { id = "do_not_spend_any_crests_until_told_to_do_so", text = "언급하기 전까지는 절대 문장을 소모하지 말 것" },
            { id = "if_not_completed_continue_to_raise_renown_for_champion_pieces", text = "아직 영예로 챔피언 템 못샀으면, 영예 작업 수행" },
            { id = "complete_the_weekly_saltheril_s_soiree_in_eversong_woods", text = "Eversong Woods에서 주간 Saltheril's Soiree 완료" },
            { id = "complete_the_weekly_abundance_event_in_zul_aman", text = "줄아만에서 주간 Abundance 이벤트 완료" },
            { id = "complete_the_weekly_legends_of_the_haranir_event_in_harandar", text = "하란다르에서 주간 하라니르의 전설 이벤트 완료" },
            { id = "complete_the_weekly_stormarion_assault_in_the_voidstorm", text = "공허폭풍에서 주간 Stormarion Assault 완료" },
            { id = "optional_kill_each_rare_once_in_each_zone_for_renown_these_are_a_weekly_lockout_for_each_rare", text = "(선택) 영예를 위해 모든 희귀몹을 한번씩 잡기. 희귀몹마다 주1회만 평판 지급" },
            { id = "unlock_delves_through_tier_8_11_if_available_if_not_done_yet", text = "아직 안했으면, 구렁 8단까지 뚫어 놓기 (가능하면 11단 까지)" },
            { id = "optional_complete_4x_normal_prey_for_adventurer_gear_and_renown", text = "(선택) 모험가 장비 및 영예를 위해 4x 사냥감을 일반 난이도로 완료" },
            { id = "complete_4x_hard_prey_for_veteran_gear_and_renown", text = "노련가 장비 및 영예를 위해 4x 사냥감을 어려움 난이도로 완료" },
            { id = "complete_a_world_tour_of_m0_dungeons_rewards_vet_ilvl_do_not_upgrade_yet", text = "깡신런 완료 - 보상 노련가 240 장비 - 아직 업그레이드 안 함" },
            { id = "if_you_raid_tuesday_the_17th_craft_see_doc_for_more_info", text = "19일 리셋날 레이드가 있다면, 장비 제작. 자세한 내용은 Larias문서 참조" },
        },
    },
    {
        id = "season_1_week_1_mar_17_heroic_week",
        title = "1시즌 1주차 - 3월 19일 - 영웅 레이드 오픈",
        items = {
            { id = "do_not_spend_any_crests_until_told_to_do_so", text = "언급하기 전까지는 절대 문장을 소모하지 말 것" },
            { id = "do_lfr_for_tier_pieces_check_guide_for_why", text = "티어 획득을 위해 공찾 돌기 (이유는 문서 참조)" },
            { id = "complete_a_world_tour_of_m0_dungeons_rewards_champ_ilvl", text = "깡신런 완료 - 보상 챔피언 246 장비" },
            { id = "complete_4x_nightmare_prey_for_champion_gear_and_renown", text = "챔피언 장비 및 영예를 위해 4x 사냥감을 악몽 난이도로 완료" },
            { id = "kill_world_boss_for_champ_2_6_250_ilvl_item", text = "필드보스 킬 - 챔피언 250 장비" },
            { id = "if_available_complete_pvp_quest_for_guaranteed_hero_neck_ring", text = "가능하다면, PVP퀘스트 완료해서 영웅 목걸이/반지 확정 획득." },
            { id = "do_t8_bountiful_delves_with_coffer_keys_use_map_on_t8_delve", text = "열쇠 써서 8단 구렁 돌기. 은혜는 8단 이상에서만 사용." },
            { id = "before_raid_craft_2x_246_ilvl_pieces_2x_embellishments_on_weak_slots_use_160_vet_crests", text = "레이드 전에, 망토/손목 등 약한 부위 두 곳에 노련가 문장으로 246 장식 제작" },
            { id = "before_raid_spend_all_adventurer_veteran_and_champion_crests_upgrading_anything", text = "레이드 전에 모험가,노련가,챔피언 문장 모두 소모" },
            { id = "track_crests_0_100_heroic_0_100_mythic", text = "지금까지 문장 사용량: 0/100 영웅, 0/100 신화" },
        },
    },
    {
        id = "week_2_mar_24_mythic_week_m_opens_take_off_work_giganerds",
        title = "2주차 - 3월 26일 - 신화 레이드, 쐐기 던전 오픈. 연차 몰아 쓰는 주간",
        items = {
            { id = "do_not_spend_any_crests_until_told_to_do_so", text = "언급하기 전까지는 절대 문장을 소모하지 말 것" },
            { id = "1h_crafted_note_check_guide_check_craft_path_info_very_important", text = "(매우 중요) 한손 무기 사용자는 Larias문서 참조해서 제작 루트 따라가기." },
            { id = "do_lfr_for_tier_pieces_check_guide_for_why", text = "티어 획득을 위해 공찾 돌기 (이유는 문서 참조)" },
            { id = "optional_kill_world_boss_for_champ_2_6_250_ilvl_item", text = "(선택) 필드보스 킬 - 챔피언 250 장비" },
            { id = "optional_complete_4x_nightmare_prey_for_champion_gear_and_renown", text = "(선택) 챔피언 장비 및 영예를 위해 4x 사냥감을 악몽 난이도로 완료" },
            { id = "do_at_least_one_t11_bountiful_delve_to_get_cracked_keystone_quest", text = "구렁 11단 완료하여 [금이 간 쐐기돌] 퀘스트 수령" },
            { id = "continue_to_spend_all_adventurer_veteran_and_champion_crests_upgrading_anything", text = "계속해서 모험가,노련가,챔피언 문장 모두 소모" },
            { id = "farm_10s_for_266_gear_in_every_slot", text = "쐐기 10단 돌아서 모든 부위 266 착용" },
            { id = "before_mythic_raid_upgrade_11x_3_6_hero_items_once_each", text = "신화 레이드 전, 11개 3/6 영웅을 4/6으로 업그레이드" },
            { id = "mythic_if_you_re_lucky_and_got_a_myth_track_item_skip_to_next_week_s_upgrade_advice_for_it", text = "신화: 신화 템을 먹었다면, 다음주의 업그레이드 가이드를 그 템에 적용" },
            { id = "track_crests_220_220_heroic_0_220_mythic_never_hold_mythic_crests", text = "지금까지 문장 사용량: 220/220 영웅, 0/220 신화 - 신화 문장 쟁여두지 말 것" },
            { id = "ending_item_level_4x266_11x269", text = "2주차 마무리 템렙: 4x266, 11x269" },
        },
    },
    {
        id = "week_3_mar_31_final_raid_opens",
        title = "3주차 - 4월 2일 - 마지막 레이드 오픈",
        items = {
            { id = "open_vault_272_myth_item_upgrade_after_crafting", text = "금고 열기 (272+ 신화템) - 제작 후 업그레이드" },
            { id = "craft_items_see_guide_for_2_paths_to_pick", text = "아이템 제작 - Larias문서의 2가지 루트 확인하여 따라가기" },
            { id = "if_no_4p_do_lfr_for_tier_pieces_check_guide_for_why", text = "4셋 확정 안 됐으면, 티어 획득을 위해 공찾 돌기 (이유는 문서 참조)" },
            { id = "farm_10s_for_vault_crests", text = "쐐기 10단 8회 이상 돌아서 문장 및 금고 3상자 확보" },
            { id = "heroic_upgrade_2_of_your_4_6_269_items_to_6_6_276_for_80_heroic_crests", text = "영웅: 문장 80개를 써서 4/6 269템 2개를 6/6 276으로 업그레이드" },
            { id = "mythic_if_your_vault_item_was_1_6_upgrade_its_heroic_counterpart_first_to_6_6_heroic_for_20_heroic_crests_upgrade_your_1_6_272_myth_track_item_to_6_6_289_for_80_myth_crests", text = "신화: 금고에서 신화 1/6을 먹었다면, 일단 해당 부위의 영웅템을 영웅 문장 20개로 6/6까지 업그레이드. 그러면 1/6 신화템에 신화 문장 80개만 소모해도 6/6까지 업그레이드 가능" },
            { id = "if_you_got_a_2nd_myth_track_item_skip_to_next_week_s_upgrade_advice_for_it", text = "신화템이 더 있다면, 다음주의 업그레이드 가이드를 그 템에 적용" },
            { id = "track_crests_320_320_heroic_160_320_mythic_never_hold_mythic_crests", text = "지금까지 문장 사용량: 320/320 영웅, 160/320 신화 - 신화 문장 쟁여두지 말 것" },
            { id = "ending_item_level_3x266_8x269_2x276h_1x285_crafted_1x289", text = "3주차 마무리 템렙: 3x266, 8x269, 2x276영웅, 1x285(제작), 1x289" },
        },
    },
    {
        id = "week_4_apr_7",
        title = "4주차 - 4월 9일",
        items = {
            { id = "open_vault_272_myth_item", text = "금고 열기 (272+ 신화템)" },
            { id = "farm_10s_for_vault_crests", text = "쐐기 10단 8회 이상 돌아서 문장 및 금고 3상자 확보" },
            { id = "heroic_upgrade_2_of_your_4_6_269_items_to_6_6_276_for_80_heroic_crests", text = "영웅: 문장 80개를 써서 4/6 269템 2개를 6/6 276으로 업그레이드" },
            { id = "mythic_if_your_vault_item_was_1_6_upgrade_its_heroic_counterpart_first_to_6_6_heroic_for_20_heroic_crests_upgrade_your_1_6_272_myth_track_item_to_6_6_289_for_80_myth_crests", text = "신화: 금고에서 신화 1/6을 먹었다면, 일단 해당 부위의 영웅템을 영웅 문장 20개로 6/6까지 업그레이드. 그러면 1/6 신화템에 신화 문장 80개만 소모해도 6/6까지 업그레이드 가능" },
            { id = "mythic_upgrade_your_raid_drop_from_2_6_275_myth_track_to_6_6_289_for_80_myth_crests", text = "신화: 레이드에서 먹은 2/6 275신화 템을 신화 문장 80개 써서 6/6 289로 업그레이드" },
            { id = "track_crests_420_400_heroic_320_420_mythic_never_hold_mythic_crests", text = "지금까지 문장 사용량: 420/420 영웅, 320/420 신화 - 신화 문장 쟁여두지 말 것" },
            { id = "ending_item_level_2x266_5x269_4x276h_1x285_crafted_3x289", text = "4주차 마무리 템렙: 2x266, 5x269, 영웅4x276h, 1x285(제작), 3x289" },
        },
    },
    {
        id = "week_5_apr_14",
        title = "5주차 - 4월 16일",
        items = {
            { id = "open_vault_272_myth_item", text = "금고 열기 (272+ 신화템)" },
            { id = "farm_10s_for_vault_crests", text = "쐐기 10단 8회 이상 돌아서 문장 및 금고 3상자 확보" },
            { id = "craft_next_item_see_doc_for_more_info", text = "다음 제작템 제작 (Larias문서 참조)" },
            { id = "heroic_upgrade_2_of_your_4_6_269_items_to_6_6_276_for_80_heroic_crests", text = "영웅: 문장 80개를 써서 4/6 269템 2개를 6/6 276으로 업그레이드" },
            { id = "mythic_if_your_vault_item_was_1_6_upgrade_its_heroic_counterpart_first_to_6_6_heroic_for_20_heroic_crests_upgrade_your_1_6_272_myth_track_item_to_6_6_289_for_80_myth_crests", text = "신화: 금고에서 신화 1/6을 먹었다면, 일단 해당 부위의 영웅템을 영웅 문장 20개로 6/6까지 업그레이드. 그러면 1/6 신화템에 신화 문장 80개만 소모해도 6/6까지 업그레이드 가능" },
            { id = "track_crests_520_520_heroic_480_520_mythic_never_hold_mythic_crests", text = "지금까지 문장 사용량: 520/520 영웅, 480/520 신화 - 신화 문장 쟁여두지 말 것" },
            { id = "ending_item_level_1x266_2x269_6x276h_2x285_crafted_4x289", text = "5주차 마무리 템렙:  1x266, 2x269, 6x276영웅, 2x285(제작), 4x289" },
        },
    },
    {
        id = "week_6_apr_21_done_with_heroic_crests",
        title = "6주차 - 4월 23일 - 영웅 문장 졸업",
        items = {
            { id = "open_vault_272_myth_item", text = "금고 열기 (272+ 신화템)" },
            { id = "farm_10s_for_vault_crests", text = "쐐기 10단 8회 이상 돌아서 문장 및 금고 3상자 확보" },
            { id = "heroic_upgrade_your_last_4_6_269_item_to_6_6_276_for_40_heroic_crests", text = "영웅: 문장 40개를 써서 하나 남은 4/6 269템을 6/6 276으로 업그레이드" },
            { id = "mythic_if_your_vault_item_was_1_6_upgrade_its_heroic_counterpart_first_to_6_6_heroic_for_20_heroic_crests_upgrade_your_1_6_272_myth_track_item_to_6_6_289_for_80_myth_crests", text = "신화: 금고에서 신화 1/6을 먹었다면, 일단 해당 부위의 영웅템을 영웅 문장 20개로 6/6까지 업그레이드. 그러면 1/6 신화템에 신화 문장 80개만 소모해도 6/6까지 업그레이드 가능" },
            { id = "mythic_upgrade_your_raid_drop_from_2_6_275_myth_track_to_6_6_289_for_80_myth_crests", text = "신화: 레이드에서 먹은 2/6 275신화 템을 신화 문장 80개 써서 6/6 289로 업그레이드" },
            { id = "track_crests_560_620_heroic_620_620_mythic_never_hold_mythic_crests", text = "지금까지 문장 사용량: 560/620 영웅, 620/620 신화 - 신화 문장 쟁여두지 말 것" },
            { id = "ending_item_level_7x276h_2x285_crafted_1x_285_5x289", text = "6주차 마무리 템렙:  7x276영웅, 2x285(제작), 1x 285, 5x289" },
        },
    },
    {
        id = "week_7_apr_28",
        title = "7주차 - 4월 30일+",
        items = {
            { id = "do_not_craft_if_you_can_get_vault_items_higher_than_1_6", text = "금고에서 1/6보다 높은 아이템을 먹을 수 있는 부위는 절대 제작하지 말 것" },
            { id = "upgrade_mythic_items_as_you_get_them_preferring_to_jump_them_to_289_for_the_4_jump", text = "신화템 먹을 때 마다 업그레이드 하되, 285-289구간의 템렙+4 구간을 우선할 것" },
            { id = "plan_for_possible_1h_crafted_oh_swap", text = "무기 장식 효과를 유지하면서 주 무기를 신화 6/6으로 하고 싶다면, 향후 보조무기 제작을 계획할 것" },
            { id = "enjoy_blizzard_s_much_better_upgrade_system", text = "블리자드의 더 나아진 업그레이드 시스템을 즐기세요!" },
        },
    },
}

reg.data[LOCALE] = DATASET

