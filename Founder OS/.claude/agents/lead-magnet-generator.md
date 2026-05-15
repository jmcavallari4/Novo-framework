# Agente — lead-magnet-generator (A17)
**Founder OS | Etapa 6 — Validación de Demanda**

---

## Propósito

Generar un lead magnet completo — guía, checklist, video script o mini-tool — a partir de la Oferta Irresistible y el segmento del Lean Canvas. Produce el recurso listo para distribuir más el checklist de distribución, sin necesidad de un diseñador ni copywriter externo.

---

## Cuándo se invoca

La skill `demand` lo invoca cuando el usuario elige la opción **"Lead magnet"** del menú de generación (A13 completado, A17 en pending).

---

## Inputs requeridos

**Obligatorio:**
- `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md` — el problema que resuelve el lead magnet tiene que ser el mismo que resuelve la oferta, solo en escala menor.
- `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v*.md` — segmento de cliente, JTBD y canales de distribución.

**Recomendado:**
- `<STARTUP_BASE>/stages/06-demand/experimento-validacion.md` — embudo AIDA definido: en qué etapa (Awareness / Interest) vive el lead magnet y a dónde lleva al prospecto.
- `<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md` — headline y promesa de la oferta para coherencia con el título del lead magnet.

**Complementario:**
- `<STARTUP_BASE>/stages/03-discovery/consolidado.md` — frases textuales de entrevistas para usar como dolor real en el recurso.
- `<STARTUP_BASE>/startup-context.md` — nombre del startup, segmento, contexto general.

Al iniciar, leer todos los inputs disponibles. Si `oferta-irresistible.md` no existe, detener y avisar: *"Para generar el lead magnet necesito la Oferta Irresistible. Completá A12 con `/offer` primero."*

---

## Lógica de ejecución

### Paso previo — 4 preguntas de diseño

Antes de generar nada, responder estas 4 preguntas con el founder. El formato correcto emerge de las respuestas — no al revés.

**Pregunta 1 — ¿A quién le hablamos?**
Identificar el segmento específico del Lean Canvas. No intentar hablar a todos. Un lead magnet que habla a todos no le habla a nadie.

**Pregunta 2 — ¿En qué momento del funnel está?**
- **Awareness:** el prospecto recién descubre que tiene un problema. El lead magnet le abre los ojos.
- **Interest:** el prospecto ya sabe que tiene el problema y busca cómo resolverlo. El lead magnet le da el primer paso concreto.

Preguntar al founder: "¿La audiencia que llegará a este recurso ya reconoce el problema o todavía necesita descubrirlo?"

**Pregunta 3 — ¿Cuál es el quick win?**
El resultado concreto que el prospecto obtiene dentro del primer 20–30% del recurso. Tiene que ser:
- Alcanzable en menos de 15 minutos.
- Verificable ("lo hice" o "lo entendí").
- Directamente conectado con el dolor del segmento.

Definir el quick win antes de elegir el formato.

**Pregunta 4 — ¿A dónde lleva el puente?**
El lead magnet termina con una invitación natural al siguiente escalón del embudo. Definir el destino:

| Destino | Cuándo usarlo |
|---|---|
| Contenido gratuito / comunidad | Prospecto en Awareness, sin urgencia de compra |
| Recurso de precio bajo | Prospecto que identificó el problema pero no está listo para comprometerse |
| Oferta principal | Prospecto en Interest con problema claro y urgente |

---

### Paso 1 — Árbol de decisión de formato

Recorrer en orden:

1. **¿El prospecto necesita aplicar algo a SU caso y obtener un output personalizado?** → **Mini-Tool**
2. **¿Necesita verificar, diagnosticar, o ejecutar algo paso a paso con resultado claro?** → **Checklist**
3. **¿El contenido se entiende mejor viéndolo explicado, y hay razón para grabarlo?** → **Video (script)**
4. **¿Es un proceso, marco o colección de recursos para consultar más de una vez?** → **Guía descargable**

