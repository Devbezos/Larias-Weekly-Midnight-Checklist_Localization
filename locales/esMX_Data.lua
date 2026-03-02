--[[
Spanish (Latin America) (esMX) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
]]
if GetLocale() ~= "esMX" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "esMX"

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
        title = "Acceso anticipado - 26 feb. al 2 mar. - Paga para ganar",
        items = {
            { id = "f4b92a82", text = "Inicia sesión en cada personaje que planeas subir de nivel para que empiecen a acumular EXP de descanso." }, -- ⚠️ UNVERIFIED
            { id = "825bfe20", text = "Sube personajes en Modo de Guerra a nivel 90 – la FLN abre el domingo para +10 % de exp." },
            { id = "50f90465", text = "Completa el Asalto de Tormarión semanal en la Tormenta del Vacío. (Disponible en acceso anticipado)" }, -- ⚠️ UNVERIFIED
            { id = "7644d082", text = "(Opcional) Mata cada élite raro una vez en cada zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "6892e5d5", text = "Busca los tesoros de cada región para reputación gratuita. Ver documento para la guía." }, -- ⚠️ UNVERIFIED
            { id = "f466c57b", text = "Completa 4 veces la Presa en dificultad normal para reputación." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada élite raro una vez en cada zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "2687fe6c", text = "Completa el logro Las Cimas más Altas para reputación - ver documento para la guía" }, -- ⚠️ UNVERIFIED
            { id = "91e7ee6c", text = "Completa cadenas de misiones secundarias para reputación. (Se puede hacer en alts mientras subes de nivel). El buff de la FLN no da reputación." },
            { id = "4e99ff6e", text = "Nota: Solo el abalorio de campeón de La Singularidad está disponible en acceso anticipado - los demás estarán disponibles el lunes tras el lanzamiento oficial o tras el reinicio semanal de cada región." }, -- ⚠️ UNVERIFIED
        },
    },

    {
        id = "50281d6f",
        title = "Pretemporada semana 1 - 3 de marzo - M0",
        items = {
            { id = "c3de7d35", text = "No gastes ninguna Crestalborada hasta que se indique" },
            { id = "fe628d60", text = "Sube la reputación de La Singularidad a rango 7 para abalorio de campeón 1/6 - disponible en acceso anticipado - viene de misión del vendedor de reputación (no se compra)" },
            { id = "9b594c78", text = "Sube la reputación de Hara'ti a rango 8 para cinturón de campeón 1/6 - ¿no disponible en acceso anticipado? - viene de misión del vendedor de reputación (no se compra)" },
            { id = "6c01e9d5", text = "Sube la reputación de Lunargenta a rango 9 para yelmo de campeón 1/6 - NO disponible en acceso anticipado - viene de misión del vendedor de reputación (no se compra)" },
            { id = "484f13d6", text = "Sube la reputación de la Tribu Amani a rango 9 para collar de campeón 1/6 - ¿no disponible en acceso anticipado? - viene de misión del vendedor de reputación (no se compra)" },
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en los Bosques Siempreverd." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Tormarión semanal en la Tormenta del Vacío." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada élite raro una vez en cada zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "d47e5b93", text = "Si no hecho, busca los tesoros de cada región para reputación gratuita. Ver documento para la guía." }, -- ⚠️ UNVERIFIED
            { id = "346bdd7e", text = "Desbloquea Profundidades hasta nivel 8 (11 si está disponible)" },
            { id = "91b50b0a", text = "(Opcional) Completa 4 veces la Presa normal para equipo de aventurero y reputación." },
            { id = "e0029ef7", text = "Completa 4 veces la Presa difícil para equipo de veterano y reputación." },
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pretemporada semana 2 - 10 de marzo - M0",
        items = {
            { id = "c3de7d35", text = "No gastes ninguna Crestalborada hasta que se indique" },
            { id = "75c5fe6e", text = "Si no completado, continúa subiendo la reputación para piezas de campeón" },
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en los Bosques Siempreverd." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Tormarión semanal en la Tormenta del Vacío." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada élite raro una vez en cada zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "072e6955", text = "Desbloquea Profundidades hasta nivel 8 (11 si está disponible) si no lo has hecho todavía" },
            { id = "91b50b0a", text = "(Opcional) Completa 4 veces la Presa normal para equipo de aventurero y reputación." },
            { id = "e0029ef7", text = "Completa 4 veces la Presa difícil para equipo de veterano y reputación." },
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "c33e5c84", text = "Si raideas el martes 17, craftea. Mira el documento para más info." },
        },
    },

    {
        id = "33a3fcba",
        title = "Temporada 1 semana 1 - 17 de marzo - Semana heroica",
        items = {
            { id = "c3de7d35", text = "No gastes ninguna Crestalborada hasta que se indique" },
            { id = "5b379666", text = "Haz LFR para piezas de conjunto (mira la guía para saber por qué)" },
            { id = "dd71541a", text = "(¿Opcional?) Completa un tour mundial de M0 - recompensa ilvl campeón" }, -- ⚠️ UNVERIFIED
            { id = "123747cb", text = "Completa 4 veces la Presa de Pesadilla para equipo de campeón y reputación." },
            { id = "dc0e2686", text = "Mata al jefe del mundo para un objeto de campeón 2/6 ilvl 250" },
            { id = "3e0dfde7", text = "Si disponible, completa la misión JcJ para collar/anillo de héroe garantizado" },
            { id = "fdfd56bc", text = "Haz Profundidades abundantes T8 con llaves de cofre; usa mapa en Profundidades T8+" },
            { id = "eff76e73", text = "Antes de raid, craftea 2 piezas ilvl 246, 2 adornos en huecos débiles, usa 160 crestalboradas de veterano" },
            { id = "2af0bfb5", text = "Antes de raid, gasta todas las crestalboradas de aventurero, veterano y campeón mejorándolo todo" },
            { id = "5768e0fe", text = "Seguimiento de crestalboradas: 0/100 Heroicas, 0/100 Míticas" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, abren M+, tómate el día libre giganerd",
        items = {
            { id = "c3de7d35", text = "No gastes ninguna Crestalborada hasta que se indique" },
            { id = "7e42a12d", text = "Nota de arma 1M crafteada: mira la guía, verifica el camino de crafteo (¡MUY IMPORTANTE!)" },
            { id = "5b379666", text = "Haz LFR para piezas de conjunto (mira la guía para saber por qué)" },
            { id = "16cf341e", text = "(Opcional) Mata al jefe del mundo para un objeto de campeón 2/6 ilvl 250" },
            { id = "3ccf0a1f", text = "(Opcional) Completa 4 veces la Presa de Pesadilla para equipo de campeón y reputación." },
            { id = "26d0b610", text = "Haz al menos una Profundidad abundante T11 para conseguir la misión de Piedra rúnica agrietada" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continúa gastando todas las crestalboradas de aventurero, veterano y campeón mejorándolo todo" },
            { id = "74924a7b", text = "Farmea +10 para equipo 266 en cada hueco" },
            { id = "eb45e64d", text = "Antes de banda mítica, mejora 11 objetos de héroe 3/6 una vez cada uno" },
            { id = "cbfb6966", text = "Mítico: si tienes suerte y consigues un objeto de pista mítica, pasa al consejo de mejoras de la semana que viene para él." },
            { id = "0e855644", text = "Seguimiento de crestalboradas: 220/220 Heroicas, 0/220 Míticas – no acumules nunca Míticas" },
            { id = "721f006f", text = "Nivel de objeto final: 4x266, 11x269" },
        },
    },

    {
        id = "b0abc363",
        title = "Semana 3 - 31 de marzo - Abre la banda final",
        items = {
            { id = "1fbc825e", text = "Abre la Gran Cámara (objeto mítico 272+) - mejora después de craftear" },
            { id = "fb8255a7", text = "Craftea objetos – mira la guía para 2 caminos a elegir" },
            { id = "8226c872", text = "Si no tienes 4p, haz LFR para piezas de conjunto (mira la guía para saber por qué)" },
            { id = "1db5f946", text = "Farmea +10 para Gran Cámara + crestalboradas" },
            { id = "c316485a", text = "Heroico: mejora 2 de tus objetos 269 4/6 a 276 6/6 por 80 crestalboradas heroicas" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 crestalboradas heroicas. Mejora tu objeto 272 de pista mítica 1/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "484da4b0", text = "Si conseguiste un 2º objeto de pista mítica, pasa al consejo de mejoras de la semana que viene para él." },
            { id = "0ecf8e89", text = "Seguimiento de crestalboradas: 320/320 Heroicas, 160/320 Míticas – no acumules nunca Míticas" },
            { id = "02884180", text = "Nivel de objeto final: 3x266, 8x269, 2x276h, 1x285(crafteado), 1x289" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abril",
        items = {
            { id = "9375e497", text = "Abre la Gran Cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10 para Gran Cámara + crestalboradas" },
            { id = "c316485a", text = "Heroico: mejora 2 de tus objetos 269 4/6 a 276 6/6 por 80 crestalboradas heroicas" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 crestalboradas heroicas. Mejora tu objeto 272 de pista mítica 1/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín de banda 275 de pista mítica 2/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "299f3284", text = "Seguimiento de crestalboradas: 420/400 Heroicas, 320/420 Míticas – no acumules nunca Míticas" },
            { id = "8b8cde46", text = "Nivel de objeto final: 2x266, 5x269, 4x276h, 1x285(crafteado), 3x289" },
        },
    },

    {
        id = "239053b5",
        title = "Semana 5 - 14 de abril",
        items = {
            { id = "9375e497", text = "Abre la Gran Cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10 para Gran Cámara + crestalboradas" },
            { id = "11e426da", text = "Craftea el siguiente objeto (mira el documento para más info)" },
            { id = "c316485a", text = "Heroico: mejora 2 de tus objetos 269 4/6 a 276 6/6 por 80 crestalboradas heroicas" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 crestalboradas heroicas. Mejora tu objeto 272 de pista mítica 1/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "8d74c3e1", text = "Seguimiento de crestalboradas: 520/520 Heroicas, 480/520 Míticas – no acumules nunca Míticas" },
            { id = "4f04ba4e", text = "Nivel de objeto final: 1x266, 2x269, 6x276h, 2x285(crafteado), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semana 6 - 21 de abril - Terminado con crestalboradas heroicas",
        items = {
            { id = "9375e497", text = "Abre la Gran Cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10 para Gran Cámara + crestalboradas" },
            { id = "c35cf0b6", text = "Heroico: mejora tu último objeto 269 4/6 a 276 6/6 por 40 crestalboradas heroicas" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 crestalboradas heroicas. Mejora tu objeto 272 de pista mítica 1/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín de banda 275 de pista mítica 2/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "4510d1aa", text = "Seguimiento de crestalboradas: 560/620 Heroicas, 620/620 Míticas – no acumules nunca Míticas" },
            { id = "67f84375", text = "Nivel de objeto final: 7x276h, 2x285(crafteado), 1x285, 5x289" },
        },
    },

    {
        id = "fd1bf82c",
        title = "Semana 7 - 28 de abril+",
        items = {
            { id = "f9978f0e", text = "No craftees si puedes conseguir objetos de la Gran Cámara superiores a 1/6" },
            { id = "66e83cc1", text = "Mejora los objetos míticos conforme los consigas, priorizando saltarlos a 289 por el salto de +4" },
            { id = "a90c240c", text = "Planifica un posible cambio a 1M + mano secundaria crafteada" },
            { id = "10aac768", text = "¡Disfruta del mucho mejor sistema de mejoras de Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
