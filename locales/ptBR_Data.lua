--[[
Portuguese (Brazil) (ptBR) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
]]
if GetLocale() ~= "ptBR" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "ptBR"

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
        title = "Temporada 1 Semana 1 - 17 de Mar - Semana Heroica, 2ª criação",
        items = {
            { id = "791379ba", text = "Não gaste nenhuma Insígnia Heroica ou Mítica até ser instruído a fazê-lo. Consulte o Guia para entender por que guardamos insígnias." },
            { id = "fab7aef9", text = "Quase todo mundo provavelmente pode fabricar seu item de centelha agora. Verifique o Guia para o que e quando fabricar." },
            { id = "e66847d8", text = "Faça LFR para peças de conjunto - obter o bônus de 4 peças permitirá que cargas do catalisador caiam de todo o conteúdo" },
            { id = "b1a6f7eb", text = "Complete a missão semanal de evento mundial para baú superior e centelha da Lady Liadrin - Fazer a Arcantina leva 3 minutos" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Complete a missão semanal de moradia da Vaeli - a recompensa é emblemas limitados, não importa o que você escolher, mas o maior aumento a curto prazo é selecionar Emblemas do Campeão" }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Opcional) Aumente a classificação PVP para 1600 para carga do catalisador (esta é a mesma carga do catalisador compartilhada com 2.000 de classificação M+ da próxima semana). Se você conseguir 2 peças de conjunto do seu raide esta semana, isso permitirá catalizar 2 itens e começar a receber quedas de carga do Catalisador do seu m+ na próxima semana." },
            { id = "ef789b0b", text = "(Opcional) Complete um Tour Mundial de masmorras M0. Estas darão recompensas de nível de item campeão com bloqueio diário - NÃO SE ESGOTE! M+ abre na próxima semana e substituirá tudo isso." },
            { id = "d78939c6", text = "Tarefa Diária: considere fazer uma m0 específica que drope um ótimo amuleto para você todos os dias. O item será nível de item campeão (raide normal) e pode ser um bom impulso para a raide da próxima semana se você ainda não conseguir farmá-lo no Heroico." },
            { id = "05b7e462", text = "Complete 4x Presa Difícil para desbloquear Presa Pesadelo." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Complete 3x Presa do Pesadelo para equipamento de Campeão em cada personagem e para completar a missão semanal para item de invocação de chefe e 20 brasões de herói sem limite" }, -- ⚠️ UNVERIFIED
            { id = "cc5a28dd", text = "Complete Nullaeus na dificuldade ? para 30 brasões de Herói sem limite. Lembre-se de não gastar estes." }, -- ⚠️ UNVERIFIED
            { id = "bad52b04", text = "Complete Nullaeus na dificuldade ?? para 30 brasões de Herói sem limite ADICIONAIS e 30 brasões de Mito sem limite. NOTA: Embora a conquista Hall da Fama exija que você faça isso solo, você pode fazer isso facilmente em grupo. Com um companheiro de delve tanque + curador, apenas adicione mais DPS ao seu grupo." }, -- ⚠️ UNVERIFIED
            { id = "f7a876a0", text = "O vendedor na área de delve tem uma bolsa com 2 chaves grátis que ultrapassam o limite. Isso é uma vez por grupo de guerra - certifique-se de comprar no seu personagem principal." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Faça delves abundantes nível 8 ou superior, use mapa em delve nível 8+ - enquanto faz isso, desbloqueie delves nível 11" },
            { id = "2f9c0f4f", text = "Use seu item de invocação de chefe da missão semanal Presa Pesadelo em uma Delve nível 8 para obter um mapa e então use-o para um item de trilha Herói." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Mate o Chefe Mundial para item 3/6 campeão nível de item 253" },
            { id = "bf5d2e12", text = "Preencha seu cofre em todos os espaços para múltiplas chances de itens de nível heroico na próxima semana." },
            { id = "0755c002", text = "ANTES DA RAIDE, faça 1x-2x peças de nível de item 246 com adornos em espaços fracos, usando 80-160 Brasões de Veterano. ESTES NÃO REQUEREM FAGULHAS. Os itens que você está fazendo são os itens de qualidade azul na bancada de fabricação nos quais você insere 80x brasões de Veterano para aumentar seu nível de item. Verifique o Guia para mais informações. Também pode pedir ajuda no Discord se precisar." },
            { id = "146b7d62", text = "Depois de fazer o máximo possível acima, mas ANTES da raide, gaste todas as Insígnias de Aventureiro, Veterano e Campeão melhorando qualquer coisa. Não gaste insígnias Heroicas ou Míticas." },
            { id = "c5055967", text = "Rastrear brasões gastos: 0/180 Heroico, 0/130 Mítico" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de março - Semana mítica, M+ abre, tirem férias nerds",
        items = {
            { id = "e8cef00e", text = "Verifique o Guia para o que e quando fabricar." },
            { id = "4056a14a", text = "Se você não tem conjunto de 4 peças, faça RFR para peças de conjunto - obter um bônus de 4 peças permitirá que cargas de catalisador sejam obtidas de todo conteúdo" },
            { id = "83fd4310", text = "Complete a missão semanal do evento mundial para fagulha da Lady Liadrin" },
            { id = "4c264b7f", text = "Complete a missão semanal de moradia da Vaeli para emblemas de herói rápidos" }, -- ⚠️ UNVERIFIED
            { id = "260911ab", text = "(Recompensa Desconhecida em semanas repetidas) - Complete ?? Nulleaus para recompensas desconhecidas" }, -- ⚠️ UNVERIFIED
            { id = "547b880e", text = "Complete a missão semanal das 3x presas do pesadelo para obter um item que invoca um chefe de delve para conseguir um mapa e 20 brasões de Herói sem limite." }, -- ⚠️ UNVERIFIED
            { id = "73ad86e4", text = "Faça pelo menos um delve abundante t11 para obter a Missão da Pedra-chave Rachada para 20 brasões de Herói e Mito sem limite. Enquanto estiver fazendo isso, use seu item de chefe da missão das 3x Presas do pesadelo para obter um mapa e use-o neste delve" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continue gastando todos os Brasões aventureiros, veteranários e campeões melhorando qualquer coisa" },
            { id = "74924a7b", text = "Farme +10s para equipamento nível 266 em todos os slots" },
            { id = "591e911b", text = "Antes de entrar no Mítico, melhore os seguintes itens trilha de herói de 3/6 para 6/6 - peito, calças, elmo, 1 anel, 1 berloque. Isso deve consumir 300/320 brasões de herói. Guarde os últimos 20 brasões de Herói caso você consiga um item mito 1/6 que precise melhorar para 2/6 primeiro. Isso lhe dá o maior aumento de poder possível entrando na sua primeira semana de mítico enquanto ainda lhe dá uma oportunidade de economizar brasões em outros espaços. Esta suposição é baseada em fabricar uma 2m + 1 outro item adornado na próxima semana. Caçadores ou outros que não fabricaram armas podem considerar melhorar sua arma em vez de calças ou elmo para ganhar esse aumento de poder depois de matar o primeiro chefe no mítico se as armas não droparem." },
            { id = "cbfb6966", text = "Mítico: se tiver sorte e obteve um item da trilha mítica, pule para o conselho de melhoria da próxima semana." },
            { id = "92eaba33", text = "Rastrear brasões gastos: 320/320 Heroico, 0/250 Mítico - nunca segure brasões Míticos - pode variar se você fabricou" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semana 3 - 31 de Mar - Raide Final Abre, 3ª criação",
        items = {
            { id = "1fbc825e", text = "Abra o cofre (item mítico 272+) - melhore após criar" },
            { id = "83fd4310", text = "Complete a missão semanal do evento mundial para fagulha da Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa Desconhecida em semanas repetidas) - Complete ?? Nulleaus para recompensas desconhecidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Complete a missão semanal das 3x presas do pesadelo para 20 brasões de Herói sem limite." }, -- ⚠️ UNVERIFIED
            { id = "1db5f946", text = "Farme +10s para cofre + brasões" },
            { id = "d0aed922", text = "Heroico: Melhore um item 3/6 266 para 6/6 276 por 60 Brasões Heroicos. Melhore 2 itens 3/6 266 para 4/6 269 por 40 Brasões Heroicos. Guarde 20 Brasões Heroicos para o próximo passo." },
            { id = "2568bd36", text = "Mítico: Se seu item do cofre foi 1/6, melhore sua contraparte heroica primeiro para 6/6 heroico por 20 Brasões Heroicos. Melhore seu item trilha Mito 1/6 272 para 6/6 289 por 80 brasões de Mito." },
            { id = "484da4b0", text = "Se você conseguiu um 2º item de trilha mítica, pule para o conselho de melhoria da próxima semana para ele." },
            { id = "8e67d484", text = "Rastrear brasões gastos: 440/440 Heroico, 240/350 Mítico - nunca segure brasões Míticos - pode variar se você fabricou" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abr.",
        items = {
            { id = "9375e497", text = "Abra o cofre (item mito 272+)" },
            { id = "83fd4310", text = "Complete a missão semanal do evento mundial para fagulha da Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa Desconhecida em semanas repetidas) - Complete ?? Nulleaus para recompensas desconhecidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Complete a missão semanal das 3x presas do pesadelo para 20 brasões de Herói sem limite." }, -- ⚠️ UNVERIFIED
            { id = "1db5f946", text = "Farme +10s para cofre + brasões" },
            { id = "6e25b0ce", text = "Heroico: Melhore 2 dos seus itens 4/6 269 para 6/6 276 por 80 Brasões Heroicos. Melhore 1 item 3/6 266 para 4/6 269 por 20 Brasões Heroicos. Guarde 20 Brasões Heroicos para o próximo passo." },
            { id = "7bfe99b2", text = "Mítico: Se seu item do cofre foi 1/6, melhore sua contraparte heroica primeiro para 6/6 heroico por 20 Brasões Heroicos. Melhore seu item trilha Mito 1/6 272 para 6/6 289 por 80 brasões de Mito." },
            { id = "0ccf5c83", text = "Mítico: melhore seu item da raid 2/6 275 da trilha mítica para 6/6 289 por 80 Brasões Míticos." },
            { id = "b95b0829", text = "Rastrear brasões gastos: 560/560 Heroico, 400/450 Mítico - nunca segure brasões Míticos" },
        },
    },

    {
        id = "067d2566",
        title = "Semana 5 - 14 Abr - Acabou com Brasões Heroicos",
        items = {
            { id = "9375e497", text = "Abra o cofre (item mito 272+)" },
            { id = "83fd4310", text = "Complete a missão semanal do evento mundial para fagulha da Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa Desconhecida em semanas repetidas) - Complete ?? Nulleaus para recompensas desconhecidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Complete a missão semanal das 3x presas do pesadelo para 20 brasões de Herói sem limite." }, -- ⚠️ UNVERIFIED
            { id = "1db5f946", text = "Farme +10s para cofre + brasões" },
            { id = "cb431e83", text = "Fabrique o próximo item (Verifique o Guia para mais informações)" },
            { id = "13957611", text = "Heroico: Melhore o último dos seus itens heroicos para 6/6 276. Guarde 20 Brasões Heroicos para o próximo passo." },
            { id = "2568bd36", text = "Mítico: Se seu item do cofre foi 1/6, melhore sua contraparte heroica primeiro para 6/6 heroico por 20 Brasões Heroicos. Melhore seu item trilha Mito 1/6 272 para 6/6 289 por 80 brasões de Mito." },
            { id = "c581850d", text = "Rastrear brasões gastos: 680/680 Heroico, 480/550 Mítico - nunca segure brasões Míticos" },
        },
    },

    {
        id = "db70d77d",
        title = "Semana 6 - 21 Abr+",
        items = {
            { id = "f9978f0e", text = "Não fabrique se puder obter itens do cofre maiores que 1/6" },
            { id = "66e83cc1", text = "Melhore itens Míticos conforme os conseguir, preferindo levá-los para 289 pelo salto de +4" },
            { id = "1786deeb", text = "Se necessário, planeje possível troca de 1M + OH fabricada" },
            { id = "10aac768", text = "Aproveite o sistema de melhorias muito melhor da Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