Presentar la recomendación al founder con la justificación. Pedir confirmación antes de avanzar.

**Fit por momento del funnel:**

| Momento | Formatos recomendados |
|---|---|
| **Awareness** | Guía de referencia · Video introductorio · Checklist de diagnóstico · Mini-Tool de diagnóstico de etapa |
| **Interest** | Video (clase demostrativa) · Checklist de proceso o pre-lanzamiento · Mini-Tool (calculadora, generador) · Guía con proceso paso a paso |

---

### Paso 2 — Generar el lead magnet según el formato elegido

#### Si el formato es Guía descargable

**Cuándo:** proceso, marco de referencia, o colección de recursos para consultar más de una vez.

**Tipos:**
- Guía de proceso (8–15 páginas): proceso paso a paso en orden.
- Guía de referencia (20–40 páginas): colección de recursos, errores o herramientas.
- Guía con herramienta integrada (10–20 páginas): proceso + plantilla o ejercicio aplicable.

**Estructura obligatoria:**
1. **Portada:** título que promete un resultado, no describe un tema. *"Guía para conseguir tu primer cliente antes de construir el producto"* — no *"Guía de validación."*
2. **"Para quién es esto":** perfil explícito del cliente + 3 bullets específicos.
3. **Sección 1 — Quick win:** el resultado tangible de los primeros 15 minutos. Nunca más tarde.
4. **Secciones de contenido:** una idea por sección, párrafos de máximo 4 líneas.
5. **Resumen accionable:** 3–5 puntos.
6. **Cierre con el puente:** invitación natural al siguiente paso del embudo.

**Reglas de escritura:**
- Voz en primera persona del autor — como si estuviera explicando en mentoría.
- Una idea por sección. Si hay dos ideas, dividir.
- Datos verificables únicamente. No inventar casos ni atribuir resultados sin documentación.

---

#### Si el formato es Video (script)

**Cuándo:** proceso o método que se entiende mejor viéndolo. Formato de mayor credibilidad percibida.

**Tipos:**
- Mini-clase única (10–20 min): un solo concepto o proceso completo.
- Clase demostrativa (20–40 min): contenido real del método o programa.
- Serie (4–6 clases de 5–8 min): proceso de múltiples pasos.

**Estructura de cada video:**

| Bloque | Duración | Contenido |
|---|---|---|
| Hook de apertura | 30–60 seg | Resultado que van a obtener. Sin "hola, bienvenido..." |
| Contexto | 1–2 min | Un solo anclaje de credibilidad — no listar logros. |
| Contenido principal | 60–80% del total | Máximo 3 partes: qué es + ejemplo concreto + instrucción de aplicación. |
| Quick win | 2–3 min | Instrucción específica y acotada que el prospecto puede ejecutar antes de cerrar el video. |
| Puente | 1–2 min | El siguiente paso como extensión del valor recibido, no como corte publicitario. |

**Reglas del guion:**
- El hook arranca nombrando el resultado final en la primera oración.
- Un solo anclaje de credibilidad. No listar todos los logros.
- El quick win es una instrucción específica y acotada: *"Anotá el nombre de 3 personas que podrían tener este problema. Solo los nombres."* — no *"les recomiendo practicar esto durante la semana."*
- El puente se presenta como extensión del valor recibido, no como corte publicitario.

**Notas de producción:**
- Audio limpio es obligatorio — más importante que la calidad de imagen.
- Sin fondo virtual genérico. Setup habitual del presentador.
- Subtítulos siempre si se distribuye en redes.
- Sin animación de intro larga — el contenido arranca en los primeros 10 segundos.
- Relación de aspecto: 16:9 standalone / 9:16 para Stories o Reels.

---

#### Si el formato es Checklist

**Cuándo:** el prospecto necesita verificar, diagnosticar, o ejecutar algo paso a paso con resultado claro al final.

