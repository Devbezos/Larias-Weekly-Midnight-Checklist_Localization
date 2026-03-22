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
        id = "89ba2d2a",
        title = "Temporada 1 Semana 1 - 17 Mar - Semana Heroica, 2ª fabricación",
        items = {
            { id = "791379ba", text = "No gastes ningún Emblema Heroico o Mítico hasta que se te indique. Consulta la Guía sobre por qué guardamos emblemas." },
            { id = "fab7aef9", text = "Casi todo el mundo puede fabricar tu objeto de chispa ahora. Consulta la Guía sobre qué y cuándo fabricar." },
            { id = "e66847d8", text = "Haz BFB para piezas de conjunto - obtener un bonus de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "b1a6f7eb", text = "Completa la misión semanal de evento mundial para el alijo cúspide y chispa de Dama Liadrin - Hacer la Arcantina lleva 3 minutos" }, -- ⚠️ UNVERIFIED
            { id = "c17e68f1", text = "Completa la misión semanal de vivienda de Vaeli - la recompensa son blasones limitados, no importa qué elijas pero el mayor impulso a corto plazo es seleccionar Blasones de campeón" }, -- ⚠️ UNVERIFIED
            { id = "d8d237fa", text = "(Opcional) Sube la clasificación JcJ a 1600 para carga de catalizador (esta es la misma carga de catalizador compartida con 2.000 de puntuación M+ de la próxima semana). Si consigues 2 piezas de conjunto en tu asalto esta semana, esto te permitiría catalizar 2 objetos y empezar a recibir cargas de Catalizador de tus m+ la próxima semana." },
            { id = "ef789b0b", text = "(Opcional) Completa un Tour Mundial de mazmorras M0. Estas recompensarán nvl de objeto de campeón con reinicio diario - ¡NO TE AGOTES! M+ se abre la próxima semana y reemplazará todo esto." },
            { id = "d78939c6", text = "Tarea Diaria: considera hacer una m0 específica que suelte un gran abalorio para ti cada día. El objeto será de nvl de objeto de campeón (incursión normal) y podría ser una buena mejora para la incursión de la próxima semana si aún no consigues conseguirlo en Heroica." },
            { id = "05b7e462", text = "Completa 4x Presa difícil para desbloquear Presa pesadilla." }, -- ⚠️ UNVERIFIED
            { id = "78aea6fe", text = "Completa 3x Presa de pesadilla para obtener equipo de campeón en cada personaje y completar la misión semanal para el objeto de invocación de jefe y 20 blasones de héroe sin tope" },
            { id = "cc5a28dd", text = "Completa Nullaeus en dificultad ? para 30 emblemas de Héroe sin límite. Recuerda no gastar estos." }, -- ⚠️ UNVERIFIED
            { id = "bad52b04", text = "Completa Nullaeus en dificultad ?? para 30 emblemas de héroe sin límite ADICIONALES y 30 emblemas míticos sin límite. NOTA: Aunque el logro del Salón de la Fama requiere que lo hagas en solitario, puedes hacerlo fácilmente en grupo. Con un compañero de profundidad tanque + sanador, simplemente añade más DPS a tu grupo." }, -- ⚠️ UNVERIFIED
            { id = "f7a876a0", text = "El vendedor en el área de expediciones tiene una bolsa con 2 llaves gratis que superan el límite. Esto es una vez por partida de guerra - asegúrate de comprarla con tu personaje principal." },
            { id = "b6846065", text = "Haz profundidades abundantes de nivel 8 o superior, usa mapa en profundidad nivel 8+ - mientras haces esto, desbloquea profundidades nivel 11" },
            { id = "2f9c0f4f", text = "Usa tu objeto de invocación de jefe de la misión semanal de Presa pesadilla en una Profundidad de nivel 8 para conseguir un mapa y luego úsalo para un objeto de categoría Héroe." }, -- ⚠️ UNVERIFIED
            { id = "5ccc7694", text = "Mata al Jefe mundial para objeto 3/6 campeón de nivel de objeto 253" },
            { id = "bf5d2e12", text = "Llena tu cámara en cada ranura para múltiples oportunidades de obtener objetos de nivel héroe la próxima semana." },
            { id = "0755c002", text = "ANTES DE LA BANDA, fabrica 1-2 piezas de nivel de objeto 246 con adornos en huecos débiles, usando 80-160 emblemas de veterano. ESTAS NO CONSUMEN CHISPAS. Los objetos que estás fabricando son los objetos de calidad azul en la mesa de fabricación en los que insertas 80 emblemas de veterano para aumentar su nivel de objeto. Consulta la guía para más información. También puedes pedir ayuda en Discord si la necesitas." },
            { id = "146b7d62", text = "Después de hacer todo lo anterior que puedas, pero ANTES de la incursión, gasta todos los Blasones de Aventurero, Veterano y Campeón mejorando cualquier cosa. No gastes blasones Heroicos o Míticos." },
            { id = "c5055967", text = "Rastrea emblemas gastados: 0/180 heroicos, 0/130 míticos" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, M+ abre, pedid vacaciones frikis",
        items = {
            { id = "e8cef00e", text = "Consulta la Guía sobre qué y cuándo fabricar." },
            { id = "4056a14a", text = "Si no tienes conjunto de 4 piezas, haz BBR para piezas de conjunto - obtener un bonus de conjunto de 4 piezas permitirá que caigan cargas de catalizador de todo el contenido" },
            { id = "83fd4310", text = "Completa la misión semanal de evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "4c264b7f", text = "Completa la misión semanal de vivienda de Vaeli para blasones de héroe rápidos" }, -- ⚠️ UNVERIFIED
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "547b880e", text = "Completa la misión semanal de 3 presas de pesadilla para obtener un objeto que invoca a un jefe de profundidad para conseguir un mapa y 20 emblemas de héroe sin límite." },
            { id = "73ad86e4", text = "Haz al menos una profundidad abundante de nivel 11 para obtener la misión de piedra angular agrietada por 20 emblemas de héroe y míticos sin límite. Mientras la haces, usa tu objeto de jefe de la misión de 3 presas de pesadilla para obtener un mapa y úsalo en esta profundidad" },
            { id = "286f219c", text = "Continúa gastando todos los blasones de aventurero, veterano y campeón mejorándolo todo" },
            { id = "74924a7b", text = "Farmea +10s para equipo niv. 266 en cada hueco" },
            { id = "591e911b", text = "Antes de entrar en Mítico, mejora los siguientes 3/6 objetos de senda de héroe a 6/6 - peto, pantalones, yelmo, 1 anillo, 1 abalorio. Esto debería consumir 300/320 emblemas de héroe. Guarda los últimos 20 emblemas de héroe por si consigues un objeto mítico 1/6 que necesites mejorar primero a 2/6. Esto te da el mayor pico de poder posible al entrar en tu primera semana de mítico mientras te da la oportunidad de ahorrar emblemas en otros huecos. Esta suposición se basa en fabricar un arma de 2 manos + otro objeto con adorno la próxima semana. Los cazadores u otros que no fabricaron armas podrían considerar subir su arma en lugar de pantalones o yelmo para ganar ese pico de poder después de matar al primer jefe en mítico si las armas no caen." },
            { id = "cbfb6966", text = "Mítico: si tienes un objeto de pista mítica, pasa a los consejos de mejora de la semana siguiente." },
            { id = "92eaba33", text = "Rastrea emblemas gastados: 320/320 heroicos, 0/250 míticos - nunca retengas emblemas míticos - puede variar si fabricaste" },
        },
    },

    {
        id = "8f5b5aeb",
        title = "Semana 3 - 31 Mar - Se abre el Asalto Final, 3ª fabricación",
        items = {
            { id = "1fbc825e", text = "Abre la cámara (objeto mítico 272+) - mejora después de fabricar" },
            { id = "83fd4310", text = "Completa la misión semanal de evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Completa la misión semanal de 3 presas de pesadilla para 20 emblemas de héroe sin límite." },
            { id = "1db5f946", text = "Farmea +10s para cámara + emblemas" },
            { id = "d0aed922", text = "Heroico: Mejora un objeto 3/6 266 a 6/6 276 por 60 emblemas heroicos. Mejora 2 objetos 3/6 266 a 4/6 269 por 40 emblemas heroicos. Guarda 20 emblemas heroicos para el siguiente paso." },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara fue 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 emblemas heroicos. Mejora tu objeto de senda mítica 1/6 272 a 6/6 289 por 80 emblemas míticos." },
            { id = "484da4b0", text = "Si conseguiste un 2º objeto de ruta mítica, salta al consejo de mejora de la próxima semana para él." },
            { id = "8e67d484", text = "Rastrea emblemas gastados: 440/440 heroicos, 240/350 míticos - nunca retengas emblemas míticos - puede variar si fabricaste" },
        },
    },

    {
        id = "572003ec",
        title = "Semana 4 - 7 de abril",
        items = {
            { id = "9375e497", text = "Abre cámara (objeto mítico 272+)" },
            { id = "83fd4310", text = "Completa la misión semanal de evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Completa la misión semanal de 3 presas de pesadilla para 20 emblemas de héroe sin límite." },
            { id = "1db5f946", text = "Farmea +10s para cámara + emblemas" },
            { id = "6e25b0ce", text = "Heroico: Mejora 2 de tus objetos 4/6 269 a 6/6 276 por 80 emblemas heroicos. Mejora 1 objeto 3/6 266 a 4/6 269 por 20 emblemas heroicos. Guarda 20 emblemas heroicos para el siguiente paso." },
            { id = "7bfe99b2", text = "Mítico: Si tu objeto de cámara fue 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 emblemas heroicos. Mejora tu objeto de senda mítica 1/6 272 a 6/6 289 por 80 emblemas míticos." },
            { id = "0ccf5c83", text = "Mítico: mejora tu botín 275 de pista mítica 2/6 a 6/6 289 por 80 blasones míticos." },
            { id = "b95b0829", text = "Rastrea emblemas gastados: 560/560 heroicos, 400/450 míticos - nunca retengas emblemas míticos" },
        },
    },

    {
        id = "067d2566",
        title = "Semana 5 - 14 abr - Terminado con emblemas heroicos",
        items = {
            { id = "9375e497", text = "Abre cámara (objeto mítico 272+)" },
            { id = "83fd4310", text = "Completa la misión semanal de evento mundial para obtener una chispa de Lady Liadrin" },
            { id = "260911ab", text = "(Recompensa desconocida en semanas repetidas) - Completa ?? Nulleaus para recompensas desconocidas" }, -- ⚠️ UNVERIFIED
            { id = "09b2b53b", text = "Completa la misión semanal de 3 presas de pesadilla para 20 emblemas de héroe sin límite." },
            { id = "1db5f946", text = "Farmea +10s para cámara + emblemas" },
            { id = "cb431e83", text = "Fabrica el siguiente objeto (consulta la guía para más información)" },
            { id = "13957611", text = "Heroico: Mejora el resto de tus objetos heroicos a 6/6 276. Guarda 20 emblemas heroicos para el siguiente paso." },
            { id = "2568bd36", text = "Mítico: Si tu objeto de cámara fue 1/6, mejora primero su equivalente heroico a 6/6 heroico por 20 emblemas heroicos. Mejora tu objeto de senda mítica 1/6 272 a 6/6 289 por 80 emblemas míticos." },
            { id = "c581850d", text = "Rastrea emblemas gastados: 680/680 heroicos, 480/550 míticos - nunca retengas emblemas míticos" },
        },
    },

    {
        id = "db70d77d",
        title = "Semana 6 - 21 abr+",
        items = {
            { id = "f9978f0e", text = "No fabriques si puedes obtener objetos de cámara superiores a 1/6" },
            { id = "66e83cc1", text = "Mejora objetos míticos según los consigas, prefiriendo subirlos a 289 para el salto de +4" },
            { id = "1786deeb", text = "Si es necesario, planifica un posible cambio a 1 mano + secundaria fabricada" },
            { id = "10aac768", text = "¡Disfruta del sistema de mejora mucho mejor de Blizzard!" },
        },
    },
}

reg.data[LOCALE] = DATASET
