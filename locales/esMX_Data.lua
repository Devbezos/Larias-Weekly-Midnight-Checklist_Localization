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
        id = "bd6b2f68",
        title = "Acceso Anticipado - 26 de febrero al 2 de marzo",
        items = {
            { id = "f4b92a82", text = "Inicia sesión con cada personaje que planees subir de nivel para que empiecen a acumular experiencia de descanso." },
            { id = "90db618c", text = "Sube personajes con modo de guerra activado al 90 - La FDL abre el domingo para obtener 10% más de exp." },
            { id = "6af1d802", text = "Completa el Asalto de Stormarion semanal en la Tormenta del Vacío. (Está disponible en Acceso Anticipado)" }, -- ⚠️ UNVERIFIED
            { id = "35bc0cfd", text = "(Opcional) Mata cada raro una vez en cada zona para renombre. Estos tienen un bloqueo semanal para cada raro." },
            { id = "2687fe6c", text = "Busca los tesoros de cada región para obtener Renombre gratis. Ve la guía en el documento" },
            { id = "91e7ee6c", text = "Completa 4 Presas en dificultad normal para renombre" }, -- ⚠️ UNVERIFIED
            { id = "8bf4f442", text = "Completa el logro Cazador de Tradiciones de Medianoche para renombre - ve la guía en el documento" }, -- ⚠️ UNVERIFIED
            { id = "c886190c", text = "Completa el logro Picos Más Altos para renombre - ve la guía en el documento" }, -- ⚠️ UNVERIFIED
            { id = "f9b8eb01", text = "Completa cadenas de misiones secundarias para renombre. (se pueden hacer con alts para subir de nivel al mismo tiempo). El bonus de FDL no da renombre." },
            { id = "4aa4b47d", text = "Nota: Solo los objetos de campeón de Singularidad Y Canto Eterno están disponibles en el acceso anticipado - los demás estarán disponibles el lunes después del lanzamiento oficial o después del reinicio semanal de cada región." },
            { id = "ba1890e4", text = "Completa el evento semanal Fiesta de Saltheril en Bosque Canción Eterna. No olvides tomar la misión de renombre para el yelmo de campeón si tienes el renombre" },
        },
    },

    {
        id = "50281d6f",
        title = "Pretemporada semana 1 - 3 de marzo - M0",
        items = {
            { id = "727109d8", text = "No gastes ninguna Blasón hasta que se te indique. Ve la guía para saber por qué guardamos blasones." },
            { id = "5a2e9ede", text = "NO FABRICAR" },
            { id = "c06ee1a3", text = "Si estás en un alt y no ves algunas de estas misiones, ve con Soridormi en la Posada de Ciudad de Lunargenta y elige \"Detuve la Tormenta del Vacío\" para saltar la campaña." }, -- ⚠️ UNVERIFIED
            { id = "44fbfe51", text = "Sube el renombre de La Singularidad a rango 7 para obtener un abalorio de campeón 1/6 - se obtiene de una misión del vendedor de renombre (no se compra)" },
            { id = "02ceff50", text = "Sube el renombre de Hara'ti a rango 8 para obtener un cinturón de campeón 1/6 - se obtiene de una misión del vendedor de renombre (no se compra)" },
            { id = "cdea3773", text = "Sube el renombre de Lunadeplata a rango 9 para obtener un yelmo de campeón 1/6 - se obtiene de una misión del vendedor de renombre (no se compra)" },
            { id = "19687ed0", text = "Sube el renombre de Tribu Amani a rango 9 para obtener un collar de campeón 1/6 - se obtiene de una misión del vendedor de renombre (no se compra)" },
            { id = "101e78a9", text = "Completa la misión semanal de mazmorra de Halduron Ala Luminosa para 1000 de renombre" }, -- ⚠️ UNVERIFIED
            { id = "0c3b8835", text = "Completa la misión semanal de evento mundial para alijo cumbre de Lady Liadrin - puedes tomar la misión de evento semanal y hacerla con los eventos siguientes" }, -- ⚠️ UNVERIFIED
            { id = "879d3833", text = "Completa la misión semanal de gira mundial de Lorthremar para chispa haciendo las siguientes misiones" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en los Bosques Siempreverd." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Tormarión semanal en la Tormenta del Vacío." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada raro una vez en cada zona para renombre. Estos tienen un bloqueo semanal para cada raro." },
            { id = "1b42ce30", text = "Si no está hecho, busca los tesoros de cada región, cazador de tradiciones y picos altos para obtener Renombre gratis. Ve la guía en el documento" }, -- ⚠️ UNVERIFIED
            { id = "a892ac44", text = "Desbloquea Cavernas hasta el nivel 8" },
            { id = "9bc44f02", text = "Completa 2 Presas Difíciles para equipo Veterano en cada personaje - si solo tienes un personaje, haz 4 en un personaje para renombre" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pretemporada semana 2 - 10 de marzo - M0",
        items = {
            { id = "727109d8", text = "No gastes ninguna Blasón hasta que se te indique. Ve la guía para saber por qué guardamos blasones." },
            { id = "5a2e9ede", text = "NO FABRICAR" },
            { id = "75c5fe6e", text = "Si no completado, continúa subiendo la reputación para piezas de campeón" },
            { id = "101e78a9", text = "Completa la misión semanal de mazmorra de Halduron Ala Luminosa para 1000 de renombre" }, -- ⚠️ UNVERIFIED
            { id = "0c3b8835", text = "Completa la misión semanal de evento mundial para alijo cumbre de Lady Liadrin - puedes tomar la misión de evento semanal y hacerla con los eventos siguientes" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en los Bosques Siempreverd." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Tormarión semanal en la Tormenta del Vacío." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada raro una vez en cada zona para renombre. Estos tienen un bloqueo semanal para cada raro." },
            { id = "23cb93ed", text = "Desbloquea Cavernas hasta el nivel 8 si aún no lo has hecho" },
            { id = "9bc44f02", text = "Completa 2 Presas Difíciles para equipo Veterano en cada personaje - si solo tienes un personaje, haz 4 en un personaje para renombre" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "c33e5c84", text = "Si raideas el martes 17, craftea. Mira el documento para más info." },
        },
    },

    {
        id = "33a3fcba",
        title = "Temporada 1 semana 1 - 17 de marzo - Semana heroica",
        items = {
            { id = "727109d8", text = "No gastes ninguna Blasón hasta que se te indique. Ve la guía para saber por qué guardamos blasones." },
            { id = "5b379666", text = "Haz LFR para piezas de conjunto (mira la guía para saber por qué)" },
            { id = "879d3833", text = "Completa la misión semanal de gira mundial de Lorthremar para chispa haciendo las siguientes misiones" }, -- ⚠️ UNVERIFIED
            { id = "9686fde4", text = "Completa la misión semanal de vivienda de Vaeli para obtener ¿blasones de héroe? (se actualizará cuando esté disponible)" },
            { id = "952916cd", text = "(Opcional) Completa una Gira Mundial de mazmorras M0 - recompensa nivel de objeto de campeón" }, -- ⚠️ UNVERIFIED
            { id = "22842538", text = "Completa 2 Presas de Pesadilla para equipo de Campeón en cada personaje" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Mata al jefe del mundo para un objeto de campeón 2/6 ilvl 250" },
            { id = "3e0dfde7", text = "Si disponible, completa la misión JcJ para collar/anillo de héroe garantizado" },
            { id = "b6846065", text = "Haz cavernas abundantes de nivel 8 o superior, usa el mapa en caverna de nivel 8+ - mientras lo haces, desbloquea cavernas de nivel 11" },
            { id = "eff76e73", text = "Antes de raid, craftea 2 piezas ilvl 246, 2 adornos en huecos débiles, usa 160 crestalboradas de veterano" },
            { id = "2af0bfb5", text = "Antes de raid, gasta todas las crestalboradas de aventurero, veterano y campeón mejorándolo todo" },
            { id = "5768e0fe", text = "Seguimiento de crestalboradas: 0/100 Heroicas, 0/100 Míticas" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, abren M+, tómate el día libre giganerd",
        items = {
            { id = "727109d8", text = "No gastes ninguna Blasón hasta que se te indique. Ve la guía para saber por qué guardamos blasones." },
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
