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
            { id = "79c35167", text = "Guarda 160 blasones de Veterano para artesanía - consulta más abajo para obtener instrucciones (Estos no requieren Chispas)" },
            { id = "e8cef00e", text = "Consulta la Guía sobre qué y cuándo fabricar." },
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
            { id = "79c35167", text = "Guarda 160 blasones de Veterano para artesanía - consulta más abajo para obtener instrucciones (Estos no requieren Chispas)" },
            { id = "b4de098c", text = "Nota especial para clases de doble empuñadura - probablemente puedas fabricar tu objeto de chispa ahora. Consulta la Guía para saber qué y cuándo fabricar." },
            { id = "d8f307f2", text = "Alerta de actualización de la guía de texto: He actualizado los consejos de fabricación de Chispa para todas y cada una de las clases. Muy recomendable que Consultes la Guía con la nueva información." },
            { id = "0d50e744", text = "NA: Blizzard ha aplicado una corrección urgente añadiendo una misión de chispa JcE de Liadrin. Si ya has completado la de JcJ, puedes omitir esta ya que no otorga una cuarta chispa. Si no has completado ninguna misión de chispa esta semana, completa la de Liadrin para obtener tu tercera chispa." },
            { id = "ab127896", text = "EU: Después del reinicio, completa la misión semanal de Liadrin para obtener una chispa." },
            { id = "5fd1b2ad", text = "NO HAGAS la misión JcJ del anillo/amuleto heroico. No puedes terminar la cadena de misiones hasta después de que se abran las mazmorras m+" },
            { id = "ed534745", text = "(Opcional) Nuevo: Consigue 10.000 de honor y compra en la casa de subastas o consigue 6 heliótropo infundido para la próxima semana. Consulta la próxima semana para más información. Nota: esto es muy min-max. Es para 2 engarces adicionales de cara a las dos primeras semanas." },
            { id = "9626318e", text = "(Opcional) Completa la misión semanal de mazmorras de Halduron Ala Luminosa para 1000 de renombre" },
            { id = "8b55f0c7", text = "(Opcional) Completa el evento semanal Velada de Saltheril en el Bosque Canción Eterna." },
            { id = "8e107032", text = "(Opcional) Completa el evento semanal de Abundancia en Zul'aman." },
            { id = "d5a12c89", text = "(Opcional) Completa el evento semanal Leyendas de los Haranir en Harandar." }, -- ⚠️ UNVERIFIED
            { id = "514a6926", text = "(Opcional) Completa el Asalto de Tormarion semanal en la Tormenta del Vacío." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Opcional) Mata a cada raro una vez en cada zona para obtener renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "23cb93ed", text = "Desbloquea las Profundidades hasta el nivel 8 si aún no lo has hecho" },
            { id = "d54f7430", text = "Completa 4 Presa Difícil. Las 2 primeras darán equipo de Veterano; las 4 darán Blasones de Veterano que necesitas para alcanzar el límite." },
            { id = "7b67a15d", text = "(Opcional) Completa Presa Difícil aleatoria para alcanzar el límite de emblemas de Veterano en cada personaje" },
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "dc01eba9", text = "Si te quedan piezas de aventurero, deberías sentirte libre de mejorarlas." },
            { id = "5853685a", text = "Si haces incursión el martes 17, lee los pasos de artesanía de la próxima semana. De lo contrario, espera hasta el día de tu incursión o el día anterior para hacer esto." },
        },
    },

    {
        id = "89ba2d2a",
        title = "Temporada 1 Semana 1 - 17 Mar - Semana Heroica, 2ª fabricación",
        items = {
            { id = "791379ba", text = "No gastes ningún Emblema Heroico o Mítico hasta que se te indique. Consulta la Guía sobre por qué guardamos emblemas." },
            { id = "fab7aef9", text = "Casi todo el mundo puede fabricar tu objeto de chispa ahora. Consulta la Guía sobre qué y cuándo fabricar." },
            { id = "e66847d8", text = "Haz BFB para piezas de conjunto - obtener un bonus de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "b5539926", text = "Completa la misión semanal de evento mundial para el alijo cumbre y chispa de Lady Liadrin - Haz la Arcantina, tarda 3 minutos" }, -- ⚠️ UNVERIFIED
            { id = "e5b5fb8c", text = "Completa la misión semanal de vivienda de Vaeli - la recompensa son blasones con tope, no importa lo que elijas." },
            { id = "1e1d846c", text = "Nota: las dos siguientes cosas están relacionadas - son para una pequeña mejora - dos engarces adicionales de cara a las dos primeras semanas." },
            { id = "50eaf609", text = "(Opcional) Nuevo: Completa partidas JcJ para obtener un objeto de misión que recompensa 9x Heráldica de gladiador galáctico. Usarás estos para fabricar objetos más abajo. Solo haz esto si tienes o vas a farmear el honor para los engarces de abajo. Nota: esto es muy min-max, es esencialmente para 2 engarces adicionales. Arena es lo más rápido" }, -- ⚠️ UNVERIFIED
            { id = "a1884373", text = "(Opcional) Nuevo: Compra 2 engastes de joyero galáctico del vendedor por 5000 de honor y 3 heliótropo infundido cada uno. Los usarás para engarazar los objetos fabricados más abajo. Estos objetos no aparecerán en el vendedor hasta esta semana. Esto es muy min-max, es básicamente para 2 engarces adicionales." },
            { id = "d8d237fa", text = "(Opcional) Sube la clasificación JcJ a 1600 para carga de catalizador (esta es la misma carga de catalizador compartida con 2.000 de puntuación M+ de la próxima semana). Si consigues 2 piezas de conjunto en tu asalto esta semana, esto te permitiría catalizar 2 objetos y empezar a recibir cargas de Catalizador de tus m+ la próxima semana." },
            { id = "ef789b0b", text = "(Opcional) Completa un Tour Mundial de mazmorras M0. Estas recompensarán nvl de objeto de campeón con reinicio diario - ¡NO TE AGOTES! M+ se abre la próxima semana y reemplazará todo esto." },
            { id = "d78939c6", text = "Tarea Diaria: considera hacer una m0 específica que suelte un gran abalorio para ti cada día. El objeto será de nvl de objeto de campeón (incursión normal) y podría ser una buena mejora para la incursión de la próxima semana si aún no consigues conseguirlo en Heroica." },
            { id = "05b7e462", text = "Completa 4x Presa difícil para desbloquear Presa pesadilla." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Completa 3x Presa de pesadilla para obtener equipo de campeón en cada personaje y completar la misión semanal para el objeto de invocación de jefe y 20 blasones de héroe sin tope" },
            { id = "cc5a28dd", text = "Completa Nullaeus en dificultad ? para 30 emblemas de Héroe sin límite. Recuerda no gastar estos." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Haz profundidades abundantes de nivel 8 o superior, usa mapa en profundidad nivel 8+ - mientras haces esto, desbloquea profundidades nivel 11" },
            { id = "2f9c0f4f", text = "Usa tu objeto de invocación de jefe de la misión semanal de Presa pesadilla en una Profundidad de nivel 8 para conseguir un mapa y luego úsalo para un objeto de categoría Héroe." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Mata al Jefe mundial para objeto 3/6 campeón de nivel de objeto 253" },
            { id = "bf5d2e12", text = "Llena tu cámara en cada ranura para múltiples oportunidades de obtener objetos de nivel héroe la próxima semana." },
            { id = "4820451a", text = "(Opcional) Nuevo: Si conseguiste honor y has obtenido tu heráldica del gladiador galáctico y engastes de joyero galáctico (ver arriba), fabrica brazales y cinturón a nivel de objeto 246 y añádeles un engarce. Estos objetos pueden llevar ornamentaciones - si fabricaste un arma con una ornamentación, pon solo una ornamentación en estos. Si no fabricaste un arma, pon 2x ornamentaciones en ellos. Estos objetos son el equivalente a 1/6 de vía Campeón con un engarce y puedes usarlos durante un par de semanas al inicio de la temporada. Nivel de objeto confirmado como 1/6 de campeón." },
            { id = "2e0ae86e", text = "Si no has conseguido honor para objetos JcJ, entonces ANTES DE LA BANDA, fabrica 1x-2x piezas de nivel de objeto 246 con adornos en ranuras débiles, usando 80-160 Escudos de Veterano. ESTOS NO REQUIEREN CHISPAS. Los objetos que estás fabricando son los de calidad azul en la mesa de fabricación en los que insertas 80x Escudos de Veterano para aumentar su nivel de objeto. Consulta la Guía para más información. También puedes pedir ayuda en el Discord si la necesitas." },
            { id = "146b7d62", text = "Después de hacer todo lo anterior que puedas, pero ANTES de la incursión, gasta todos los Blasones de Aventurero, Veterano y Campeón mejorando cualquier cosa. No gastes blasones Heroicos o Míticos." },
            { id = "8824d048", text = "Seguimiento de emblemas gastados: 0/100 Heroico, 0/100 Mítico" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, M+ abre, pedid vacaciones frikis",
        items = {
            { id = "36d21691", text = "No gastes ningún emblema Heroico o Mítico hasta que se te indique. Consulta la guía para saber por qué guardamos los emblemas." },
            { id = "e8cef00e", text = "Consulta la Guía sobre qué y cuándo fabricar." },
            { id = "4056a14a", text = "Si no tienes conjunto de 4 piezas, haz BBR para piezas de conjunto - obtener un bonus de conjunto de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "e0ecce24", text = "Completa la misión semanal del evento mundial para alijo cumbre y chispa de Lady Liadrin" },
            { id = "9686fde4", text = "Completa la misión semanal de vivienda de Vaeli para ¿emblemas de héroe? (se actualizará cuando esté disponible)" },
            { id = "16cf341e", text = "(Opcional) Mata al jefe del mundo para objeto campeón 2/6 nivel 250" },
            { id = "4aa82ede", text = "(Opcional) Completa 2 Presa Pesadilla para conseguir equipo de Campeón en cada personaje" },
            { id = "26d0b610", text = "Haz al menos una Profundidad abundante T11 para obtener la misión de la Piedra de Runas resquebrajada" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continúa gastando todos los blasones de aventurero, veterano y campeón mejorándolo todo" },
            { id = "74924a7b", text = "Farmea +10s para equipo niv. 266 en cada hueco" },
            { id = "ae0baeca", text = "Después de repetir N/H pero ANTES de la incursión Mítica, Mejora 11 objetos héroe 3/6 una vez cada uno. Si no tienes tantos objetos Heroicos, mejora un anillo o abalorio más para reducir el riesgo de desperdiciar blasones." },
            { id = "cbfb6966", text = "Mítico: si tienes un objeto de pista mítica, pasa a los consejos de mejora de la semana siguiente." },
            { id = "00cb43a8", text = "Seguimiento de blasones gastados: 220/220 Heroicos, 0/220 Míticos - nunca acumules blasones Míticos - puede variar si has fabricado" },
            { id = "adb492bd", text = "Nivel de objeto final: 4x266, 11x269 - puede variar si has fabricado" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semana 3 - 31 Mar - Se abre el Asalto Final, 3ª fabricación",
        items = {
            { id = "1fbc825e", text = "Abre la cámara (objeto mítico 272+) - mejora después de fabricar" },
            { id = "8226c872", text = "Si no tienes 4p, haz BFB para piezas de conjunto (consulta la guía para saber por qué)" },
            { id = "1db5f946", text = "Farmea +10 para cámara + emblemas" },
            { id = "c316485a", text = "Heroico: Mejora 2 de tus objetos 4/6 269 a 6/6 276 por 80 Emblemas Heroicos" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de ruta Mít 1/6 272 a 6/6 289 por 80 emblemas Mít." },
            { id = "484da4b0", text = "Si conseguiste un 2º objeto de ruta mítica, salta al consejo de mejora de la próxima semana para él." },
            { id = "40b01764", text = "Seguimiento de blasones gastados: 320/320 Heroicos, 160/320 Míticos - nunca acumules blasones Míticos - puede variar si has fabricado" },
            { id = "c0774809", text = "Nivel de objeto final: 2x266, 8x269, 2x276h, 2x285(fabricado), 1x289 - puede variar si has fabricado" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abril",
        items = {
            { id = "9375e497", text = "Abre la cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10 para cámara + emblemas" },
            { id = "c316485a", text = "Heroico: Mejora 2 de tus objetos 4/6 269 a 6/6 276 por 80 Emblemas Heroicos" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de ruta Mít 1/6 272 a 6/6 289 por 80 emblemas Mít." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín 275 de pista mítica 2/6 a 6/6 289 por 80 blasones míticos." },
            { id = "bccfe037", text = "Seguimiento de emblemas gastados: 420/400 Heroico, 320/420 Mítico - nunca guardes emblemas Míticos" },
            { id = "8184483b", text = "Nivel de objeto final: 2x266, 4x269, 4x276h, 2x285(fabricado), 3x289" },
        },
    },

    {
        id = "71d2703a",
        title = "Semana 5 - 14 Abr, 4ª fabricación",
        items = {
            { id = "9375e497", text = "Abre la cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10 para cámara + emblemas" },
            { id = "11e426da", text = "Fabrica el siguiente objeto (consulta el documento para más información)" },
            { id = "c316485a", text = "Heroico: Mejora 2 de tus objetos 4/6 269 a 6/6 276 por 80 Emblemas Heroicos" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de ruta Mít 1/6 272 a 6/6 289 por 80 emblemas Mít." },
            { id = "92a40a6f", text = "Seguimiento de emblemas gastados: 520/520 Heroico, 480/520 Mítico - nunca guardes emblemas Míticos" },
            { id = "4f04ba4e", text = "Nivel de objeto final: 1x266, 2x269, 6x276h, 2x285(fabricado), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semana 6 - 21 de abril - Blasones heroicos terminados",
        items = {
            { id = "9375e497", text = "Abre la cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10 para cámara + emblemas" },
            { id = "c35cf0b6", text = "Heroico: mejora tu último objeto 269 4/6 a 276 6/6 por 40 blasones heroicos" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de ruta Mít 1/6 272 a 6/6 289 por 80 emblemas Mít." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín 275 de pista mítica 2/6 a 6/6 289 por 80 blasones míticos." },
            { id = "4f11d7d8", text = "Seguimiento de emblemas gastados: 560/620 Heroico, 620/620 Mítico - nunca guardes emblemas Míticos" },
            { id = "37472f94", text = "Nivel de objeto final: 7x276h, 2x285(fabricado), 1x285, 5x289" },
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
