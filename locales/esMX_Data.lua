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
            { id = "79c35167", text = "Guarda 160 blasones de Veterano para fabricación - ve más abajo para instrucciones (Estos no requieren Chispas)" },
            { id = "e8cef00e", text = "Revisa la Guía para saber qué y cuándo fabricar." },
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
            { id = "79c35167", text = "Guarda 160 blasones de Veterano para fabricación - ve más abajo para instrucciones (Estos no requieren Chispas)" },
            { id = "b4de098c", text = "Nota especial para clases de doble empuñadura - probablemente puedes fabricar tu objeto de chispa ahora. Revisa la Guía para saber qué y cuándo fabricar." },
            { id = "d8f307f2", text = "Alerta de actualización de guía de texto: He actualizado el consejo de fabricación de Chispa para cada una de las clases. Recomiendo ampliamente que Consultes la Guía con la nueva información." },
            { id = "0d50e744", text = "NA: Blizzard aplicó un parche urgente con una misión de chispa PvE de Liadrin. Si ya completaste la de JcJ, puedes omitir esta ya que no otorga una cuarta chispa. Si no has completado ninguna misión de chispa esta semana, completa la de Liadrin para tu tercera chispa." },
            { id = "ab127896", text = "EU: Después de tu reinicio, completa la misión semanal de Liadrin para obtener una chispa." },
            { id = "5fd1b2ad", text = "NO HAGAS la misión JcJ del anillo/amuleto heroico. No puedes terminar la cadena de misiones hasta después de que abran las m+" },
            { id = "ed534745", text = "(Opcional) Nuevo: Consigue 10,000 de honor y compra en la Casa de Subastas o consigue 6 Heliotropo infundido para la próxima semana. Ver la próxima semana para más información. Nota: esto es muy min-maxy. Es para 2 engarces adicionales para las primeras dos semanas." }, -- ⚠️ UNVERIFIED
            { id = "9626318e", text = "(Opcional) Completa la misión semanal de mazmorra de Halduron Ala Luminosa para obtener 1000 de renombre" },
            { id = "8b55f0c7", text = "(Opcional) Completa la Velada de Saltheril semanal en el Bosque Canción Eterna." },
            { id = "8e107032", text = "(Opcional) Completa el Evento de Abundancia semanal en Zul'aman." },
            { id = "d5a12c89", text = "(Opcional) Completa el evento Leyendas de los Haranir semanal en Harandar." }, -- ⚠️ UNVERIFIED
            { id = "514a6926", text = "(Opcional) Completa el Asalto Estomarion semanal en la Tormenta del Vacío." }, -- ⚠️ UNVERIFIED
            { id = "6762e305", text = "(Opcional) Mata cada raro una vez en cada zona para renombre. Esta es una bonificación única por cada raro y no se reinicia semanalmente." },
            { id = "23cb93ed", text = "Desbloquea Cavernas hasta el nivel 8 si aún no lo has hecho" },
            { id = "d54f7430", text = "Completa 4x Presa Difícil. Las primeras 2 darán equipo Veterano; las 4 darán Emblemas Veteranas que necesitas para llegar al límite." },
            { id = "7b67a15d", text = "(Opcional) Completa Presa Dura aleatoria para alcanzar el límite de emblemas Veteranos en cada personaje" }, -- ⚠️ UNVERIFIED
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "dc01eba9", text = "Si te quedan piezas de aventurero, siéntete libre de mejorarlas." },
            { id = "5853685a", text = "Si haces incursión el martes 17, lee los pasos de fabricación de la próxima semana. De lo contrario, espera hasta el día de tu incursión o el día anterior a tu incursión para hacer esto." },
        },
    },

    {
        id = "89ba2d2a",
        title = "Temporada 1 Semana 1 - 17 de marzo - Semana Heroica, 2da fabricación",
        items = {
            { id = "791379ba", text = "No gastes ningún Emblema Heroico o Mítico hasta que se te indique. Consulta la Guía para entender por qué guardamos emblemas." },
            { id = "fab7aef9", text = "Casi todos pueden fabricar tu objeto de chispa ahora. Revisa la Guía para saber qué y cuándo fabricar." },
            { id = "e66847d8", text = "Haz LFR para piezas de conjunto - obtener un bono de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "b5539926", text = "Completa la misión semanal del evento mundial para obtener el alijo cumbre y chispa de Dama Liadrin - Haz la Arcantina que toma 3 minutos" }, -- ⚠️ UNVERIFIED
            { id = "e5b5fb8c", text = "Completa la misión semanal de vivienda de Vaeli - la recompensa son emblemas limitados, no importa qué elijas." },
            { id = "1e1d846c", text = "Nota: las siguientes dos cosas están vinculadas - son para una pequeña mejora - dos engarces adicionales para las primeras dos semanas." },
            { id = "50eaf609", text = "(Opcional) Nuevo: Completa partidas JcJ para obtener un objeto de misión que recompensa 9x Heráldica de gladiador galáctico. Usarás estos para fabricar objetos abajo. Solo haz esto si tienes o vas a farmear el honor para los engarces abajo. Nota: esto es muy min-max, es esencialmente para 2 engarces adicionales. Arena es lo más rápido" }, -- ⚠️ UNVERIFIED
            { id = "a1884373", text = "(Opcional) Nuevo: Compra 2 Engastes del joyero galáctico del vendedor por 5000 de Honor y 3 Heliotropo infundido cada uno. Usarás estos para engarazar los objetos fabricados abajo. Estos objetos no aparecerán en el vendedor hasta esta semana. Esto es muy min-maxy, es esencialmente para 2 engarces adicionales." }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Opcional) Sube rango JcJ a 1600 para carga de catalizador (esta es la misma carga de catalizador compartida con 2,000 de puntuación M+ de la semana siguiente). Si consigues 2 piezas de conjunto de tu banda esta semana, esto te permitiría catalizar 2 objetos y empezar a recibir cargas de Catalizador de tus m+ la próxima semana." },
            { id = "ef789b0b", text = "(Opcional) Completa un Tour Mundial de mazmorras M0. Estas otorgarán nivel de objeto de campeón con bloqueo diario - ¡NO TE AGOTES! M+ abre la próxima semana y reemplazará todo esto." },
            { id = "d78939c6", text = "Tarea Diaria: considera hacer una m0 específica que suelte un gran abalorio para ti cada día. El objeto será nivel de objeto de campeón (incursión normal) y podría ser un buen impulso para la incursión de la próxima semana si aún no logras conseguirlo en Heroico." },
            { id = "05b7e462", text = "Completa 4x Presa difícil para desbloquear Presa de pesadilla." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Completa 3x Presa de pesadilla para obtener equipo de campeón en cada personaje y completar la misión semanal para el objeto de invocación de jefe y 20 emblemas de héroe sin límite" },
            { id = "cc5a28dd", text = "Completa Nullaeus en dificultad ? para obtener 30 crestas de héroe sin límite. Recuerda no gastar estas." }, -- ⚠️ UNVERIFIED
            { id = "b6846065", text = "Haz incursiones abundantes nivel 8 o superior, usa mapa en incursión nivel 8+; mientras haces esto, desbloquea incursiones nivel 11" },
            { id = "2f9c0f4f", text = "Usa tu objeto de invocación de jefe de la misión semanal Presa de pesadilla en una Profundidad nivel 8 para obtener un mapa y luego úsalo para obtener un objeto categoría de héroe." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Mata al Jefe mundial para obtener objeto de campeón 3/6 nivel de objeto 253" }, -- ⚠️ UNVERIFIED
            { id = "bf5d2e12", text = "Llena tu cámara en cada espacio para múltiples oportunidades de obtener objetos de nivel héroe la próxima semana." },
            { id = "4820451a", text = "(Opcional) Nuevo: Si conseguiste honor y has obtenido tu Heráldica del gladiador galáctico y Engarces del joyero galáctico (ver arriba), fabrica Brazales y Cinturón a nivel de objeto 246 y añádeles un engarce. Estos objetos pueden llevar adornos - si fabricaste un arma con un adorno, solo pon un adorno en estos. Si no fabricaste un arma, pon 2x adornos en ellos. Estos objetos son el equivalente a 1/6 de categoría Campeón con un engarce y puedes usarlos durante un par de semanas al inicio de la temporada. Nivel de objeto confirmado en 1/6 campeón." }, -- ⚠️ UNVERIFIED
            { id = "2e0ae86e", text = "Si no farmaste honor para objetos JcJ, entonces ANTES DE LA BANDA, fabrica 1x-2x piezas de nivel de objeto 246 con adornos en espacios débiles, usando 80-160 Crestas de Veterano. ESTAS NO REQUIEREN CHISPAS. Los objetos que estás fabricando son los objetos de calidad azul en la mesa de fabricación en los que insertas 80x crestas de Veterano para aumentar su nivel de objeto. Consulta la Guía para más información. También puedes preguntar en el Discord si necesitas ayuda." },
            { id = "146b7d62", text = "Después de hacer todo lo que puedas arriba, pero ANTES de la incursión, gasta todos los Blasones de Aventurero, Veterano y Campeón mejorando cualquier cosa. No gastes blasones Heroicos o Míticos." },
            { id = "8824d048", text = "Rastrear emblemas gastados: 0/100 Heroicos, 0/100 Míticos" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, abren M+, tómate el día libre giganerd",
        items = {
            { id = "36d21691", text = "No gastes ningún blasón Heroico o Mítico hasta que se te indique. Consulta la guía sobre por qué guardamos blasones." },
            { id = "e8cef00e", text = "Revisa la Guía para saber qué y cuándo fabricar." },
            { id = "4056a14a", text = "Si no tienes 4 set, haz LFR para piezas de banda - obtener una bonificación 4 set permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "e0ecce24", text = "Completa la misión de evento mundial semanal para obtener alijo cumbre y chispa de Lady Liadrin" },
            { id = "9686fde4", text = "Completa la misión semanal de vivienda de Vaeli para ¿emblemas de héroe? (se actualizará cuando esté disponible)" },
            { id = "16cf341e", text = "(Opcional) Mata al jefe del mundo para un objeto de campeón 2/6 ilvl 250" },
            { id = "4aa82ede", text = "(Opcional) Completa 2x Presa Pesadilla para obtener equipo de Campeón en cada personaje" },
            { id = "26d0b610", text = "Haz al menos una Profundidad abundante T11 para conseguir la misión de Piedra rúnica agrietada" }, -- ⚠️ UNVERIFIED
            { id = "286f219c", text = "Continúa gastando todas las crestalboradas de aventurero, veterano y campeón mejorándolo todo" },
            { id = "74924a7b", text = "Farmea +10 para equipo 266 en cada hueco" },
            { id = "ae0baeca", text = "Después de las repeticiones N/H pero ANTES de la incursión Mítica, Mejora 11 objetos héroe 3/6 una vez cada uno. Si no tienes tantos objetos Heroicos, mejora un anillo o abalorio más para reducir el riesgo de desperdiciar blasones." },
            { id = "cbfb6966", text = "Mítico: si tienes suerte y consigues un objeto de pista mítica, pasa al consejo de mejoras de la semana que viene para él." },
            { id = "00cb43a8", text = "Seguimiento de emblemas gastados: 220/220 Heroico, 0/220 Mítico - nunca guardes emblemas Míticos - puede variar si fabricaste" },
            { id = "adb492bd", text = "Nivel de objeto final: 4x266, 11x269 - puede variar si fabricaste" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semana 3 - 31 de marzo - Abre Banda Final, 3ra fabricación",
        items = {
            { id = "1fbc825e", text = "Abre cámara (objeto mítico 272+) - mejora después de fabricar" },
            { id = "8226c872", text = "Si no tienes 4p, haz LFR para piezas de conjunto (consulta la guía para entender por qué)" },
            { id = "1db5f946", text = "Farmea +10s para cámara + emblemas" },
            { id = "c316485a", text = "Heroico: Mejora 2 de tus objetos 4/6 269 a 6/6 276 por 80 Emblemas Heroicos" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su contraparte heroica a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de categoría Mítica 1/6 272 a 6/6 289 por 80 emblemas Míticos." },
            { id = "484da4b0", text = "Si obtuviste un 2do objeto de categoría mítica, salta al consejo de mejora de la próxima semana para él." },
            { id = "40b01764", text = "Seguimiento de emblemas gastados: 320/320 Heroico, 160/320 Mítico - nunca guardes emblemas Míticos - puede variar si fabricaste" },
            { id = "c0774809", text = "Nivel de objeto final: 2x266, 8x269, 2x276h, 2x285(fabricado), 1x289 - puede variar si fabricaste" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abril",
        items = {
            { id = "9375e497", text = "Abre cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10s para cámara + emblemas" },
            { id = "c316485a", text = "Heroico: Mejora 2 de tus objetos 4/6 269 a 6/6 276 por 80 Emblemas Heroicos" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su contraparte heroica a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de categoría Mítica 1/6 272 a 6/6 289 por 80 emblemas Míticos." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín de banda 275 de pista mítica 2/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "bccfe037", text = "Rastrear emblemas gastados: 420/400 Heroicos, 320/420 Míticos - nunca guardes emblemas Míticos" },
            { id = "8184483b", text = "Nivel de objeto final: 2x266, 4x269, 4x276h, 2x285(fabricado), 3x289" },
        },
    },

    {
        id = "71d2703a",
        title = "Semana 5 - 14 de abril, 4ta fabricación",
        items = {
            { id = "9375e497", text = "Abre cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10s para cámara + emblemas" },
            { id = "11e426da", text = "Fabrica el siguiente objeto (consulta el documento para más información)" },
            { id = "c316485a", text = "Heroico: Mejora 2 de tus objetos 4/6 269 a 6/6 276 por 80 Emblemas Heroicos" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su contraparte heroica a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de categoría Mítica 1/6 272 a 6/6 289 por 80 emblemas Míticos." },
            { id = "92a40a6f", text = "Rastrear emblemas gastados: 520/520 Heroicos, 480/520 Míticos - nunca guardes emblemas Míticos" },
            { id = "4f04ba4e", text = "Nivel de objeto final: 1x266, 2x269, 6x276h, 2x285(fabricados), 4x289" },
        },
    },

    {
        id = "6a36daa1",
        title = "Semana 6 - 21 de abril - Terminado con crestalboradas heroicas",
        items = {
            { id = "9375e497", text = "Abre cámara (objeto mítico 272+)" },
            { id = "1db5f946", text = "Farmea +10s para cámara + emblemas" },
            { id = "c35cf0b6", text = "Heroico: mejora tu último objeto 269 4/6 a 276 6/6 por 40 crestalboradas heroicas" },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara era 1/6, mejora primero su contraparte heroica a 6/6 heroico por 20 Emblemas Heroicos. Mejora tu objeto de categoría Mítica 1/6 272 a 6/6 289 por 80 emblemas Míticos." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín de banda 275 de pista mítica 2/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "4f11d7d8", text = "Rastrear emblemas gastados: 560/620 Heroicos, 620/620 Míticos - nunca guardes emblemas Míticos" },
            { id = "37472f94", text = "Nivel de objeto final: 7x276h, 2x285(fabricado), 1x285, 5x289" },
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
