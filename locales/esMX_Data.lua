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
        id = "89ba2d2a",
        title = "Temporada 1 Semana 1 - 17 de marzo - Semana Heroica, 2da fabricación",
        items = {
            { id = "791379ba", text = "No gastes ningún Emblema Heroico o Mítico hasta que se te indique. Consulta la Guía para entender por qué guardamos emblemas." },
            { id = "fab7aef9", text = "Casi todos pueden fabricar tu objeto de chispa ahora. Revisa la Guía para saber qué y cuándo fabricar." },
            { id = "e66847d8", text = "Haz LFR para piezas de conjunto - obtener un bono de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "b1a6f7eb", text = "Completa la misión semanal del evento mundial para obtener un alijo cúspide y chispa de Dama Liadrin - Hacer la Arcantina toma 3 minutos" },
            { id = "c17e68f1", text = "Completa la misión semanal de vivienda de Vaeli - la recompensa son blasones con tope, no importa lo que elijas pero el mayor impulso a corto plazo es seleccionar Blasones de campeón" },
            { id = "d8d237fa", text = "(Opcional) Sube rango JcJ a 1600 para carga de catalizador (esta es la misma carga de catalizador compartida con 2,000 de puntuación M+ de la semana siguiente). Si consigues 2 piezas de conjunto de tu banda esta semana, esto te permitiría catalizar 2 objetos y empezar a recibir cargas de Catalizador de tus m+ la próxima semana." },
            { id = "ef789b0b", text = "(Opcional) Completa un Tour Mundial de mazmorras M0. Estas otorgarán nivel de objeto de campeón con bloqueo diario - ¡NO TE AGOTES! M+ abre la próxima semana y reemplazará todo esto." },
            { id = "d78939c6", text = "Tarea Diaria: considera hacer una m0 específica que suelte un gran abalorio para ti cada día. El objeto será nivel de objeto de campeón (incursión normal) y podría ser un buen impulso para la incursión de la próxima semana si aún no logras conseguirlo en Heroico." },
            { id = "05b7e462", text = "Completa 4x Presa difícil para desbloquear Presa de pesadilla." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Completa 3x Presa de pesadilla para obtener equipo de campeón en cada personaje y completar la misión semanal para el objeto de invocación de jefe y 20 emblemas de héroe sin límite" },
            { id = "cc5a28dd", text = "Completa Nullaeus en dificultad ? para obtener 30 crestas de héroe sin límite. Recuerda no gastar estas." }, -- ⚠️ UNVERIFIED
            { id = "bad52b04", text = "Completa Nullaeus en dificultad ?? para obtener 30 emblemas de héroe sin límite ADICIONALES y 30 emblemas de mito sin límite. NOTA: Aunque el logro del Salón de la Fama requiere que lo hagas solo, puedes hacerlo fácilmente en grupo. Con un compañero de expedición tanque + sanador, solo sigue agregando más DPS a tu grupo." }, -- ⚠️ UNVERIFIED
            { id = "f7a876a0", text = "El vendedor en el área de incursiones tiene una bolsa con 2 llaves gratis que superan el tope. Esto es una vez por grupo de guerra - asegúrate de comprarla con tu personaje principal." },
            { id = "b6846065", text = "Haz incursiones abundantes nivel 8 o superior, usa mapa en incursión nivel 8+; mientras haces esto, desbloquea incursiones nivel 11" },
            { id = "2f9c0f4f", text = "Usa tu objeto de invocación de jefe de la misión semanal Presa de pesadilla en una Profundidad nivel 8 para obtener un mapa y luego úsalo para obtener un objeto categoría de héroe." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Mata al Jefe mundial para obtener objeto de campeón 3/6 nivel de objeto 253" }, -- ⚠️ UNVERIFIED
            { id = "bf5d2e12", text = "Llena tu cámara en cada espacio para múltiples oportunidades de obtener objetos de nivel héroe la próxima semana." },
            { id = "0755c002", text = "ANTES DE LA INCURSIÓN, fabrica 1-2 piezas de nivel de objeto 246 con adornos en ranuras débiles, usando 80-160 emblemas de veterano. ESTAS NO REQUIEREN CHISPAS. Los objetos que estás fabricando son los objetos de calidad azul en la mesa de fabricación en los que insertas 80 emblemas de veterano para aumentar su nivel de objeto. Revisa la guía para más información. También puedes pedir ayuda en el Discord si lo necesitas." },
            { id = "146b7d62", text = "Después de hacer todo lo que puedas arriba, pero ANTES de la incursión, gasta todos los Blasones de Aventurero, Veterano y Campeón mejorando cualquier cosa. No gastes blasones Heroicos o Míticos." },
            { id = "c5055967", text = "Rastrear emblemas gastados: 0/180 Heroico, 0/130 Mítico" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, abren M+, tómate el día libre giganerd",
        items = {
            { id = "e8cef00e", text = "Revisa la Guía para saber qué y cuándo fabricar." },
            { id = "4056a14a", text = "Si no tienes 4 set, haz LFR para piezas de banda - obtener una bonificación 4 set permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "83fd4310", text = "Completa la misión semanal del evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "4c264b7f", text = "Completa la misión semanal de vivienda de Vaeli para obtener blasones de héroe rápidamente" },
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "547b880e", text = "Completa la misión semanal de 3 presas de pesadilla para obtener un objeto que invoca un jefe de expedición y conseguir un mapa y 20 emblemas de héroe sin límite." },
            { id = "73ad86e4", text = "Haz al menos una expedición abundante de nivel 11 para obtener la misión de Piedra clave agrietada que otorga 20 emblemas de héroe y mito sin límite. Mientras la haces, usa tu objeto de jefe de la misión de 3 presas de pesadilla para obtener un mapa y úsalo en esta expedición" },
            { id = "286f219c", text = "Continúa gastando todas las crestalboradas de aventurero, veterano y campeón mejorándolo todo" },
            { id = "74924a7b", text = "Farmea +10 para equipo 266 en cada hueco" },
            { id = "591e911b", text = "Antes de entrar a Mítico, mejora los siguientes 3/6 objetos de categoría héroe a 6/6 - pecho, pantalones, yelmo, 1 anillo, 1 alhaja. Esto debería tomar 300/320 emblemas de héroe. Guarda los últimos 20 emblemas de héroe en caso de que obtengas un objeto mítico 1/6 que necesites mejorar a 2/6 primero. Esto te da el mayor aumento de poder posible al entrar a tu primera semana de mítico mientras te da la oportunidad de ahorrar emblemas en otras ranuras. Esta suposición se basa en fabricar un 2M + 1 objeto adornado adicional la próxima semana. Los cazadores u otros que no fabricaron armas podrían considerar mejorar su arma en lugar de pantalones o yelmo para ganar ese aumento de poder después de matar al primer jefe en mítico si las armas no caen." },
            { id = "cbfb6966", text = "Mítico: si tienes suerte y consigues un objeto de pista mítica, pasa al consejo de mejoras de la semana que viene para él." },
            { id = "92eaba33", text = "Rastrear emblemas gastados: 320/320 Heroico, 0/250 Mítico - nunca retengas emblemas míticos - puede variar si fabricaste" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semana 3 - 31 de marzo - Abre Banda Final, 3ra fabricación",
        items = {
            { id = "1fbc825e", text = "Abre cámara (objeto mítico 272+) - mejora después de fabricar" },
            { id = "83fd4310", text = "Completa la misión semanal del evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Completa la misión semanal de 3 presas de pesadilla para obtener 20 emblemas de héroe sin límite." },
            { id = "1db5f946", text = "Farmea +10 para la cámara + emblemas" },
            { id = "d0aed922", text = "Heroico: Mejora un objeto 3/6 de 266 a 6/6 de 276 por 60 emblemas heroicos. Mejora 2 objetos 3/6 de 266 a 4/6 de 269 por 40 emblemas heroicos. Guarda 20 emblemas heroicos para el siguiente paso." },
            { id = "2568bd36", text = "Mítico: Si tu objeto de la cámara fue 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 emblemas heroicos. Mejora tu objeto mítico 1/6 de 272 a 6/6 de 289 por 80 emblemas míticos." },
            { id = "484da4b0", text = "Si obtuviste un 2do objeto de categoría mítica, salta al consejo de mejora de la próxima semana para él." },
            { id = "8e67d484", text = "Rastrear emblemas gastados: 440/440 Heroico, 240/350 Mítico - nunca retengas emblemas míticos - puede variar si fabricaste" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abril",
        items = {
            { id = "9375e497", text = "Abrir cámara (objeto mítico de 272+)" },
            { id = "83fd4310", text = "Completa la misión semanal del evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Completa la misión semanal de 3 presas de pesadilla para obtener 20 emblemas de héroe sin límite." },
            { id = "1db5f946", text = "Farmea +10 para la cámara + emblemas" },
            { id = "6e25b0ce", text = "Heroico: Mejora 2 de tus objetos 4/6 de 269 a 6/6 de 276 por 80 emblemas heroicos. Mejora 1 objeto 3/6 de 266 a 4/6 de 269 por 20 emblemas heroicos. Guarda 20 emblemas heroicos para el siguiente paso." },
            { id = "7bfe99b2", text = "Mítico: Si tu objeto de la cámara fue 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 emblemas heroicos. Mejora tu objeto mítico 1/6 de 272 a 6/6 de 289 por 80 emblemas míticos." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín de banda 275 de pista mítica 2/6 a 6/6 289 por 80 crestalboradas míticas." },
            { id = "b95b0829", text = "Rastrear emblemas gastados: 560/560 Heroico, 400/450 Mítico - nunca retengas emblemas míticos" },
        },
    },

    {
        id = "067d2566",
        title = "Semana 5 - 14 de abril - Terminado con emblemas heroicos",
        items = {
            { id = "9375e497", text = "Abrir cámara (objeto mítico de 272+)" },
            { id = "83fd4310", text = "Completa la misión semanal del evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Completa la misión semanal de 3 presas de pesadilla para obtener 20 emblemas de héroe sin límite." },
            { id = "1db5f946", text = "Farmea +10 para la cámara + emblemas" },
            { id = "cb431e83", text = "Fabrica el siguiente objeto (Revisa la guía para más información)" },
            { id = "13957611", text = "Heroico: Mejora el último de tus objetos heroicos a 6/6 de 276. Guarda 20 emblemas heroicos para el siguiente paso." },
            { id = "2568bd36", text = "Mítico: Si tu objeto de la cámara fue 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 emblemas heroicos. Mejora tu objeto mítico 1/6 de 272 a 6/6 de 289 por 80 emblemas míticos." },
            { id = "c581850d", text = "Rastrear emblemas gastados: 680/680 Heroico, 480/550 Mítico - nunca retengas emblemas míticos" },
        },
    },

    {
        id = "db70d77d",
        title = "Semana 6 - 21 de abril+",
        items = {
            { id = "f9978f0e", text = "No fabriques si puedes obtener objetos de la cámara superiores a 1/6" },
            { id = "66e83cc1", text = "Mejora los objetos míticos a medida que los obtengas, prefiriendo saltar directamente a 289 para el salto de +4" },
            { id = "1786deeb", text = "Si es necesario, planifica un posible cambio de 1M + OH fabricada" },
            { id = "10aac768", text = "¡Disfruta del sistema de mejoras mucho mejor de Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
