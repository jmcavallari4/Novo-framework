# Se Juega · Conocimiento de la campaña
Actualizado al 15/10/2026. Resume todo lo hecho hasta ahora: decisiones, textos, equipos, métricas, aprendizajes y pendientes.

---

## 1. El producto

**Qué hace la app**
1. El equipo se registra: nombre, categoría (masculino, femenino o mixto), zona, días y horarios.
2. Busca rivales con filtros por zona, disponibilidad y nivel, o desafía a quien quiera.
3. Coordina el partido con el capitán rival en la comunidad de WhatsApp de Se Juega (lugar, día y hora).
4. Carga el desafío en la app y el rival lo confirma.
5. Después del partido, los dos capitanes cargan el resultado y califican el comportamiento del rival.
6. Suman en el ranking de su zona.

**Pantallas de la app:** Tabla, Buscar, Desafíos, Partidos, Mi equipo. El ranking se filtra por zona (Toda BA, CABA, Norte, Oeste, Sur). Todos los equipos arrancan con 1200 de ELO.

**Reglas importantes (de las preguntas frecuentes de la landing)**
- Usar Se Juega es gratis.
- Si en los primeros 15 días un equipo no consigue rival, Juan Martín lo conecta personalmente con equipos de su zona.
- Por ahora solo funciona en AMBA.
- Si los dos equipos cargan resultados distintos, el partido queda pendiente. Con tres discrepancias, el equipo pierde todos sus pendientes.
- Si un rival no se presenta, se reporta desde la app. Si lo hace más de una vez, pierde automáticamente y baja su reputación.
- Los equipos con mala reputación aparecen menos en las búsquedas.
- Se puede tener más de un equipo. No hay límite de partidos por semana, pero si desafiás al mismo equipo más de una vez en el mes, solo el primer partido cuenta para el ranking.

**Links**
- Landing: https://sejuega.net
- App web: https://app.sejuega.net (en iPhone: abrir en Safari → Compartir → Agregar a inicio)
- APK Android: https://app.sejuega.net/sejuega.apk
- Comunidad de WhatsApp: https://chat.whatsapp.com/H1hB0DGMLkW9i5ypX3b58y
- Instagram: @sejuega_app

**La landing (sejuega.net)**
- Todos los botones dicen "Ingresá a la app".
- En Android, el botón principal es "Descargar la app para Android".
- Destaca que los partidos se coordinan en la comunidad de WhatsApp: tiene un bloque en el inicio, una sección propia, un botón verde en el cierre, el paso 3 de "¿Cómo funciona?", una pregunta frecuente y "Comunidad" en el menú.
- Muestra la oferta de octubre.
- Los cambios técnicos de la landing se hacen en Claude Code, con el repositorio jmcavallari4/se-juega-landing, que se publica solo en Vercel.

---

## 2. Oferta y mensajes clave

- **Oferta:** los equipos que se registren hasta el 31/10 son **equipos fundadores** y tienen acceso **gratis para siempre a todas las funciones premium futuras**.
- **No se cobra nada.** La versión vieja ("gratis para los primeros 100 equipos, después USD 5 por mes") ya no corre. No usarla.
- **Arranque fuerte:** noviembre. La app ya funciona y se puede jugar.
- **Posicionamiento:** una comunidad que conecta equipos de fútbol amateur de CABA y GBA para armar partidos, registrar resultados y competir en el ranking.

---

## 3. Comunidad de WhatsApp

- Se entra con un link abierto; cualquiera puede sumarse.
- **Estructura:**
  - "Avisos": solo escriben los admins.
  - "General y partidos": donde se coordina.
  - Opcional: "Ideas y feedback".
  - "Busco desafío" queda para más adelante, si hace falta.
  - No hay grupo aparte de presentaciones.
- **Descripción de la comunidad:** "Comunidad que conecta equipos de fútbol amateur de CABA y GBA para armar partidos, registrar resultados y competir en el ranking." + links de la app, la APK, la instalación en iPhone y sejuega.net.
- **Descripción de "General y partidos":**
  > Grupo general de Se Juega y el lugar donde se coordinan los partidos ⚽
  > Presentá tu equipo (nombre, zona, días/horarios y modalidad), buscá rival y arreglá el partido con el otro capitán. Después cargá el resultado en la app para sumar al ranking.
