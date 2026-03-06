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
            { id = "6762e305", text = "(Opcional) Mata cada raro una vez en cada zona para renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "0394cb0d", text = "Busca los tesoros de cada región para obtener Renombre gratis. Consulta la guía para más información" },
            { id = "91e7ee6c", text = "Completa 4 Presas en dificultad normal para renombre" }, -- ⚠️ UNVERIFIED
            { id = "c699a5d6", text = "Completa el logro Cazador de Historia de Midnight para renombre - Consulta la guía para más información" }, -- ⚠️ UNVERIFIED
            { id = "cfd4a904", text = "Completa el logro Picos Más Altos para renombre - Consulta la guía para más información" }, -- ⚠️ UNVERIFIED
            { id = "f9b8eb01", text = "Completa cadenas de misiones secundarias para renombre. (se pueden hacer con alts para subir de nivel al mismo tiempo). El bonus de FDL no da renombre." },
            { id = "4aa4b47d", text = "Nota: Solo los objetos de campeón de Singularidad Y Canto Eterno están disponibles en el acceso anticipado - los demás estarán disponibles el lunes después del lanzamiento oficial o después del reinicio semanal de cada región." },
            { id = "ba1890e4", text = "Completa el evento semanal Fiesta de Saltheril en Bosque Canción Eterna. No olvides tomar la misión de renombre para el yelmo de campeón si tienes el renombre" },
        },
    },

    {
        id = "50281d6f",
        title = "Pretemporada semana 1 - 3 de marzo - M0",
        items = {
            { id = "ebe944e7", text = "Guarda 160 blasones de Veterano para fabricar 2 objetos de Veterano con Adornos" },
            { id = "5a2e9ede", text = "NO FABRICAR" },
            { id = "c06ee1a3", text = "Si estás en un alt y no ves algunas de estas misiones, ve con Soridormi en la Posada de Ciudad de Lunargenta y elige \"Detuve la Tormenta del Vacío\" para saltar la campaña." }, -- ⚠️ UNVERIFIED
            { id = "755d27e7", text = "Sube el renombre de La Singularidad al rango 7 para obtener un alhaja de campeón 1/6 - proviene de una misión del vendedor de renombre" }, -- ⚠️ UNVERIFIED
            { id = "f213fee8", text = "Sube el renombre de Hara'ti al rango 8 para obtener un cinturón de campeón 1/6 - proviene de una misión del vendedor de renombre" },
            { id = "81fd810d", text = "Sube el renombre de Luna de Plata al rango 9 para obtener un yelmo de campeón 1/6 - proviene de una misión del vendedor de renombre" },
            { id = "804b15e3", text = "Sube el renombre de Tribu Amani al rango 9 para obtener un collar de campeón 1/6 - proviene de una misión del vendedor de renombre" },
            { id = "101e78a9", text = "Completa la misión semanal de mazmorra de Halduron Ala Luminosa para 1000 de renombre" }, -- ⚠️ UNVERIFIED
            { id = "0c3b8835", text = "Completa la misión semanal de evento mundial para alijo cumbre de Lady Liadrin - puedes tomar la misión de evento semanal y hacerla con los eventos siguientes" }, -- ⚠️ UNVERIFIED
            { id = "879d3833", text = "Completa la misión semanal de gira mundial de Lorthremar para chispa haciendo las siguientes misiones" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en los Bosques Siempreverd." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Tormarión semanal en la Tormenta del Vacío." },
            { id = "6762e305", text = "(Opcional) Mata cada raro una vez en cada zona para renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "666a0192", text = "Si no lo has hecho, busca los tesoros de cada región, cazador de historia y picos altos para obtener Renombre gratis. Consulta la guía para más información." },
            { id = "a892ac44", text = "Desbloquea Cavernas hasta el nivel 8" },
            { id = "d54f7430", text = "Completa 4x Presa Difícil. Las primeras 2 darán equipo Veterano; las 4 darán Emblemas Veteranas que necesitas para llegar al límite." },
            { id = "efb035ba", text = "(Opcional) Completa 2x Presa Difícil aleatorias para emblemas Veteranos en cada personaje - hacer 2x opcionales por semana alcanzará el límite de emblemas Veteranos al final de la semana 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "c60d586a", text = "Información del parche urgente del jueves 5 de marzo: Blizzard aplicó un parche urgente con la capacidad de obtener un logro que reduce el costo de mejorar tus blasones en un 50% en tu cuenta una vez que un personaje tenga 237 en cada ranura. Consulta la guía para más información." },
            { id = "77405dc2", text = "Nuevo: Si solo tienes un personaje, después de completar tu primer recorrido mundial de mazmorras M0 puedes gastar blasones de Aventurero en los objetos restantes." },
            { id = "95531889", text = "Nuevo: Si tienes múltiples personajes, una vez que hayas obtenido el nuevo logro, puedes mejorar libremente en todos los demás personajes." },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pretemporada semana 2 - 10 de marzo - M0",
        items = {
            { id = "ebe944e7", text = "Guarda 160 blasones de Veterano para fabricar 2 objetos de Veterano con Adornos" },
            { id = "5a2e9ede", text = "NO FABRICAR" },
            { id = "75c5fe6e", text = "Si no completado, continúa subiendo la reputación para piezas de campeón" },
            { id = "101e78a9", text = "Completa la misión semanal de mazmorra de Halduron Ala Luminosa para 1000 de renombre" }, -- ⚠️ UNVERIFIED
            { id = "e0ecce24", text = "Completa la misión del evento mundial semanal para obtener alijo cumbre y chispa de Lady Liadrin" },
            { id = "8b55f0c7", text = "(Opcional) Completa la Velada de Saltheril semanal en el Bosque Canción Eterna." },
            { id = "8e107032", text = "(Opcional) Completa el Evento de Abundancia semanal en Zul'aman." },
            { id = "d5a12c89", text = "(Opcional) Completa el evento Leyendas de los Haranir semanal en Harandar." }, -- ⚠️ UNVERIFIED
            { id = "514a6926", text = "(Opcional) Completa el Asalto Estomarion semanal en la Tormenta del Vacío." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Opcional) Mata cada raro una vez en cada zona para renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "23cb93ed", text = "Desbloquea Cavernas hasta el nivel 8 si aún no lo has hecho" },
            { id = "d54f7430", text = "Completa 4x Presa Difícil. Las primeras 2 darán equipo Veterano; las 4 darán Emblemas Veteranas que necesitas para llegar al límite." },
            { id = "efb035ba", text = "(Opcional) Completa 2x Presa Difícil aleatorias para emblemas Veteranos en cada personaje - hacer 2x opcionales por semana alcanzará el límite de emblemas Veteranos al final de la semana 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "dc01eba9", text = "Si te quedan piezas de aventurero, siéntete libre de mejorarlas." },
            { id = "f2af7330", text = "Si haces bandas el martes 17, crea objetos. Consulta la guía para más información." },
        },
    },

    {
        id = "33a3fcba",
        title = "Temporada 1 semana 1 - 17 de marzo - Semana heroica",
        items = {
            { id = "36d21691", text = "No gastes ningún blasón Heroico o Mítico hasta que se te indique. Consulta la guía sobre por qué guardamos blasones." },
            { id = "e66847d8", text = "Haz LFR para piezas de banda - obtener una bonificación 4 set permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "e0ecce24", text = "Completa la misión del evento mundial semanal para obtener alijo cumbre y chispa de Lady Liadrin" },
            { id = "9686fde4", text = "Completa la misión de vivienda semanal de Vaeli para ¿emblemas de héroe? (se actualizará cuando salga en vivo)" }, -- ⚠️ UNVERIFIED
            { id = "ca5a8044", text = "Si está disponible, completa la misión JcJ para obtener collar/anillo de héroe garantizado - tal vez se pueda hacer con la clasificación JcJ opcional de abajo" },
            { id = "d8d237fa", text = "(Opcional) Sube la clasificación JcJ a 1600 para obtener una carga de catalizador (esta es la misma carga de catalizador compartida con la puntuación de 2,000 M+ de la próxima semana). Si obtienes 2 piezas de banda esta semana, esto te permitiría catalizar 2 objetos y comenzar a obtener cargas de Catalizador de tus m+ la próxima semana." },
            { id = "45c7d35b", text = "(Opcional) Completa un Tour Mundial de mazmorras M0 - recompensa nvl de objeto de campeón - bloqueo diario" },
            { id = "22842538", text = "Completa 2 Presas de Pesadilla para equipo de Campeón en cada personaje" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Mata al jefe del mundo para un objeto de campeón 2/6 ilvl 250" },
            { id = "b6846065", text = "Haz cavernas abundantes de nivel 8 o superior, usa el mapa en caverna de nivel 8+ - mientras lo haces, desbloquea cavernas de nivel 11" },
            { id = "8c700b67", text = "Antes de la incursión, fabrica 2 piezas de nivel de objeto 246, 2 adornos en ranuras débiles, usa 160 blasones de Vet. Estos no requieren Chispas." },
            { id = "679a07b9", text = "Antes de la banda, gasta todas las Emblemas de Aventurero, Veterano y Campeón mejorando cualquier cosa. No gastes emblemas Heroicas o Míticas." },
            { id = "5768e0fe", text = "Seguimiento de crestalboradas: 0/100 Heroicas, 0/100 Míticas" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, abren M+, tómate el día libre giganerd",
        items = {
            { id = "36d21691", text = "No gastes ningún blasón Heroico o Mítico hasta que se te indique. Consulta la guía sobre por qué guardamos blasones." },
            { id = "e0ecce24", text = "Completa la misión del evento mundial semanal para obtener alijo cumbre y chispa de Lady Liadrin" },
            { id = "9686fde4", text = "Completa la misión de vivienda semanal de Vaeli para ¿emblemas de héroe? (se actualizará cuando salga en vivo)" }, -- ⚠️ UNVERIFIED
            { id = "4056a14a", text = "Si no tienes 4 set, haz LFR para piezas de banda - obtener una bonificación 4 set permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "16cf341e", text = "(Opcional) Mata al jefe del mundo para un objeto de campeón 2/6 ilvl 250" },
            { id = "4aa82ede", text = "(Opcional) Completa 2x Presa Pesadilla para obtener equipo de Campeón en cada personaje" },
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
