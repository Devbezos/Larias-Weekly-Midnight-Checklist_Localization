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
        id = "e225d803",
        title = "Acesso Antecipado - 26 fev. a 2 mar. - Pay to Win",
        items = {
            { id = "f4b92a82", text = "Entre com cada personagem que planeja nivelar para que comecem a acumular EXP descansada." }, -- ⚠️ UNVERIFIED
            { id = "825bfe20", text = "Suba personagens com Modo Guerra ativado ao nível 90 – a FLN abre no domingo com +10% de EXP." },
            { id = "50f90465", text = "Complete o Assalto de Stormarion semanal na Tempestade do Vazio. (Disponível no Acesso Antecipado)" }, -- ⚠️ UNVERIFIED
            { id = "7644d082", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Cada raro tem bloqueio semanal." },
            { id = "6892e5d5", text = "Procure os tesouros de cada região para renome gratuito. Veja o documento para o guia." }, -- ⚠️ UNVERIFIED
            { id = "f466c57b", text = "Complete a Presa 4 vezes na dificuldade normal para obter renome." },
            { id = "35bc0cfd", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Cada raro tem bloqueio semanal." },
            { id = "2687fe6c", text = "Complete a conquista Os Picos Mais Altos para renome - veja o documento para o guia" }, -- ⚠️ UNVERIFIED
            { id = "91e7ee6c", text = "Complete cadeias de missões secundárias para renome. (Pode ser feito em alts enquanto lvla). O buff da FLN não dá renome." },
            { id = "4e99ff6e", text = "Nota: Apenas o acessório campeão de renome de A Singularidade está disponível no acesso antecipado - os outros ficarão disponíveis na segunda-feira após o lançamento oficial ou após o reinício semanal de cada região." }, -- ⚠️ UNVERIFIED
        },
    },

    {
        id = "50281d6f",
        title = "Pré-temporada Semana 1 - 3 de março - M0",
        items = {
            { id = "c3de7d35", text = "Não gaste nenhum Brasão até receber instruções" },
            { id = "fe628d60", text = "Eleve o renome com A Singularidade ao grau 7 para o acessório campeão 1/6 - available in early access - comes from quest from the renown vendor (not purchased)" },
            { id = "9b594c78", text = "Eleve o renome com Hara'ti ao grau 8 para o cinturão campeão 1/6 - not available in early access? - comes from quest from the renown vendor (not purchased)" },
            { id = "6c01e9d5", text = "Eleve o renome com Lua de Prata ao grau 9 para o elmo campeão 1/6 - NOT available in early access - comes from quest from the renown vendor (not purchased)" },
            { id = "484f13d6", text = "Eleve o renome com a Tribo Amani ao grau 9 para o colar campeão 1/6 - not available in early access? - comes from quest from the renown vendor (not purchased)" },
            { id = "e326ed96", text = "Complete a Soiree de Saltheril semanal em Bosques da Canção Eterna." },
            { id = "da2fa0ef", text = "Complete o Evento de Abundância semanal em Zul'Aman." },
            { id = "dbc8384b", text = "Complete o evento semanal Lendas dos Haranir em Harandar." },
            { id = "9ad64245", text = "Complete o Assalto de Stormarion semanal na Voragem do Vázio." },
            { id = "35bc0cfd", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Cada raro tem bloqueio semanal." },
            { id = "d47e5b93", text = "Se ainda não feito, procure os tesouros de cada região para renome gratuito. Veja o documento para o guia." }, -- ⚠️ UNVERIFIED
            { id = "346bdd7e", text = "Desbloqueie Imersões até o nível 8 (11 se disponível)" },
            { id = "91b50b0a", text = "(Opcional) Complete a Presa normal 4 vezes para equipamento aventureiro e renome." },
            { id = "e0029ef7", text = "Complete a Presa difícil 4 vezes para equipamento veteranário e renome." },
            { id = "a7ee4829", text = "Complete um tour mundial das masmorras M0 - recompensa nível de item veteranário - não melhore ainda" },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pré-temporada Semana 2 - 10 de março - M0",
        items = {
            { id = "c3de7d35", text = "Não gaste nenhum Brasão até receber instruções" },
            { id = "75c5fe6e", text = "Se não concluído, continue elevando o renome para peças campeã" },
            { id = "e326ed96", text = "Complete a Soiree de Saltheril semanal em Bosques da Canção Eterna." },
            { id = "da2fa0ef", text = "Complete o Evento de Abundância semanal em Zul'Aman." },
            { id = "dbc8384b", text = "Complete o evento semanal Lendas dos Haranir em Harandar." },
            { id = "9ad64245", text = "Complete o Assalto de Stormarion semanal na Voragem do Vázio." },
            { id = "35bc0cfd", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Cada raro tem bloqueio semanal." },
            { id = "072e6955", text = "Desbloqueie Imersões até o nível 8 (11 se disponível), se ainda não feito" },
            { id = "91b50b0a", text = "(Opcional) Complete a Presa normal 4 vezes para equipamento aventureiro e renome." },
            { id = "e0029ef7", text = "Complete a Presa difícil 4 vezes para equipamento veteranário e renome." },
            { id = "a7ee4829", text = "Complete um tour mundial das masmorras M0 - recompensa nível de item veteranário - não melhore ainda" },
            { id = "c33e5c84", text = "Se for raidy na terça dia 17, crie itens. Veja o documento para mais informações." },
        },
    },

    {
        id = "33a3fcba",
        title = "Semana 1 da Temporada 1 - 17 de março - Semana heróica",
        items = {
            { id = "c3de7d35", text = "Não gaste nenhum Brasão até receber instruções" },
            { id = "5b379666", text = "Faça o LFR para peças de conjunto (veja o guia para entender o porquê)" },
            { id = "dd71541a", text = "(Opcional?) Complete um tour mundial das masmorras M0 - recompensa nível de item campeão" }, -- ⚠️ UNVERIFIED
            { id = "123747cb", text = "Complete a Presa Pesadelo 4 vezes para equipamento campeão e renome." },
            { id = "dc0e2686", text = "Mate o chefe mundial para um item campeão 2/6 nível 250" },
            { id = "3e0dfde7", text = "Se disponível, complete a missão de JcJ para colar/anel herói garantido" },
            { id = "fdfd56bc", text = "Faça Imersões Abundantes T8 com chaves do cofre, use o mapa nas Imersões T8+" },
            { id = "eff76e73", text = "Antes da raid: crie 2 peças nível 246, 2 ornamentos nos slots fracos, use 160 Brasões veteranários" },
            { id = "2af0bfb5", text = "Antes da raid: gaste todos os Brasões aventureiros, veteranários e campeões melhorando qualquer coisa" },
            { id = "5768e0fe", text = "Acompanhe os Brasões: 0/100 Heróico, 0/100 Mítico" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de março - Semana mítica, M+ abre, tirem férias nerds",
        items = {
            { id = "c3de7d35", text = "Não gaste nenhum Brasão até receber instruções" },
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