- **Mensaje de bienvenida enviado:** presentación de la etapa inicial, arranque en noviembre, rango de fundador y pedido de Instagram, nombre y zona de cada equipo.

---

## 4. Equipos fundadores (21, al 15/10)

| # | Equipo | Zona | Instagram | Escudo |
|---|---|---|---|---|
| 1 | Nacional | Palermo | @naciogramoficial | sí |
| 2 | Fabo FC | Liniers | @fabooficial_ | sí |
| 3 | Old boys | Caballito | @old.boys_ | sí |
| 4 | Team Gonza | Barracas | @teamgonza_oficial | sí |
| 5 | Atlético Vineiro | Villa Urquiza | @atl_vineiro | sí |
| 6 | LP12 | Villa del Parque | @lp12oficial_ | sí |
| 7 | Correntinos F.C | Palermo | @correntinosfc | sí |
| 8 | Il capo rejunte | Temperley (PBA Sur) | @el.rejunte.sj | sí |
| 9 | Combinada fc (mixto) | Saavedra | @combinada.futbol | sí |
| 10 | Nolodejan Fc | Villa Lugano | @nolodejan.fc | sí |
| 11 | CAPLA FC | Avellaneda | @caplafc | sí |
| 12 | Muchachos FC | Boedo | — | sí |
| 13 | LAF | Colegiales | — | sí |
| 14 | Manzanares Team | Villa Luzuriaga (PBA Oeste) | — | sí |
| 15 | Fulbito Colegiales FC | Colegiales | — | sí |
| 16 | Los amigos del men | Caballito | — | no |
| 17 | La Ranchada 2.0 | San Francisco Solano (PBA Sur) | — | no |
| 18 | Inferno FC | San Nicolás | — | no |
| 19 | Los copos FC | Bernal (PBA Sur) | — | no |
| 20 | Pisala fc | Morón (PBA Oeste) | — | no |
| 21 | La Pepe | PBA Sur (sin confirmar: cargó "Caba") | — | no |

Nacional es el equipo de Juan Martín. Todos son masculinos, salvo Combinada fc, que es mixto.

---

## 5. Instagram (@sejuega_app)

**Qué se hizo**
- Se revivió el perfil, que estaba abandonado.
- Se publicaron:
  - un carrusel de presentación ("La gran liga del fútbol amateur", "¿Cómo funciona?" y cierre);
  - un post con la oferta de octubre;
  - destacados (Cómo funciona, Equipos, FAQ).
- **15/10:** se publicó el carrusel "¡Bienvenidos, equipos fundadores!": 8 placas con los 21 equipos, más una historia por cada equipo con Instagram y una general.

**Texto del carrusel de fundadores**
> En esta primera semana, estos son los equipos que se sumaron a Se Juega ⚽ Por su apoyo desde el inicio, obtuvieron el rango de equipo fundador ⭐
> Gracias por sumarse desde el arranque @naciogramoficial @old.boys_ @teamgonza_oficial @atl_vineiro @lp12oficial_ @correntinosfc @el.rejunte.sj @combinada.futbol @nolodejan.fc @caplafc @fabooficial_ 🙌
> ¿Tu equipo todavía no está? Sumalo antes del 31/10 y es fundador: funciones premium gratis para siempre. Link en la bio.
> #futbolamateur #futbol5 #buscorival #futbolcaba #sejuega

**Métricas (últimos 30 días, al 14/10)**
- 1237 visualizaciones, de 319 espectadores (personas distintas).
- 61% de las visualizaciones fueron de seguidores.
- 204 seguidores, +11 netos.
- Publicaciones: unas 1000 visualizaciones, mitad de no seguidores. Historias: 152, casi todas de seguidores. Reels: 6 (no hay reels).
- Lectura: no es humo, pero le habla sobre todo a la gente que ya seguía la cuenta. Para llegar a nuevos: que los equipos compartan el carrusel, y reels.

