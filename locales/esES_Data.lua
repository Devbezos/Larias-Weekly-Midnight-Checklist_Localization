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
        id = "e225d803",
        title = "Acceso anticipado - 26 feb. al 2 mar. - Paga para ganar",
        items = {
            { id = "fasddfasd", text = "Inicia sesión con cada personaje que planees subir de nivel para que empiecen a acumular experiencia de descanso." },
            { id = "825bfe20", text = "Sube personajes en Modo de Guerra a nivel 90 – la FLN abre el domingo para +10 % de exp." },
            { id = "50f90465", text = "Completa el Asalto de Stormarion semanal en la Tormenta del vacío. (Disponible en acceso anticipado)" }, -- ⚠️ UNVERIFIED
            { id = "7644d082", text = "(Opcional) Mata cada élite raro una vez en cada zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "6892e5d5", text = "Busca los tesoros de cada región para reputación gratuita. Ver documento para la guía." }, -- ⚠️ UNVERIFIED
            { id = "f466c57b", text = "Completa 4 veces la Presa en dificultad normal para reputación." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada élite raro una vez por zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "2687fe6c", text = "Completa el logro Las Cimas más Altas para reputación - ver documento para la guía" }, -- ⚠️ UNVERIFIED
            { id = "91e7ee6c", text = "Completa cadenas de misiones secundarias para reputación. (Se puede hacer en alts mientras subes de nivel). El buff de la FLN no da reputación." },
            { id = "4e99ff6e", text = "Nota: Solo el abalorio de campeón de La Singularidad está disponible en acceso anticipado - los demás estarán disponibles el lunes después del lanzamiento oficial o tras el reinicio semanal de cada región." }, -- ⚠️ UNVERIFIED
        },
    },

    {
        id = "50281d6f",
        title = "Pretemporada semana 1 - 3 de marzo - M0",
        items = {
            { id = "c3de7d35", text = "No gastes ningún Blasón hasta que se indique" },
            { id = "fe628d60", text = "Sube la reputación de La Singularidad a rango 7 para abalorio de campeón 1/6 - disponible en acceso anticipado - viene de misión del vendedor de reputación (no se compra)" },
            { id = "9b594c78", text = "Sube la reputación de Hara'ti a rango 8 para cinturón de campeón 1/6 - ¿no disponible en acceso anticipado? - viene de misión del vendedor de reputación (no se compra)" },
            { id = "6c01e9d5", text = "Sube la reputación de Lunargenta a rango 9 para yelmo de campeón 1/6 - NO disponible en acceso anticipado - viene de misión del vendedor de reputación (no se compra)" },
            { id = "484f13d6", text = "Sube la reputación de la Tribu Amani a rango 9 para collar de campeón 1/6 - ¿no disponible en acceso anticipado? - viene de misión del vendedor de reputación (no se compra)" },
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en el Bosque Canción Eterna." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Stormarion semanal en la Tormenta del vacío." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada élite raro una vez por zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "d47e5b93", text = "Si no se ha hecho, busca los tesoros de cada región para reputación gratuita. Ver documento para la guía." }, -- ⚠️ UNVERIFIED
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
            { id = "c3de7d35", text = "No gastes ningún Blasón hasta que se indique" },
            { id = "75c5fe6e", text = "Si no está completo, continúa subiendo reputación para piezas de campeón" },
            { id = "e326ed96", text = "Completa la Velada de Saltheril semanal en el Bosque Canción Eterna." },
            { id = "da2fa0ef", text = "Completa el Evento de la abundancia semanal en Zul'Aman." },
            { id = "dbc8384b", text = "Completa el evento Leyendas de los Haranir semanal en Harandar." },
            { id = "9ad64245", text = "Completa el Asalto de Stormarion semanal en la Tormenta del vacío." },
            { id = "35bc0cfd", text = "(Opcional) Mata cada élite raro una vez por zona para reputación. Tienen un bloqueo semanal por raro." },
            { id = "072e6955", text = "Desbloquea Profundidades hasta nivel 8 (11 si disponible), si aún no está hecho" },
            { id = "91b50b0a", text = "(Opcional) Completa 4 veces la Presa normal para equipo de aventurero y reputación." },
            { id = "e0029ef7", text = "Completa 4 veces la Presa difícil para equipo de veterano y reputación." },
            { id = "a7ee4829", text = "Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto veterano – no mejores todavía" },
            { id = "c33e5c84", text = "Si raideas el martes 17, fabrica. Consulta el documento para más información." },
        },
    },

    {
        id = "33a3fcba",
        title = "Temporada 1 semana 1 - 17 de marzo - Semana heroica",
        items = {
            { id = "c3de7d35", text = "No gastes ningún Blasón hasta que se indique" },
            { id = "5b379666", text = "Haz LFR para piezas de conjunto (consulta la guía para saber por qué)" },
            { id = "dd71541a", text = "(¿Opcional?) Completa un tour mundial de mazmorras M0 – recompensa nivel de objeto campeón" }, -- ⚠️ UNVERIFIED
            { id = "123747cb", text = "Completa 4 veces la Presa de pesadilla para equipo de campeón y reputación." },
            { id = "dc0e2686", text = "Mata al jefe del mundo para objeto campeón 2/6 nivel 250" },
            { id = "3e0dfde7", text = "Si disponible, completa la misión JcJ para collar/anillo de héroe garantizado" },
            { id = "fdfd56bc", text = "Haz Profundidades abundantes T8 con llaves de cofre, usa el mapa en Profundidades T8+" },
            { id = "eff76e73", text = "Antes de la banda: fabrica 2 piezas niv. 246, 2 adornos en huecos débiles, usa 160 blasones de veterano" },
            { id = "2af0bfb5", text = "Antes de la banda: gasta todos los blasones de aventurero, veterano y campeón mejorándolo todo" },
            { id = "5768e0fe", text = "Control de blasones: 0/100 Heroicos, 0/100 Míticos" },
        },
    },

    {
        id = "d2de9d43",
        title = "Semana 2 - 24 de marzo - Semana mítica, M+ abre, pedid vacaciones frikis",
        items = {
            { id = "c3de7d35", text = "No gastes ningún Blasón hasta que se indique" },
            { id = "7e42a12d", text = "Nota arma fabricada 1M, consulta la guía, verifica la ruta de fabricación (¡MUY IMPORTANTE!)" },
            { id = "5b379666", text = "Haz LFR para piezas de conjunto (consulta la guía para saber por qué)" },
            { id = "16cf341e", text = "(Opcional) Mata al jefe del mundo para objeto campeón 2/6 nivel 250" },
            { id = "3ccf0a1f", text = "(Opcional) Completa 4 veces la Presa de pesadilla para equipo de campeón y reputación." },
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
            { id = "fb8255a7", text = "Fabrica objetos – consulta la guía para 2 rutas a elegir" },
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