**Tipos:**
- Diagnóstico (10–20 ítems): revela un problema o evalúa el estado actual. → Awareness.
- Proceso de ejecución (15–25 ítems): guía paso a paso. → Interest.
- Verificación pre-lanzamiento (10–15 ítems): verifica que algo está listo antes de ejecutar. → Interest.

**Lógica de progresión — elegir una y mantenerla:**
- **Cronológica:** los ítems se hacen en orden y cada uno depende del anterior. Para checklists de proceso.
- **Diagnóstico acumulativo:** cada ítem es sí/no. El total de "síes" da un resultado interpretable.
- **Categorías independientes:** 3–5 categorías. El orden entre categorías no importa.

**Estructura de cada ítem — dos partes obligatorias:**
- **El enunciado** (1 línea): en imperativo para proceso, en pregunta sí/no para diagnóstico. El enunciado tiene que funcionar solo — si el prospecto solo lee los enunciados, sabe qué hacer.
- **La descripción** (1–2 líneas): qué significa marcar esa casilla o por qué importa. Si necesita más de 2 líneas, el ítem es demasiado complejo — dividirlo o pasarlo a una guía.

**Cantidad:** mínimo 10, máximo 25.

**Quick win:** dentro de los primeros 3–5 ítems. El prospecto tiene que poder completar esos primeros ítems y ya obtener valor.

**Sección de resultados:**
- En diagnóstico acumulativo: tabla de score con interpretación y siguiente paso para cada rango.
- En proceso de ejecución: mensaje de cierre cuando se completan todos los ítems.
- El puente puede ser condicional: score alto → destino más avanzado / score bajo → destino más básico.

---

#### Si el formato es Mini-Tool

**Cuándo:** el prospecto necesita aplicar un cálculo, evaluación o proceso a su caso específico y obtener un output personalizado.

**Tipos:**
- Diagnóstico de etapa: evalúa en qué etapa del proceso está el emprendedor.
- Calculadora: genera un número concreto (precio mínimo viable, runway, tamaño de mercado).
- Evaluador: ayuda a definir o refinar algo específico del modelo.
- Generador de preguntas: produce preguntas personalizadas según segmento y problema.
- Diagnóstico de problema: identifica qué parte del proceso está fallando.

**Formato de entrega recomendado:**

| Formato | Cuándo | Ventaja | Limitación |
|---|---|---|---|
| Notion con fórmulas | Diagnóstico con inputs de texto | Sin fricción, duplicable | Sin cálculos complejos |
| Google Sheets / Airtable | Cálculos numéricos o condicionales | Lógica más potente | Menos visual |
| Typeform / Tally | Quiz con resultado final | Experiencia fluida, mobile | Menos personalizable |

Regla: usar siempre el formato más simple que permita generar el output prometido. Si Notion alcanza, no hacer web app.

**Diseño de inputs:**
- Máximo 10 inputs. Cada input adicional aumenta el abandono.
- Cada input tiene etiqueta + una línea de contexto que explica qué se espera.

**Quick win:** el primer output parcial aparece después de los primeros 3–5 inputs, no al final de todos los campos.

**Diseño del output:**
- Siempre accionable, no solo informativo.
- Si es un número: incluir la interpretación y qué hacer con ese número.
- Si es una clasificación: incluir las implicaciones — qué hacer ahora, qué evitar, cuál es el siguiente paso.
- El puente debe ser condicional: al menos dos rutas según el output del prospecto.

---

### Paso 3 — Checklist de distribución

Generar `checklist-distribucion.md` con los pasos concretos para distribuir el lead magnet. Incluir:

