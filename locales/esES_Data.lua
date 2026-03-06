--[[
Spanish (Spain) (esES) checklist data for Larias's Weekly Checklist

NOTE: IDs are kept identical to the enUS dataset so completion tracking stays consistent
across locales.
]]
if GetLocale() ~= "esES" and not _G["LARIASWEEKLYCHECKLIST_LOAD_ALL_LOCALES"] then return end

local LOCALE = "esES"

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
            { id = "f4b92a82", text = "Inicia sesión con cada personaje que planees subir de nivel para que empiecen a acumular EXP de descanso." },
            { id = "90db618c", text = "Sube personajes hasta nivel 90 con modo guerra activado - La FLO abre el domingo para 10% más de exp." },
            { id = "6af1d802", text = "Completa el Asalto de Tormarión semanal en la Tormenta del Vacío. (Está disponible en Acceso Anticipado)" }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Opcional) Mata a cada raro una vez en cada zona para obtener renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "0394cb0d", text = "Busca los tesoros de cada región para conseguir Renombre gratis. Consulta la guía para más información" },
            { id = "91e7ee6c", text = "Completa 4x Presa en dificultad normal para renombre" }, -- ⚠️ UNVERIFIED
            { id = "c699a5d6", text = "Completa el logro Cazador de Tradiciones de Medianoche para renombre - Consulta la guía para más información" }, -- ⚠️ UNVERIFIED
            { id = "cfd4a904", text = "Completa el logro Picos Más Altos para renombre - Consulta la guía para más información" }, -- ⚠️ UNVERIFIED
            { id = "f9b8eb01", text = "Completa cadenas de misiones secundarias para renombre. (se puede hacer con alts para subir de nivel al mismo tiempo). El bonus de FLO no otorga renombre." },
            { id = "4aa4b47d", text = "Nota: Solo los objetos de campeón de La Singularidad Y Eversong están disponibles en el acceso anticipado - los demás estarán disponibles el lunes después del lanzamiento oficial o tras el reinicio semanal de cada región." },
            { id = "ba1890e4", text = "Completa la Velada de Saltheril semanal en el Bosque de Canción Eterna. No olvides conseguir la misión de renombre para el yelmo de campeón si tienes el renombre" },
        },
    },

    {
        id = "50281d6f",
        title = "Pretemporada semana 1 - 3 de marzo - M0",
        items = {
            { id = "ebe944e7", text = "Guarda 160 emblemas de Veterano para fabricar 2 objetos de Veterano con Adornos" },
            { id = "5a2e9ede", text = "NO FABRICAR" },
            { id = "c06ee1a3", text = "Si estás en un alt y no ves algunas de estas misiones, ve a Soridormi en la Posada de Lunargenta y elige \"Detuve la Tormenta del Vacío\" para saltarte la campaña." }, -- ⚠️ UNVERIFIED
            { id = "755d27e7", text = "Sube el renombre de La Singularidad al rango 7 para conseguir un abalorios 1/6 de campeón - viene de una misión del vendedor de renombre" },
            { id = "f213fee8", text = "Sube el renombre de Hara'ti al rango 8 para conseguir un cinturón 1/6 de campeón - viene de una misión del vendedor de renombre" },
            { id = "81fd810d", text = "Sube el renombre de Luna Argenta al rango 9 para conseguir un yelmo 1/6 de campeón - viene de una misión del vendedor de renombre" },
            { id = "804b15e3", text = "Sube el renombre de Tribu Amani al rango 9 para conseguir un collar 1/6 de campeón - viene de una misión del vendedor de renombre" },
            { id = "101e78a9", text = "Completa la misión semanal de mazmorras de Halduron Ala Luminosa para 1000 de renombre" }, -- ⚠️ UNVERIFIED
            { id = "0c3b8835", text = "Completa la misión semanal de evento de mundo para cofre de pináculo de Lady Liadrin - puedes recoger la misión de evento semanal y hacerla con los eventos de abajo" }, -- ⚠️ UNVERIFIED
            { id = "879d3833", text = "Completa la misión semanal de gira mundial de Lorthremar para chispa haciendo las misiones de abajo" }, -- ⚠️ UNVERIFIED
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en el Bosque Canción Eterna." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Stormarion semanal en la Tormenta del vacío." },
            { id = "6762e305", text = "(Opcional) Mata a cada raro una vez en cada zona para obtener renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "666a0192", text = "Si no lo has hecho, busca los tesoros de cada región, cazador de tradiciones y picos altos para conseguir Renombre gratis. Consulta la guía para más información." }, -- ⚠️ UNVERIFIED
            { id = "a892ac44", text = "Desbloquea las Profundidades hasta el nivel 8" },
            { id = "d54f7430", text = "Completa 4 Presa Difícil. Las 2 primeras darán equipo de Veterano; las 4 darán Blasones de Veterano que necesitas para alcanzar el límite." },
            { id = "efb035ba", text = "(Opcional) Completa 2 Presa Difícil aleatorias para obtener blasones Veteranos en cada personaje - haciendo 2 opcionales por semana alcanzarás el límite de blasones Veteranos al final de la semana 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "c60d586a", text = "Información del parche rápido del jueves 5 de marzo: Blizzard ha implementado mediante parche rápido la capacidad de conseguir un logro que reduce el coste de mejorar tus emblemas en un 50% en tu cuenta una vez que un personaje tenga 237 en cada ranura. Consulta la guía para más información." },
            { id = "77405dc2", text = "Nuevo: Si solo tienes un personaje, después de completar tu primera ronda mundial de mazmorras M0 puedes gastar emblemas de Aventurero en los objetos restantes." },
            { id = "95531889", text = "Nuevo: Si tienes múltiples personajes, una vez que hayas conseguido el nuevo logro, puedes mejorar libremente en todos los demás personajes." },
        },
    },

    {
        id = "ff1f5a67",
        title = "Pretemporada semana 2 - 10 de marzo - M0",
        items = {
            { id = "ebe944e7", text = "Guarda 160 emblemas de Veterano para fabricar 2 objetos de Veterano con Adornos" },
            { id = "5a2e9ede", text = "NO FABRICAR" },
            { id = "75c5fe6e", text = "Si no está completo, continúa subiendo reputación para piezas de campeón" },
            { id = "101e78a9", text = "Completa la misión semanal de mazmorras de Halduron Ala Luminosa para 1000 de renombre" }, -- ⚠️ UNVERIFIED
            { id = "e0ecce24", text = "Completa la misión semanal del evento mundial para conseguir alijo cumbre y chispa de Lady Liadrin" },
            { id = "8b55f0c7", text = "(Opcional) Completa el evento semanal Velada de Saltheril en el Bosque Canción Eterna." },
            { id = "8e107032", text = "(Opcional) Completa el evento semanal de Abundancia en Zul'aman." },
            { id = "d5a12c89", text = "(Opcional) Completa el evento semanal Leyendas de los Haranir en Harandar." }, -- ⚠️ UNVERIFIED
            { id = "514a6926", text = "(Opcional) Completa el Asalto de Tormarion semanal en la Tormenta del Vacío." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Opcional) Mata a cada raro una vez en cada zona para obtener renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "23cb93ed", text = "Desbloquea las Profundidades hasta el nivel 8 si aún no lo has hecho" },
            { id = "d54f7430", text = "Completa 4 Presa Difícil. Las 2 primeras darán equipo de Veterano; las 4 darán Blasones de Veterano que necesitas para alcanzar el límite." },
            { id = "efb035ba", text = "(Opcional) Completa 2 Presa Difícil aleatorias para obtener blasones Veteranos en cada personaje - haciendo 2 opcionales por semana alcanzarás el límite de blasones Veteranos al final de la semana 2" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "dc01eba9", text = "Si te quedan piezas de aventurero, deberías sentirte libre de mejorarlas." },
            { id = "f2af7330", text = "Si haces incursión el martes 17, fabrica. Consulta la guía para más información." },
        },
    },

    {
        id = "33a3fcba",
        title = "Temporada 1 semana 1 - 17 de marzo - Semana heroica",
        items = {
            { id = "36d21691", text = "No gastes ningún emblema Heroico o Mítico hasta que se te indique. Consulta la guía para saber por qué guardamos los emblemas." },
            { id = "e66847d8", text = "Haz BBR para piezas de conjunto - obtener un bonus de conjunto de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "e0ecce24", text = "Completa la misión semanal del evento mundial para conseguir alijo cumbre y chispa de Lady Liadrin" },
            { id = "9686fde4", text = "Completa la misión semanal de hogar de Vaeli para ¿blasones de héroe? (se actualizará cuando esté disponible)" },
            { id = "ca5a8044", text = "Si está disponible, completa la misión JcJ para conseguir collar/anillo de héroe garantizado - puede hacerse con la clasificación JcJ opcional de abajo" },
            { id = "d8d237fa", text = "(Opcional) Sube la clasificación JcJ a 1600 para conseguir carga de catalizador (esta es la misma carga de catalizador compartida con 2.000 de valoración M+ de la semana siguiente). Si consigues 2 piezas de conjunto de tu incursión esta semana, esto te permitiría catalizar 2 objetos y empezar a conseguir cargas de Catalizador de tus m+ la semana siguiente." },
            { id = "45c7d35b", text = "(Opcional) Completa una Gira Mundial de mazmorras M0 - recompensa nvl de objeto de campeón - bloqueo diario" },
            { id = "22842538", text = "Completa 2x Presa Pesadilla para equipo de Campeón en cada personaje" }, -- ⚠️ UNVERIFIED
            { id = "dc0e2686", text = "Mata al jefe del mundo para objeto campeón 2/6 nivel 250" },
            { id = "b6846065", text = "Haz Profundidades abundantes de nivel 8 o superior, usa el mapa en Profundidades de nivel 8+ - mientras lo haces, desbloquea las Profundidades de nivel 11" },
            { id = "8c700b67", text = "Antes de la banda, fabrica 2 piezas de nivel de objeto 246, 2 adornos en ranuras débiles, usa 160 emblemas de Vet. Estos no requieren Chispas." },
            { id = "679a07b9", text = "Antes de la incursión, gasta todos los Blasones de Aventurero, Veterano y Campeón mejorando cualquier cosa. No gastes blasones Heroicos o Míticos." },
            { id = "5768e0fe", text = "Control de blasones: 0/100 Heroicos, 0/100 Míticos" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, M+ abre, pedid vacaciones frikis",
        items = {
            { id = "36d21691", text = "No gastes ningún emblema Heroico o Mítico hasta que se te indique. Consulta la guía para saber por qué guardamos los emblemas." },
            { id = "e0ecce24", text = "Completa la misión semanal del evento mundial para conseguir alijo cumbre y chispa de Lady Liadrin" },
            { id = "9686fde4", text = "Completa la misión semanal de hogar de Vaeli para ¿blasones de héroe? (se actualizará cuando esté disponible)" },
            { id = "4056a14a", text = "Si no tienes conjunto de 4 piezas, haz BBR para piezas de conjunto - obtener un bonus de conjunto de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "16cf341e", text = "(Opcional) Mata al jefe del mundo para objeto campeón 2/6 nivel 250" },
            { id = "4aa82ede", text = "(Opcional) Completa 2 Presa Pesadilla para conseguir equipo de Campeón en cada personaje" },
            { id = "26d0b610", text = "Haz al menos una Profundidad abundante T11 para obtener la misión de la Piedra de Runas resquebrajada" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continúa gastando todos los blasones de aventurero, veterano y campeón mejorándolo todo" },
            { id = "74924a7b", text = "Farmea +10s para equipo niv. 266 en cada hueco" },
            { id = "eb45e64d", text = "Antes de la banda mítica: mejora 11 objetos héroe 3/6 una vez cada uno" },
            { id = "cbfb6966", text = "Mítico: si tienes un objeto de pista mítica, pasa a los consejos de mejora de la semana siguiente." },
            { id = "0e855644", text = "Control de blasones: 220/220 Heroicos, 0/220 Míticos – nunca guardes Blasones Míticos" },
            { id = "721f006f", text = "Nivel de objeto final: 4x266, 11x269" },
        },
    },

    {
        id = "b0abc363",
        title = "Semana 3 - 31 de marzo - Abre la banda final",
        items = {
            { id = "1fbc825e", text = "Abre la Gran Cámara (objeto mítico 272+) – mejora tras fabricar" },
            { id = "8226c872", text = "Si no tienes 4 piezas de conjunto: haz LFR (consulta la guía para saber por qué)" },
            { id = "1db5f946", text = "Farmea +10s para Gran Cámara + blasones" },
            { id = "c316485a", text = "Heroico: mejora 2 de tus objetos 269 4/6 a 276 6/6 por 80 blasones heroicos" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 por 20 blasones heroicos. Mejora tu objeto de pista mítica 272 1/6 a 6/6 289 por 80 blasones míticos." },
            { id = "484da4b0", text = "Si tienes un 2.º objeto de pista mítica, pasa a los consejos de mejora de la semana siguiente." },
            { id = "0ecf8e89", text = "Control de blasones: 320/320 Heroicos, 160/320 Míticos – nunca guardes Blasones Míticos" },
            { id = "02884180", text = "Nivel de objeto final: 3x266, 8x269, 2x276h, 1x285(fabricado), 1x289" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abril",
        items = {
            { id = "9375e497", text = "Abre la Gran Cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10s para Gran Cámara + blasones" },
            { id = "c316485a", text = "Heroico: mejora 2 de tus objetos 269 4/6 a 276 6/6 por 80 blasones heroicos" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 por 20 blasones heroicos. Mejora tu objeto de pista mítica 272 1/6 a 6/6 289 por 80 blasones míticos." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín 275 de pista mítica 2/6 a 6/6 289 por 80 blasones míticos." },
            { id = "299f3284", text = "Control de blasones: 420/400 Heroicos, 320/420 Míticos – nunca guardes Blasones Míticos" },
            { id = "8b8cde46", text = "Nivel de objeto final: 2x266, 5x269, 4x276h, 1x285(fabricado), 3x289" },
        },
    },

    {
        id = "239053b5",
        title = "Semana 5 - 14 de abril",
        items = {
            { id = "9375e497", text = "Abre la Gran Cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10s para Gran Cámara + blasones" },
            { id = "11e426da", text = "Fabrica el siguiente objeto (consulta el documento para más información)" },
            { id = "c316485a", text = "Heroico: mejora 2 de tus objetos 269 4/6 a 276 6/6 por 80 blasones heroicos" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 por 20 blasones heroicos. Mejora tu objeto de pista mítica 272 1/6 a 6/6 289 por 80 blasones míticos." },
            { id = "8d74c3e1", text = "Control de blasones: 520/520 Heroicos, 480/520 Míticos – nunca guardes Blasones Míticos" },
            { id = "4f04ba4e", text = "Nivel de objeto final: 1x266, 2x269, 6x276h, 2x285(fabricado), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semana 6 - 21 de abril - Blasones heroicos terminados",
        items = {
            { id = "9375e497", text = "Abre la Gran Cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10s para Gran Cámara + blasones" },
            { id = "c35cf0b6", text = "Heroico: mejora tu último objeto 269 4/6 a 276 6/6 por 40 blasones heroicos" },
            { id = "2568bd36", text = "Mítico: si tu objeto de la Gran Cámara era 1/6, mejora primero su equivalente heroico a 6/6 por 20 blasones heroicos. Mejora tu objeto de pista mítica 272 1/6 a 6/6 289 por 80 blasones míticos." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín 275 de pista mítica 2/6 a 6/6 289 por 80 blasones míticos." },
            { id = "4510d1aa", text = "Control de blasones: 560/620 Heroicos, 620/620 Míticos – nunca guardes Blasones Míticos" },
            { id = "67f84375", text = "Nivel de objeto final: 7x276h, 2x285(fabricado), 1x285, 5x289" },
        },
    },

    {
        id = "fd1bf82c",
        title = "Semana 7 - 28 de abril+",
        items = {
            { id = "f9978f0e", text = "No fabriques si puedes obtener objetos de la Gran Cámara superiores a 1/6" },
            { id = "66e83cc1", text = "Mejora los objetos míticos conforme los consigas, priorizando el salto a 289 para el +4" },
            { id = "a90c240c", text = "Planifica un posible cambio a arma a 1M + mano secundaria fabricada" },
            { id = "10aac768", text = "¡Disfruta del mucho mejor sistema de mejoras de Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
