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
        id = "bd6b2f68",
        title = "Acesso Antecipado - 26 de Fev até 2 de Mar",
        items = {
            { id = "f4b92a82", text = "Entre com cada personagem que você planeja upar para que eles comecem a acumular XP de descanso." },
            { id = "90db618c", text = "Suba personagens com modo guerra ativado até 90 - A FDL abre no domingo para 10% de exp a mais." },
            { id = "6af1d802", text = "Complete o Assalto Stormarion semanal na Tempestade Etérea. (Está disponível no Acesso Antecipado)" }, -- ⚠️ UNVERIFIED
            { id = "35bc0cfd", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Estes têm bloqueio semanal para cada raro." },
            { id = "2687fe6c", text = "Procure os tesouros de cada região para Renome grátis. Veja o doc para guia" },
            { id = "91e7ee6c", text = "Complete 4x Presa em dificuldade normal para renome" }, -- ⚠️ UNVERIFIED
            { id = "8bf4f442", text = "Complete a conquista Caçador de Tradições de Midnight para renome - veja o doc para guia" }, -- ⚠️ UNVERIFIED
            { id = "c886190c", text = "Complete a conquista Picos Mais Altos para renome - veja o doc para guia" },
            { id = "f9b8eb01", text = "Complete cadeias de missões secundárias para renome. (pode ser feito em personagens alternativos para upar ao mesmo tempo). O bônus da FDL não dá renome." },
            { id = "4aa4b47d", text = "Nota: Apenas os itens de campeão da Singularidade E Canção Eterna estão disponíveis no acesso antecipado - os outros ficarão disponíveis na segunda-feira após o lançamento oficial ou após a reinicialização semanal de cada região." },
            { id = "ba1890e4", text = "Complete o Soirée de Saltheril semanal em Floresta de Perpetuma. Não esqueça de pegar a missão de renome para o elmo de campeão se você tiver o renome" },
        },
    },

    {
        id = "50281d6f",
        title = "Pré-temporada Semana 1 - 3 de março - M0",
        items = {
            { id = "727109d8", text = "Não gaste nenhum Emblema até ser instruído a fazê-lo. Veja o guia para entender por que guardamos emblemas." },
            { id = "5a2e9ede", text = "NÃO FABRICAR" },
            { id = "c06ee1a3", text = "Se você está em um personagem alternativo e não vê algumas dessas missões, vá até Soridormi na Estalagem de Lua Prateada e escolha \"Eu Detive a Tempestade Etérea\" para pular a campanha." }, -- ⚠️ UNVERIFIED
            { id = "44fbfe51", text = "Eleve o renome da Singularidade ao nível 7 para obter o berloque de campeão 1/6 - obtido através de missão do vendedor de renome (não é comprado)" },
            { id = "02ceff50", text = "Eleve o renome dos Hara'ti ao nível 8 para obter o cinto de campeão 1/6 - obtido através de missão do vendedor de renome (não é comprado)" },
            { id = "cdea3773", text = "Eleve o renome de Luaprata ao nível 9 para obter o elmo de campeão 1/6 - obtido através de missão do vendedor de renome (não é comprado)" },
            { id = "19687ed0", text = "Eleve o renome da Tribo Amani ao nível 9 para obter o colar de campeão 1/6 - obtido através de missão do vendedor de renome (não é comprado)" },
            { id = "101e78a9", text = "Complete a missão semanal de masmorra de Halduron Asa Brilhante para 1000 de renome" },
            { id = "0c3b8835", text = "Complete a missão semanal de evento mundial para baú de pináculo de Lady Liadrin - pode pegar a missão de evento semanal e fazê-la com os eventos abaixo" },
            { id = "879d3833", text = "Complete a missão semanal de tour mundial de Lorthremar para centelha fazendo as missões abaixo" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Complete a Soiree de Saltheril semanal em Bosques da Canção Eterna." },
            { id = "da2fa0ef", text = "Complete o Evento de Abundância semanal em Zul'Aman." },
            { id = "dbc8384b", text = "Complete o evento semanal Lendas dos Haranir em Harandar." },
            { id = "9ad64245", text = "Complete o Assalto de Stormarion semanal na Voragem do Vázio." },
            { id = "35bc0cfd", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Estes têm bloqueio semanal para cada raro." },
            { id = "1b42ce30", text = "Se não foi feito, procure os tesouros de cada região, caçador de tradições e picos altos para Renome grátis. Veja o doc para guia" },
            { id = "a892ac44", text = "Desbloqueie Escavações até o nível 8" },
            { id = "9bc44f02", text = "Complete 2x Presa Difícil para equipamento Veterano em cada personagem - se tiver apenas um personagem, faça 4x em um personagem para renome" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Complete um tour mundial das masmorras M0 - recompensa nível de item veteranário - não melhore ainda" },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pré-temporada Semana 2 - 10 de março - M0",
        items = {
            { id = "727109d8", text = "Não gaste nenhum Emblema até ser instruído a fazê-lo. Veja o guia para entender por que guardamos emblemas." },
            { id = "5a2e9ede", text = "NÃO FABRICAR" },
            { id = "75c5fe6e", text = "Se não concluído, continue elevando o renome para peças campeã" },
            { id = "101e78a9", text = "Complete a missão semanal de masmorra de Halduron Asa Brilhante para 1000 de renome" },
            { id = "0c3b8835", text = "Complete a missão semanal de evento mundial para baú de pináculo de Lady Liadrin - pode pegar a missão de evento semanal e fazê-la com os eventos abaixo" },
            { id = "e326ed96", text = "Complete a Soiree de Saltheril semanal em Bosques da Canção Eterna." },
            { id = "da2fa0ef", text = "Complete o Evento de Abundância semanal em Zul'Aman." },
            { id = "dbc8384b", text = "Complete o evento semanal Lendas dos Haranir em Harandar." },
            { id = "9ad64245", text = "Complete o Assalto de Stormarion semanal na Voragem do Vázio." },
            { id = "35bc0cfd", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Estes têm bloqueio semanal para cada raro." },
            { id = "23cb93ed", text = "Desbloqueie Escavações até o nível 8 se ainda não tiver feito" },
            { id = "9bc44f02", text = "Complete 2x Presa Difícil para equipamento Veterano em cada personagem - se tiver apenas um personagem, faça 4x em um personagem para renome" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Complete um tour mundial das masmorras M0 - recompensa nível de item veteranário - não melhore ainda" },
            { id = "c33e5c84", text = "Se for raidy na terça dia 17, crie itens. Veja o documento para mais informações." },
        },
    },

    {
        id = "33a3fcba",
        title = "Semana 1 da Temporada 1 - 17 de março - Semana heróica",
        items = {
            { id = "727109d8", text = "Não gaste nenhum Emblema até ser instruído a fazê-lo. Veja o guia para entender por que guardamos emblemas." },
            { id = "5b379666", text = "Faça o LFR para peças de conjunto (veja o guia para entender o porquê)" },
            { id = "879d3833", text = "Complete a missão semanal de tour mundial de Lorthremar para centelha fazendo as missões abaixo" }, -- ⚠️ UNVERIFIED
            { id = "9686fde4", text = "Complete a missão semanal de habitação da Vaeli para obter ?emblemas de herói? (será atualizado quando for lançado)" }, -- ⚠️ UNVERIFIED
            { id = "952916cd", text = "(Opcional) Complete um Tour Mundial de masmorras M0 - recompensa nível de item de campeão" },
            { id = "22842538", text = "Complete 2x Presa Pesadelo para equipamento de Campeão em cada personagem" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Mate o chefe mundial para um item campeão 2/6 nível 250" },
            { id = "3e0dfde7", text = "Se disponível, complete a missão de JcJ para colar/anel herói garantido" },
            { id = "b6846065", text = "Faça escavações abundantes de n8 ou superior, use mapa em escavação n8+ - enquanto faz isso, desbloqueie escavações n11" },
            { id = "eff76e73", text = "Antes da raid: crie 2 peças nível 246, 2 ornamentos nos slots fracos, use 160 Brasões veteranários" },
            { id = "2af0bfb5", text = "Antes da raid: gaste todos os Brasões aventureiros, veteranários e campeões melhorando qualquer coisa" },
            { id = "5768e0fe", text = "Acompanhe os Brasões: 0/100 Heróico, 0/100 Mítico" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de março - Semana mítica, M+ abre, tirem férias nerds",
        items = {
            { id = "727109d8", text = "Não gaste nenhum Emblema até ser instruído a fazê-lo. Veja o guia para entender por que guardamos emblemas." },
            { id = "7e42a12d", text = "Nota sobre arma 1M criada, veja o guia, verifique o caminho de criação (MUITO IMPORTANTE!)" },
            { id = "5b379666", text = "Faça o LFR para peças de conjunto (veja o guia para entender o porquê)" },
            { id = "16cf341e", text = "(Opcional) Mate o chefe mundial para um item campeão 2/6 nível 250" },
            { id = "3ccf0a1f", text = "(Opcional) Complete a Presa Pesadelo 4 vezes para equipamento campeão e renome." },
            { id = "26d0b610", text = "Faça pelo menos uma Imersão Abundante de nível 11 para obter a missão da Pedra-Rúnica Rachada" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continue gastando todos os Brasões aventureiros, veteranários e campeões melhorando qualquer coisa" },
            { id = "74924a7b", text = "Farme +10s para equipamento nível 266 em todos os slots" },
            { id = "eb45e64d", text = "Antes da raid mítica: melhore 11 itens herói 3/6 uma vez cada" },
            { id = "cbfb6966", text = "Mítico: se tiver sorte e obteve um item da trilha mítica, pule para o conselho de melhoria da próxima semana." },
            { id = "0e855644", text = "Acompanhe os Brasões: 220/220 Heróico, 0/220 Mítico – nunca acumule Brasões Míticos" },
            { id = "721f006f", text = "Nível de item final: 4x266, 11x269" },
        },
    },

    {
        id = "b0abc363",
        title = "Semana 3 - 31 de março - Raid final abre",
        items = {
            { id = "1fbc825e", text = "Abra o Grande Cofre (item mítico 272+) - melhore após criar" },
            { id = "fb8255a7", text = "Crie itens – consulte o guia para 2 caminhos a escolher" },
            { id = "8226c872", text = "Sem bônus 4 peças: faça o LFR para peças de conjunto (veja o guia)" },
            { id = "1db5f946", text = "Farme +10s para o Grande Cofre + Brasões" },
            { id = "c316485a", text = "Heróico: melhore 2 dos seus itens 269 4/6 para 276 6/6 por 80 Brasões Heróicos" },
            { id = "2568bd36", text = "Mítico: se seu item do Grande Cofre era 1/6, melhore primeiro o equivalente heróico para 6/6 por 20 Brasões Heróicos. Depois melhore seu item da trilha mítica 272 1/6 para 6/6 289 por 80 Brasões Míticos." },
            { id = "484da4b0", text = "Se obteve um 2º item da trilha mítica, pule para o conselho de melhoria da próxima semana." },
            { id = "0ecf8e89", text = "Acompanhe os Brasões: 320/320 Heróico, 160/320 Mítico – nunca acumule Brasões Míticos" },
            { id = "02884180", text = "Nível de item final: 3x266, 8x269, 2x276h, 1x285(criado), 1x289" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abr.",
        items = {
            { id = "9375e497", text = "Abra o Grande Cofre (item mítico 272+)" },
            { id = "1db5f946", text = "Farme +10s para o Grande Cofre + Brasões" },
            { id = "c316485a", text = "Heróico: melhore 2 dos seus itens 269 4/6 para 276 6/6 por 80 Brasões Heróicos" },
            { id = "2568bd36", text = "Mítico: se seu item do Grande Cofre era 1/6, melhore primeiro o equivalente heróico para 6/6 por 20 Brasões Heróicos. Depois melhore seu item da trilha mítica 272 1/6 para 6/6 289 por 80 Brasões Míticos." },
            { id = "0ccf5c83", text = "Mítico: melhore seu item da raid 2/6 275 da trilha mítica para 6/6 289 por 80 Brasões Míticos." },
            { id = "299f3284", text = "Acompanhe os Brasões: 420/400 Heróico, 320/420 Mítico – nunca acumule Brasões Míticos" },
            { id = "8b8cde46", text = "Nível de item final: 2x266, 5x269, 4x276h, 1x285(criado), 3x289" },
        },
    },

    {
        id = "239053b5",
        title = "Semana 5 - 14 de abr.",
        items = {
            { id = "9375e497", text = "Abra o Grande Cofre (item mítico 272+)" },
            { id = "1db5f946", text = "Farme +10s para o Grande Cofre + Brasões" },
            { id = "11e426da", text = "Crie o próximo item (consulte o documento para mais informações)" },
            { id = "c316485a", text = "Heróico: melhore 2 dos seus itens 269 4/6 para 276 6/6 por 80 Brasões Heróicos" },
            { id = "2568bd36", text = "Mítico: se seu item do Grande Cofre era 1/6, melhore primeiro o equivalente heróico para 6/6 por 20 Brasões Heróicos. Depois melhore seu item da trilha mítica 272 1/6 para 6/6 289 por 80 Brasões Míticos." },
            { id = "8d74c3e1", text = "Acompanhe os Brasões: 520/520 Heróico, 480/520 Mítico – nunca acumule Brasões Míticos" },
            { id = "4f04ba4e", text = "Nível de item final: 1x266, 2x269, 6x276h, 2x285(criado), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semana 6 - 21 de abr. - Terminados os Brasões Heróicos",
        items = {
            { id = "9375e497", text = "Abra o Grande Cofre (item mítico 272+)" },
            { id = "1db5f946", text = "Farme +10s para o Grande Cofre + Brasões" },
            { id = "c35cf0b6", text = "Heróico: melhore seu último item 269 4/6 para 276 6/6 por 40 Brasões Heróicos" },
            { id = "2568bd36", text = "Mítico: se seu item do Grande Cofre era 1/6, melhore primeiro o equivalente heróico para 6/6 por 20 Brasões Heróicos. Depois melhore seu item da trilha mítica 272 1/6 para 6/6 289 por 80 Brasões Míticos." },
            { id = "0ccf5c83", text = "Mítico: melhore seu item da raid 2/6 275 da trilha mítica para 6/6 289 por 80 Brasões Míticos." },
            { id = "4510d1aa", text = "Acompanhe os Brasões: 560/620 Heróico, 620/620 Mítico – nunca acumule Brasões Míticos" },
            { id = "67f84375", text = "Nível de item final: 7x276h, 2x285(criado), 1x285, 5x289" },
        },
    },

    {
        id = "fd1bf82c",
        title = "Semana 7 - 28 de abr.+",
        items = {
            { id = "f9978f0e", text = "Não crie se puder obter itens do Grande Cofre acima de 1/6" },
            { id = "66e83cc1", text = "Melhore itens míticos conforme os obtiver, preferindo pular para 289 pelo bônus de +4" },
            { id = "a90c240c", text = "Planeje uma possível troca para 1M + mão secundária criada" },
            { id = "10aac768", text = "Aproveite o sistema de melhoria muito melhor da Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