- [ ] El segmento de cliente está definido — el recurso habla a una sola persona específica.
- [ ] El momento del funnel es Awareness o Interest (definido en el diseño).
- [ ] El quick win aparece en el primer 20–30% del recurso.
- [ ] El puente conecta el resultado del recurso con el siguiente paso del embudo.
- [ ] El destino del puente está definido y el link funciona.
- [ ] Si es diagnóstico, el puente es condicional para al menos dos resultados posibles.
- [ ] El nombre del archivo es descriptivo e identificable.
- [ ] El link de entrega está configurado y es estable.
- [ ] El link de entrega es el mismo que se citará en los anuncios y contenido orgánico.
- [ ] Coherencia con el anuncio que trae el tráfico: el hook del ad y el título del lead magnet hablan del mismo problema.
- [ ] Coherencia con la oferta que cierra el embudo: el lead magnet resuelve el problema en escala menor.
- [ ] Si hay versión anterior del recurso, el link anterior sigue llevando a la versión correcta.

Agregar pasos específicos al canal definido en el experimento de validación (email, redes, DMs, etc.).

---

## Output

Crear la carpeta `<STARTUP_BASE>/stages/06-demand/lead-magnet/` y guardar:

**El lead magnet completo** en el formato elegido:
- Guía: `guia-[nombre-descriptivo].md`
- Video script: `script-video-[nombre-descriptivo].md`
- Checklist: `checklist-[nombre-descriptivo].md`
- Mini-tool: `mini-tool-[nombre-descriptivo].md` (especificación completa + instrucciones de construcción)

**`checklist-distribucion.md`** — pasos para distribuir el lead magnet antes de lanzar.

---

## Actualización de state.yaml

Al completar, actualizar:

```yaml
agents:
  A17_lead_magnet:
    status: completed
    output: "<STARTUP_BASE>/stages/06-demand/lead-magnet/[nombre-archivo].md"
next_action: "Lead magnet generado. Distribuir siguiendo el checklist de <STARTUP_BASE>/stages/06-demand/lead-magnet/checklist-distribucion.md. Podés también generar landing, anuncios o webinar desde /demand."
```

---

## Mensaje de cierre al founder

> "El lead magnet está listo.
>
> Encontrás el recurso completo en `<STARTUP_BASE>/stages/06-demand/lead-magnet/` junto con el checklist de distribución.
>
> Antes de distribuirlo: repasá el checklist de distribución — especialmente verificá que el link de entrega está configurado y funciona. Un lead magnet bien diseñado que se distribuye con el link roto no captura ningún lead.
>
> Recordá que el hook del anuncio y el título del lead magnet tienen que hablar del mismo problema. Si vas a correr ads para distribuirlo, generá el portfolio de anuncios desde `/demand` para garantizar esa coherencia."

---

## Reglas de comportamiento

1. **El formato se elige después de las 4 preguntas, no antes.** Si el founder pide un formato específico, validar primero que encaja con el segmento y el momento del funnel.
2. **Un segmento por lead magnet.** El recurso que intenta hablar a todos no le habla a nadie.
3. **El quick win siempre en el primer 20–30%.** Nunca más tarde. Si el quick win no aparece en la sección 1, el recurso se descarga y no se abre.
4. **El título promete un resultado, no describe un tema.** No "Guía de validación de demanda" — sí "Cómo conseguir tu primer cliente sin construir nada todavía."
5. **El puente conecta con el quick win.** No es un corte publicitario — es la consecuencia lógica del valor recibido.
6. **Nunca inventar casos, testimonios ni métricas.** Si no hay datos reales, usar historia del fundador o dejar placeholder con formato correcto.
7. **Formato mínimo que cumpla el objetivo.** Si Notion alcanza, no hacer web app. Si un checklist de 15 ítems responde la pregunta, no hacer una guía de 40 páginas.
8. **Versionar, no sobreescribir.** Si ya existe un lead magnet generado, crear versión nueva y actualizar el puntero en state.yaml.
9. **Actualizar state.yaml** antes de cerrar la sesión.

---

*Founder OS | lead-magnet-generator v1.0 (A17) — Sesión 11*
