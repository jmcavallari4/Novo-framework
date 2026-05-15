# Skill: mindset

## Qué es esta skill

Guía al founder por los 6 marcos mentales del SVP™ antes de entrar al método. La Etapa 1 no produce un entregable ejecutivo (no es un Lean Canvas ni un experimento), sino un output de reflexión: el founder articula en sus propias palabras qué cree, qué sesgos reconoce en sí mismo y cuál es su ventaja injusta. Sin esta base, todas las etapas siguientes se aplican con los sesgos que el método está diseñado a corregir.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/mindset`
2. El sistema detecta que `active_stage: 1` en `state.yaml` y el agente correspondiente está `pending`
3. El usuario termina `/onboarding` y elige empezar por mindset

---

## Archivos que esta skill lee

- `.claude/skills/mindset/knowledge/sop-mindset.md` — marcos concretos, preguntas de reflexión y señales de readiness
- `<STARTUP_BASE>/startup-context.md` — para personalizar las preguntas al contexto del startup del founder
- `<STARTUP_BASE>/.founder-os/state.yaml` — para detectar el modo correcto y actualizar al finalizar

---

## Modo único: recorrido guiado de mindset

Esta skill tiene un solo modo. No tiene variantes por estado porque siempre se ejecuta desde cero (no hay outputs previos que cambien el flujo).

### Paso 1 — Leer contexto y presentar el marco

Antes de empezar:
1. Leer `<STARTUP_BASE>/startup-context.md` para conocer nombre del startup, problema e hipótesis.
2. Leer `sop-mindset.md` para tener los marcos y preguntas disponibles.
3. Leer `state.yaml` para verificar que no esté ya `completed` (si lo está, ofrecer iterar en lugar de rehacer desde cero).

Presentar al founder el propósito de la etapa en 2–3 líneas. No listar los 6 mindsets todavía. Solo establecer el tono: esto no es contenido a consumir, es un trabajo de reflexión personal que prepara el terreno para todo lo que viene.

### Paso 2 — Recorrer los 6 marcos mentales

Trabajar un marco por vez. Para cada uno:

1. Presentar la tesis del marco en 2–3 líneas (ver `sop-mindset.md`).
2. Hacer la pregunta de reflexión del SOP adaptada al contexto del startup del founder.
3. Esperar respuesta.
4. Si la respuesta muestra sesgo claro (ver "señales de alarma" en el SOP), nombrarlo sin juzgar y ofrecer una pregunta de repregunta.
5. Si la respuesta es genuina y consciente, confirmar y avanzar.

**Orden de los marcos:**
1. El producto es tu modelo de negocios
2. Enamórate del problema, no de la solución
3. Tu objetivo #1 es generar tracción
4. La acción correcta en el momento correcto
5. Toma decisiones basadas en evidencia
6. Mantente responsable externamente

No apresurar el recorrido. Si el founder tiene algo que procesar, dejarlo. La velocidad correcta es la del founder, no la del sistema.

### Paso 3 — Evaluar el Founder/Idea Fit

Después de los 6 marcos, hacer las 4 preguntas de ventaja injusta del SOP:

1. ¿Qué sabés sobre este problema o mercado que pocos saben?
2. ¿Qué podés construir que otros no puedan con la misma facilidad?
3. ¿Qué conexiones o acceso tenés que te acerquen a los primeros clientes?
4. ¿Por qué sos vos la persona indicada para esta idea?

Clasificar la ventaja detectada (industria, técnica, producto, catalizadora) y reflejarlo en el output.

### Paso 4 — Ubicar al founder en el Camino del Emprendedor

Preguntar en cuál de los 5 fits se encuentra hoy, usando lenguaje simple (no tecnicismos forzados):

- ¿Todavía estás validando si el problema existe? → Customer/Problem Fit pendiente
- ¿Ya sabés que el problema existe pero no encontraste solución que quieran pagar? → Problem/Solution Fit
- ¿Ya tenés gente pagando pero no escala? → buscando Product/Market Fit

Usar la respuesta para ajustar el resumen final.

### Paso 5 — Generar el output

Crear el archivo `<STARTUP_BASE>/stages/01-mindset/reflexiones-mindset.md` con el siguiente formato:

```markdown
# Reflexiones de Mindset — [Nombre del Startup]

Fecha: [fecha actual]

---

## Los 6 marcos mentales

### 1. El producto es tu modelo de negocios
[Reflexión del founder en sus propias palabras + síntesis de 1–2 líneas del modelo]

### 2. Enamórate del problema, no de la solución
[Descripción del problema que el founder identifica + señales de qué tan enamorado está del problema vs. la solución]

### 3. Tu objetivo #1 es generar tracción
[Qué entiende el founder por tracción en su modelo + qué métricas piensa usar]

### 4. La acción correcta en el momento correcto
[Qué hipótesis identifica como más riesgosa ahora + qué está tentado a hacer antes de tiempo]

### 5. Toma decisiones basadas en evidencia
[Qué evidencia tiene hoy + qué sigue siendo suposición]

### 6. Mantente responsable externamente
[Con quién rinde cuentas hoy o cómo planea hacerlo]

---

## Founder/Idea Fit

**Tipo de ventaja identificada:** [industria / técnica / producto / catalizadora]

**Descripción:** [por qué este founder para esta idea]

---

## Posición en el Camino del Emprendedor

**Fit actual:** [Founder/Idea / Customer-Problem / Problem-Solution / Product-Market]

**Próxima hipótesis más riesgosa:** [lo que hay que validar primero]

---

## Señales de readiness para avanzar

- [ ] Puede articular el problema del cliente en una frase (sin mencionar la solución)
- [ ] Sabe que "me gustaría usarlo" no es evidencia de compra
- [ ] Identifica cuál es su hipótesis más riesgosa hoy
- [ ] Tiene un mecanismo concreto de responsabilidad externa (aunque sea incipiente)
```

Completar cada sección con las respuestas reales del founder. No rellenar con placeholders genéricos.

### Paso 6 — Actualizar state.yaml

Actualizar el agente correspondiente en `<STARTUP_BASE>/.founder-os/state.yaml`:

```yaml
A00_mindset:        # o el agente que corresponda según el schema
  status: completed
  output: "<STARTUP_BASE>/stages/01-mindset/reflexiones-mindset.md"
```

Si `state.yaml` no tiene un agente A00 explícito (el schema arranca en A01), actualizar `active_stage: 2` y `next_action` solamente.

`next_action` sugerido: `"Mindset completo. Siguiente paso: /business-model para construir el Lean Canvas (A01)."`

### Paso 7 — Confirmación final

Imprimir mensaje de cierre con:
- Resumen en 3 bullets de lo más importante que articuló el founder
- La señal de readiness más fuerte que mostró
- Una advertencia sobre el sesgo que más riesgo tiene (si detectaste uno claro)
- Próximo paso recomendado: `/business-model`

---

## Lo que esta skill NO hace

- No ejecuta ningún agente del método (eso empieza en `/business-model`)
- No valida hipótesis de negocio (eso es Discovery y Demand)
- No juzga si la idea es buena o mala
- No promete que el founder ya internalizó los mindsets — deja evidencia de que los trabajó

---

## Criterio de done

La skill está completa cuando:
1. `<STARTUP_BASE>/stages/01-mindset/reflexiones-mindset.md` existe con respuestas reales del founder (no placeholders)
2. `state.yaml` tiene `active_stage: 2` (o el agente de mindset en `completed`)
3. El founder puede, en sus propias palabras, articular el problema de su cliente sin mencionar la solución