**Cómo captar en Instagram**
- Seguir a la cuenta → comentar algo genuino → recién al día siguiente, mandar mensaje privado si corresponde.
- **El 14/10 Instagram pidió verificar que no era un robot después de unos 20 mensajes.** La cuenta está bajo la lupa:
  - 5 a 10 mensajes privados por día como máximo durante una o dos semanas;
  - 10 a 15 comentarios por día, espaciados y distintos entre sí, relacionados con la publicación;
  - sin links en comentarios ni en el primer mensaje;
  - mezclar con actividad normal (likes, historias, responder).
- Las historias no se pueden subir desde instagram.com en la compu. Se suben desde el celular, con el sticker de mención.

**Pendientes en Instagram**
- Cambiar el link de la bio por `https://sejuega.net/?utm_source=instagram&utm_medium=bio`.
- Hacer un reel por semana (por ejemplo, grabación de pantalla de 15 segundos usando la app).
- Fijar el carrusel de fundadores en el perfil.

---

## 6. Volantes

- **Volante viejo (blanco y negro, ya impreso):**
  - tenía 6 pasos, un QR a Instagram y un QR a la landing sin seguimiento;
  - no decía "gratis" ni mencionaba la comunidad;
  - el discurso de reparto decía "primeros 100 equipos / USD 5": está desactualizado.
- **Volante nuevo (10x15, a color, diseño propio con mockup de la app):**
  - título "¿Buscás rival?" y 4 pasos;
  - QR con seguimiento: `https://sejuega.net/?utm_source=flyer&utm_medium=impreso&utm_campaign=canchas-octubre`;
  - franja con la oferta del 31/10, sejuega.net e IG @sejuega_app.
- **Cómo repartir:**
  - en mano a los capitanes, en horario pico (20 a 23 h);
  - pedir al encargado del complejo dejar volantes y pegar un afiche en la cartelera;
  - no dejarlos en parabrisas.
- **Medición:** en GA4, Adquisición de tráfico → fuente/medio `flyer / impreso`.
- **Idea a futuro:** un QR distinto por cancha (`utm_campaign=canchas-octubre-palermo`, etc.) para saber cuál trae más equipos.

---

## 7. Lugares de difusión y aprendizajes

**Ya trabajado o descartado**
- **Comunidad de WhatsApp Fulbitos5:**
  - ya se escribió uno por uno a todos los miembros del grupo "Tengo equipo, busco rival", con la página auxiliar de mensajes;
  - no se puede escribir en el grupo;
  - está agotada.
- **Propuesta de Milton (admin de Fulbitos5):**
  - ofrecía una ficha en la web de Fulbitos5, publicaciones diarias en sus grupos y un grupo de Se Juega dentro de su comunidad;
  - costaba 25 mil por semana o 100 mil por mes;
  - **descartada.** Su comunidad compite con la de Se Juega, también publicita a un competidor directo, el grupo quedaría bajo su control, el público ya estaba contactado y no mostró resultados.
- **HoySeJuega:** sitio muerto, sin equipos activos.

**Prioridad para buscar lugares nuevos**
1. **Complejos de canchas:** afiche con QR y volantes. Argumento para el complejo: si los equipos consiguen rival, alquilan más turnos.
2. **Organizadores de ligas y torneos:** alianzas. Ellos hacen torneos; Se Juega, amistosos y ranking.
3. **Grupos de Facebook y comunidades de WhatsApp de AMBA:** hay que buscarlos desde Facebook, porque los buscadores no los muestran.
4. **Cuentas de Instagram y TikTok del rubro:** para comentar o proponer colaboraciones.

