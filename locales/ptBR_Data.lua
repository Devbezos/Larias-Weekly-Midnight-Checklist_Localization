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
            { id = "6762e305", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Este é um bônus único para cada raro e não reseta semanalmente." },
            { id = "0394cb0d", text = "Caçe os tesouros de cada região para Renome grátis. Confira o guia para mais informações" },
            { id = "91e7ee6c", text = "Complete 4x Presa em dificuldade normal para renome" }, -- ⚠️ UNVERIFIED
            { id = "c699a5d6", text = "Complete a conquista Caçador de Tradições da Meia-Noite para renome - Confira o guia para mais informações" }, -- ⚠️ UNVERIFIED
            { id = "cfd4a904", text = "Complete a conquista Picos Mais Altos para renome - Confira o guia para mais informações" }, -- ⚠️ UNVERIFIED
            { id = "f9b8eb01", text = "Complete cadeias de missões secundárias para renome. (pode ser feito em personagens alternativos para upar ao mesmo tempo). O bônus da FDL não dá renome." },
            { id = "4aa4b47d", text = "Nota: Apenas os itens de campeão da Singularidade E Canção Eterna estão disponíveis no acesso antecipado - os outros ficarão disponíveis na segunda-feira após o lançamento oficial ou após a reinicialização semanal de cada região." },
            { id = "ba1890e4", text = "Complete o Soirée de Saltheril semanal em Floresta de Perpetuma. Não esqueça de pegar a missão de renome para o elmo de campeão se você tiver o renome" },
        },
    },

    {
        id = "50281d6f",
        title = "Pré-temporada Semana 1 - 3 de março - M0",
        items = {
            { id = "79c35167", text = "Guarde 160 insígnias Veterano para criação - veja as instruções mais abaixo (Estas não requerem Centelhas)" },
            { id = "e8cef00e", text = "Verifique o Guia para o que e quando fabricar." },
            { id = "c06ee1a3", text = "Se você está em um personagem alternativo e não vê algumas dessas missões, vá até Soridormi na Estalagem de Lua Prateada e escolha \"Eu Detive a Tempestade Etérea\" para pular a campanha." }, -- ⚠️ UNVERIFIED
            { id = "755d27e7", text = "Eleve o renome de A Singularidade para nível 7 para um trinket campeão 1/6 - vem de uma missão do vendedor de renome" },
            { id = "f213fee8", text = "Eleve o renome de Hara'ti para nível 8 para um cinto campeão 1/6 - vem de uma missão do vendedor de renome" },
            { id = "81fd810d", text = "Eleve o renome de Lua Prateada para nível 9 para um elmo campeão 1/6 - vem de uma missão do vendedor de renome" },
            { id = "804b15e3", text = "Eleve o renome da Tribo Amani para nível 9 para um colar campeão 1/6 - vem de uma missão do vendedor de renome" },
            { id = "101e78a9", text = "Complete a missão semanal de masmorra de Halduron Asa Brilhante para 1000 de renome" },
            { id = "0c3b8835", text = "Complete a missão semanal de evento mundial para baú de pináculo de Lady Liadrin - pode pegar a missão de evento semanal e fazê-la com os eventos abaixo" },
            { id = "879d3833", text = "Complete a missão semanal de tour mundial de Lorthremar para centelha fazendo as missões abaixo" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Complete a Soiree de Saltheril semanal em Bosques da Canção Eterna." },
            { id = "da2fa0ef", text = "Complete o Evento de Abundância semanal em Zul'Aman." },
            { id = "dbc8384b", text = "Complete o evento semanal Lendas dos Haranir em Harandar." },
            { id = "9ad64245", text = "Complete o Assalto de Stormarion semanal na Voragem do Vázio." },
            { id = "6762e305", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Este é um bônus único para cada raro e não reseta semanalmente." },
            { id = "666a0192", text = "Se não foi feito, caçe os tesouros de cada região, caçador de tradições e picos altos para Renome grátis. Confira o guia para mais informações." },
            { id = "a892ac44", text = "Desbloqueie Escavações até o nível 8" },
            { id = "d54f7430", text = "Complete 4x Presa Difícil. As primeiras 2 darão equipamento Veterano; todas as 4 darão Brasões Veteranos que você precisa para maximizar." },
            { id = "efb035ba", text = "(Opcional) Complete 2x Presa Difícil aleatória para emblemas Veteranos em cada personagem - fazendo 2x opcionais por semana alcançará o limite de emblemas Veteranos até o final da semana 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Complete um tour mundial das masmorras M0 - recompensa nível de item veteranário - não melhore ainda" },
            { id = "c60d586a", text = "Informações do Hotfix de Quinta-feira, 5 de Março: A Blizzard aplicou um hotfix que adiciona a habilidade de conquistar uma conquista que reduz o custo de aprimorar suas insígnias em 50% na sua conta assim que um personagem tiver 237 em todos os espaços. Confira o guia para mais informações." },
            { id = "77405dc2", text = "Novo: Se você tem apenas um personagem, após completar sua primeira volta mundial de masmorras M0 você pode gastar insígnias de Aventureiro nos itens restantes." },
            { id = "95531889", text = "Novo: Se você tem múltiplos personagens, uma vez que tenha conquistado a nova conquista, você pode aprimorar livremente em todos os outros personagens." },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pré-temporada Semana 2 - 10 de março - M0",
        items = {
            { id = "79c35167", text = "Guarde 160 insígnias Veterano para criação - veja as instruções mais abaixo (Estas não requerem Centelhas)" },
            { id = "b4de098c", text = "Nota especial para classes de armas duplas - você provavelmente já pode criar seu item de centelha. Consulte o Guia para o que e quando criar." },
            { id = "d8f307f2", text = "Alerta de atualização do guia de texto: Atualizei os conselhos de criação de Centelha para todas as classes. Recomendo fortemente que você Verifique o Guia com as novas informações." },
            { id = "0d50e744", text = "NA: A Blizzard aplicou um hotfix adicionando uma missão de centelha PvE da Liadrin. Se você já completou a de PvP, pode pular esta, pois ela não dá uma quarta centelha. Se você não completou nenhuma missão de centelha esta semana, faça a da Liadrin para obter sua terceira centelha." },
            { id = "ab127896", text = "EU: Após a reinicialização, complete a missão semanal da Liadrin para obter uma centelha." },
            { id = "5fd1b2ad", text = "NÃO FAÇA a missão JxJ do anel/amuleto heroico. Você não pode terminar a linha de missões até depois que m+ abrir" },
            { id = "ed534745", text = "(Opcional) Novo: Farme 10.000 de honra e compre na CL ou farme 6 Heliotrópios Imbuídos para a próxima semana. Veja a próxima semana para mais informações. Nota: isto é muito min-max. É para 2 engastes extras nas primeiras duas semanas." }, -- ⚠️ UNVERIFIED
            { id = "9626318e", text = "(Opcional) Complete a missão semanal de masmorra de Halduron Asa Luminosa para 1000 de renome" },
            { id = "8b55f0c7", text = "(Opcional) Complete o semanal Sarau de Saltheril na Floresta de Canção Eterna." },
            { id = "8e107032", text = "(Opcional) Complete o evento semanal Abundância em Zul'aman." },
            { id = "d5a12c89", text = "(Opcional) Complete o evento semanal Lendas dos Haranir em Harandar." },
            { id = "514a6926", text = "(Opcional) Complete o Assalto Stormarion semanal na Tempestavazia." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Opcional) Mate cada raro uma vez em cada zona para renome. Este é um bônus único para cada raro e não reseta semanalmente." },
            { id = "23cb93ed", text = "Desbloqueie Escavações até o nível 8 se ainda não tiver feito" },
            { id = "d54f7430", text = "Complete 4x Presa Difícil. As primeiras 2 darão equipamento Veterano; todas as 4 darão Brasões Veteranos que você precisa para maximizar." },
            { id = "7b67a15d", text = "(Opcional) Complete Presa Difícil aleatória para maximizar insígnias Veteranas em cada personagem" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Complete um tour mundial das masmorras M0 - recompensa nível de item veteranário - não melhore ainda" },
            { id = "dc01eba9", text = "Se você tem alguma peça de aventureiro sobrando, você pode aprimorá-las livremente." },
            { id = "5853685a", text = "Se você fizer raide na terça-feira dia 17, leia as etapas de criação da próxima semana. Caso contrário, espere até o dia da sua raide ou o dia anterior à sua raide para fazer isso." },
        },
    },

    {
        id = "89ba2d2a",
        title = "Temporada 1 Semana 1 - 17 de Mar - Semana Heroica, 2ª criação",
        items = {
            { id = "791379ba", text = "Não gaste nenhuma Insígnia Heroica ou Mítica até ser instruído a fazê-lo. Consulte o Guia para entender por que guardamos insígnias." },
            { id = "fab7aef9", text = "Quase todo mundo provavelmente pode fabricar seu item de centelha agora. Verifique o Guia para o que e quando fabricar." },
            { id = "e66847d8", text = "Faça LFR para peças de conjunto - obter o bônus de 4 peças permitirá que cargas do catalisador caiam de todo o conteúdo" },
            { id = "b1a6f7eb", text = "Complete a missão semanal de evento mundial para baú superior e centelha da Lady Liadrin - Fazer a Arcantina leva 3 minutos" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Complete a missão semanal de moradia da Vaeli - a recompensa é emblemas limitados, não importa o que você escolher, mas o maior aumento a curto prazo é selecionar Emblemas do Campeão" }, -- ⚠️ UNVERIFIED
            { id = "1e1d846c", text = "Nota: as próximas duas coisas estão relacionadas - são para uma pequena melhoria - dois engastes adicionais nas primeiras duas semanas." },
            { id = "50eaf609", text = "(Opcional) Novo: Complete partidas JxJ para obter um item de missão que recompensa 9x Heráldica do Gladiador Galáctico. Você usará estes para criar itens abaixo. Faça isso apenas se você tem ou vai farmar a honra para os encaixes abaixo. Nota: isso é muito min-max, é essencialmente para 2 encaixes adicionais. Arena é o mais rápido" }, -- ⚠️ UNVERIFIED
            { id = "a1884373", text = "(Opcional) Novo: Compre 2 Cravações do Joalheiro Galáctico do vendedor por 5000 de Honra e 3 Heliotrópios Imbuídos cada. Você usará estes para engastar os itens fabricados abaixo. Estes itens não aparecerão no vendedor até esta semana. Isto é muito min-max, é essencialmente para 2 engastes adicionais." }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Opcional) Aumente a classificação PVP para 1600 para carga do catalisador (esta é a mesma carga do catalisador compartilhada com 2.000 de classificação M+ da próxima semana). Se você conseguir 2 peças de conjunto do seu raide esta semana, isso permitirá catalizar 2 itens e começar a receber quedas de carga do Catalisador do seu m+ na próxima semana." },
            { id = "ef789b0b", text = "(Opcional) Complete um Tour Mundial de masmorras M0. Estas darão recompensas de nível de item campeão com bloqueio diário - NÃO SE ESGOTE! M+ abre na próxima semana e substituirá tudo isso." },
            { id = "d78939c6", text = "Tarefa Diária: considere fazer uma m0 específica que drope um ótimo amuleto para você todos os dias. O item será nível de item campeão (raide normal) e pode ser um bom impulso para a raide da próxima semana se você ainda não conseguir farmá-lo no Heroico." },
            { id = "05b7e462", text = "Complete 4x Presa Difícil para desbloquear Presa Pesadelo." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Complete 3x Presa do Pesadelo para equipamento de Campeão em cada personagem e para completar a missão semanal para item de invocação de chefe e 20 brasões de herói sem limite" }, -- ⚠️ UNVERIFIED
            { id = "cc5a28dd", text = "Complete Nullaeus na dificuldade ? para 30 brasões de Herói sem limite. Lembre-se de não gastar estes." }, -- ⚠️ UNVERIFIED
            { id = "5c891668", text = "Complete Nullaeus na dificuldade ?? para MAIS 30 emblemas de Herói ilimitados e 30 emblemas de Mítico ilimitados. NOTA: Embora a conquista do Salão da Fama exija que você faça isso sozinho, você pode fazer isso mais facilmente em grupo. Com um companheiro de delve tanque + curandeiro, apenas continue adicionando mais DPS ao seu grupo." }, -- ⚠️ UNVERIFIED
            { id = "f7a876a0", text = "O vendedor na área de delve tem uma bolsa com 2 chaves grátis que ultrapassam o limite. Isso é uma vez por grupo de guerra - certifique-se de comprar no seu personagem principal." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Faça delves abundantes nível 8 ou superior, use mapa em delve nível 8+ - enquanto faz isso, desbloqueie delves nível 11" },
            { id = "2f9c0f4f", text = "Use seu item de invocação de chefe da missão semanal Presa Pesadelo em uma Delve nível 8 para obter um mapa e então use-o para um item de trilha Herói." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Mate o Chefe Mundial para item 3/6 campeão nível de item 253" },
            { id = "bf5d2e12", text = "Preencha seu cofre em todos os espaços para múltiplas chances de itens de nível heroico na próxima semana." },
            { id = "4820451a", text = "(Opcional) Novo: Se você farmou honra e obteve sua Heráldica do Gladiador Galáctico e Cravações do Joalheiro Galáctico (veja acima), fabrique Braçadeiras e Cinturão em nível de item 246 e adicione um engaste a eles. Estes itens podem receber adornos - se você fabricou uma arma com um adorno, coloque apenas um adorno nestes. Se você não fabricou uma arma, coloque 2x adornos neles. Estes itens são equivalentes a 1/6 de trilha Campeão com um engaste e você pode usar estes por algumas semanas na temporada. Nível de item confirmado como 1/6 campeão." }, -- ⚠️ UNVERIFIED
            { id = "2e0ae86e", text = "Se você não farmou honra para itens PvP, então ANTES DA RAIDE, crie 1x-2x peças de nível de item 246 com adornos em espaços fracos, usando 80-160 Brasões Veteranos. ESTES NÃO USAM CENTELHAS. Os itens que você está criando são os itens de qualidade azul na bancada de criação nos quais você insere 80x Brasões Veteranos para aumentar seu nível de item. Verifique o Guia para mais informações. Também pode perguntar no Discord se precisar de ajuda." },
            { id = "146b7d62", text = "Depois de fazer o máximo possível acima, mas ANTES da raide, gaste todas as Insígnias de Aventureiro, Veterano e Campeão melhorando qualquer coisa. Não gaste insígnias Heroicas ou Míticas." },
            { id = "8824d048", text = "Rastreie insígnias gastas: 0/100 Heroica, 0/100 Mítica" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de março - Semana mítica, M+ abre, tirem férias nerds",
        items = {
            { id = "36d21691", text = "Não gaste nenhuma Insígnia Heroica ou Mítica até que seja instruído a fazê-lo. Confira o guia para entender por que guardamos insígnias." },
            { id = "e8cef00e", text = "Verifique o Guia para o que e quando fabricar." },
            { id = "4056a14a", text = "Se você não tem conjunto de 4 peças, faça RFR para peças de conjunto - obter um bônus de 4 peças permitirá que cargas de catalisador sejam obtidas de todo conteúdo" },
            { id = "e0ecce24", text = "Complete a missão de evento mundial semanal para baú pináculo e faísca da Lady Liadrin" },
            { id = "4c264b7f", text = "Complete a missão semanal de moradia da Vaeli para emblemas de herói rápidos" }, -- ⚠️ UNVERIFIED
            { id = "0c60ad29", text = "(Opcional) Mate o Chefe Mundial para item nível 253 campeão 3/6" }, -- ⚠️ UNVERIFIED
            { id = "4aa82ede", text = "(Opcional) Complete 2x Presa de Pesadelo para equipamento Campeão em cada personagem" },
            { id = "26d0b610", text = "Faça pelo menos uma Imersão Abundante de nível 11 para obter a missão da Pedra-Rúnica Rachada" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continue gastando todos os Brasões aventureiros, veteranários e campeões melhorando qualquer coisa" },
            { id = "74924a7b", text = "Farme +10s para equipamento nível 266 em todos os slots" },
            { id = "ae0baeca", text = "Depois das repetições N/H mas ANTES da raide Mítica, melhore 11 itens herói 3/6 uma vez cada. Se você não tiver tantos itens Heroicos, melhore um anel ou amuleto mais para reduzir o risco de desperdiçar insígnias." },
            { id = "cbfb6966", text = "Mítico: se tiver sorte e obteve um item da trilha mítica, pule para o conselho de melhoria da próxima semana." },
            { id = "00cb43a8", text = "Rastreie insígnias gastas: 220/220 Heroica, 0/220 Mítica - nunca acumule insígnias Míticas - pode variar se você criou itens" },
            { id = "adb492bd", text = "Nível de item final: 4x266, 11x269 - pode variar se você criou itens" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semana 3 - 31 de Mar - Raide Final Abre, 3ª criação",
        items = {
            { id = "1fbc825e", text = "Abra o cofre (item mítico 272+) - melhore após criar" },
            { id = "8226c872", text = "Se não tiver 4p, faça LFR para peças de conjunto (consulte o guia para entender o porquê)" },
            { id = "1db5f946", text = "Farme +10s para cofre + insígnias" },
            { id = "c316485a", text = "Heroico: Melhore 2 de seus itens 4/6 269 para 6/6 276 por 80 Insígnias Heroicas" },
            { id = "2568bd36", text = "Mítico: Se seu item do cofre foi 1/6, melhore sua contraparte heroica primeiro para 6/6 heroico por 20 Insígnias Heroicas. Melhore seu item de trilha Mítica 1/6 272 para 6/6 289 por 80 insígnias Míticas." },
            { id = "484da4b0", text = "Se você conseguiu um 2º item de trilha mítica, pule para o conselho de melhoria da próxima semana para ele." },
            { id = "40b01764", text = "Rastreie insígnias gastas: 320/320 Heroica, 160/320 Mítica - nunca acumule insígnias Míticas - pode variar se você criou itens" },
            { id = "c0774809", text = "Nível de item final: 2x266, 8x269, 2x276h, 2x285(criado), 1x289 - pode variar se você criou itens" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abr.",
        items = {
            { id = "9375e497", text = "Abra o cofre (item mítico 272+)" },
            { id = "1db5f946", text = "Farme +10s para cofre + insígnias" },
            { id = "c316485a", text = "Heroico: Melhore 2 de seus itens 4/6 269 para 6/6 276 por 80 Insígnias Heroicas" },
            { id = "2568bd36", text = "Mítico: Se seu item do cofre foi 1/6, melhore sua contraparte heroica primeiro para 6/6 heroico por 20 Insígnias Heroicas. Melhore seu item de trilha Mítica 1/6 272 para 6/6 289 por 80 insígnias Míticas." },
            { id = "0ccf5c83", text = "Mítico: melhore seu item da raid 2/6 275 da trilha mítica para 6/6 289 por 80 Brasões Míticos." },
            { id = "bccfe037", text = "Rastreie insígnias gastas: 420/400 Heroica, 320/420 Mítica - nunca guarde insígnias Míticas" },
            { id = "8184483b", text = "Nível de item final: 2x266, 4x269, 4x276h, 2x285(criado), 3x289" },
        },
    },

    {
        id = "71d2703a",
        title = "Semana 5 - 14 de Abr, 4ª criação",
        items = {
            { id = "9375e497", text = "Abra o cofre (item mítico 272+)" },
            { id = "1db5f946", text = "Farme +10s para cofre + insígnias" },
            { id = "11e426da", text = "Crie o próximo item (veja o doc para mais informações)" },
            { id = "c316485a", text = "Heroico: Melhore 2 de seus itens 4/6 269 para 6/6 276 por 80 Insígnias Heroicas" },
            { id = "2568bd36", text = "Mítico: Se seu item do cofre foi 1/6, melhore sua contraparte heroica primeiro para 6/6 heroico por 20 Insígnias Heroicas. Melhore seu item de trilha Mítica 1/6 272 para 6/6 289 por 80 insígnias Míticas." },
            { id = "92a40a6f", text = "Rastreie insígnias gastas: 520/520 Heroica, 480/520 Mítica - nunca guarde insígnias Míticas" },
            { id = "4f04ba4e", text = "Nível de item final: 1x266, 2x269, 6x276h, 2x285(criado), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semana 6 - 21 de abr. - Terminados os Brasões Heróicos",
        items = {
            { id = "9375e497", text = "Abra o cofre (item mítico 272+)" },
            { id = "1db5f946", text = "Farme +10s para cofre + insígnias" },
            { id = "c35cf0b6", text = "Heróico: melhore seu último item 269 4/6 para 276 6/6 por 40 Brasões Heróicos" },
            { id = "2568bd36", text = "Mítico: Se seu item do cofre foi 1/6, melhore sua contraparte heroica primeiro para 6/6 heroico por 20 Insígnias Heroicas. Melhore seu item de trilha Mítica 1/6 272 para 6/6 289 por 80 insígnias Míticas." },
            { id = "0ccf5c83", text = "Mítico: melhore seu item da raid 2/6 275 da trilha mítica para 6/6 289 por 80 Brasões Míticos." },
            { id = "4f11d7d8", text = "Rastreie insígnias gastas: 560/620 Heroica, 620/620 Mítica - nunca guarde insígnias Míticas" },
            { id = "37472f94", text = "Nível de item final: 7x276h, 2x285(criado), 1x285, 5x289" },
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