**Tabla en Notion:** "Se Juega · Lugares para difundir" (https://app.notion.com/p/cacb1a296709412ea320da0de8e1b6c4).
- Columnas: Lugar, Tipo, Prioridad, Estado, Zona, Link, Contacto, Miembros aprox, Por qué, Mensaje sugerido, Encontrado.
- Primera tanda (14/10): Fútbol Vieytes, Campus Sport Arena, Marangoni, Belaustegui, Chacabuco, La Casona, Container Fútbol Club, Torneoya, El Sapo, Liga Santander, SB5 y el directorio Canchea.
- Por dónde arrancar: Torneoya, Fútbol Vieytes y El Sapo.

**Agente semanal**
- Rutina "Se Juega · búsqueda semanal de lugares para difundir", los miércoles a las 19:13 (hora de Argentina).
- Busca entre 10 y 20 lugares nuevos y nunca publica ni manda mensajes.
- **Pendiente:** agregarle el conector de Notion desde claude.ai → Rutinas → Editar. Sin eso, deja la lista solo en el resumen de la sesión.

**Mensajes modelo**
- **A un complejo:**
  > ¡Hola! Soy Juan Martín, de Se Juega, una app gratis para que los equipos de fútbol amateur consigan rival de su nivel. Estamos sumando complejos aliados: les dejamos sin costo un afiche con QR para la cartelera y algunos volantes. A ustedes les suma porque los equipos que consiguen rival alquilan más turnos. ¿Les interesa?
- **A una liga:**
  > ¡Hola! Soy Juan Martín, de Se Juega, una app gratis donde los equipos de fútbol amateur de AMBA consiguen rival de su nivel y suman en un ranking. Me gustaría proponerles una alianza: nosotros difundimos sus torneos entre nuestros equipos y sus equipos pueden usar Se Juega para jugar amistosos entre fechas. ¿Lo charlamos?
- **Por WhatsApp a miembros de una comunidad:** un solo mensaje corto, que diga dónde lo viste ("te vi en el grupo X de la comunidad Y"), la propuesta en una línea y el link. Unos 20 por día como máximo, a mano.
- **Respuesta a "¿dónde se juega y cuánto sale?":** sencilla y sin marketing. La cancha la siguen reservando los equipos como siempre; Se Juega no cobra.

---

## 8. Medición

- **GA4** en la landing. Evento `ir_a_la_app`, con el origen del clic: hero, navbar, cierre, descarga_android, comunidad_hero, comunidad_seccion, comunidad_cierre.
- **Píxel de Meta** en la landing. Evento `IrALaApp`.
- **Etiquetas UTM en uso:**
  - volante: `utm_source=flyer&utm_medium=impreso&utm_campaign=canchas-octubre`;
  - bio de Instagram (a configurar): `utm_source=instagram&utm_medium=bio`.
- Las etiquetas UTM pasan de la landing a la app. No está verificado que la app las guarde en el registro.

---

## 9. Decisiones de inversión

- **Principio:** gastar lo mínimo. Lo que se pague tiene que dejar algo propio o ser una prueba chica y medible.
- **Play Store: conviene.**
  - Cuesta USD 25, una sola vez, y saca las advertencias de "origen desconocido" que asustan al instalar la APK.
  - Requisito para cuentas personales nuevas: una prueba cerrada con al menos 12 testers durante 14 días. La idea es pedirle voluntarios a la comunidad de fundadores.
  - Calcular unas 3 semanas en total.
  - **Pendiente.**
- **Meta Ads:** más adelante, con 50 a 100 mil para una prueba que dé datos. Con 25 mil no alcanza para que el algoritmo aprenda.
- **Pago a comunidades ajenas:** descartado (ver Milton).

---

## 10. Pendientes al 15/10

- [ ] Agregar el conector de Notion a la rutina de los miércoles.
- [ ] Cambiar el link de la bio de Instagram por el que tiene UTM.
- [ ] Pedir a los equipos etiquetados que compartan el carrusel de fundadores.
- [ ] Confirmar la zona de La Pepe.
- [ ] Contactar a los primeros lugares de Notion: Torneoya, Fútbol Vieytes y El Sapo.
- [ ] Imprimir el volante nuevo (hacer una prueba antes y escanear el QR) y repartir antes del 31/10.
- [ ] Buscar desde Facebook grupos de fútbol amateur de AMBA y cargarlos en Notion.
- [ ] Empezar con un reel por semana.
- [ ] Iniciar el trámite de Play Store y pedir 12 a 15 testers en la comunidad.
- [ ] Revisar en GA4 que aparezcan las visitas de `flyer / impreso` y de Instagram.
- [ ] Planificar la comunicación del arranque de noviembre (qué cambia el 1/11 para los fundadores y para los nuevos).
