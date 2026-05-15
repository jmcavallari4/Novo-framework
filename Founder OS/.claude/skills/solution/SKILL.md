# Skill — Solution (A09–A11)
**Founder OS | Etapa 4 — Definición de la Solución**

---

## Trigger

El usuario invoca `/solution`.

---

## Qué hace esta skill

Guía al founder a través de la etapa completa de definición de la solución, usando el JTBD priorizado como punto de partida:

- **A09:** Customer Journey Map — diagnóstico del recorrido actual y diseño del futuro
- **A10:** Priorización Kano — clasificación de funcionalidades y definición del alcance del MVP
- **A11:** Propuesta de Valor — síntesis en 8 componentes trazables a evidencia

---

## Archivos a leer al iniciar

1. `<STARTUP_BASE>/.founder-os/state.yaml` — determina el modo activo
2. `<STARTUP_BASE>/startup-context.md` — contexto del startup
3. `<STARTUP_BASE>/stages/03-discovery/consolidado.md` — input obligatorio (JTBD priorizado, fricciones, oportunidades)
4. `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v*.md` — si existe, para contexto de segmento y modelo

---

## Gate de entrada

**Verificar que A08 esté completo antes de proceder.**

```yaml
agents:
  A08_consolidacion:
    status: completed  ← requerido
```

Si A08 está `pending` o `in_progress`, responder:

> "Para trabajar en la definición de la solución, primero necesitamos tener el consolidado de entrevistas listo. Ese archivo contiene el JTBD priorizado y las fricciones reales del cliente — sin eso, cualquier solución que definamos sería una suposición, no una decisión informada.
>
> Cuando tengas las entrevistas analizadas, invocá `/discovery` para consolidarlas y volvé acá."

---

## Lógica de modos

### Modo A — Customer Journey Map (A09 pending)

**Cuándo:** `A09_cjm.status == pending`

**Qué hacer:**
1. Leer `<STARTUP_BASE>/stages/03-discovery/consolidado.md` para extraer:
   - JTBD priorizado (campo `key_data.jtbd_priorizado` en `state.yaml` o el consolidado)
   - Fricciones principales
   - Alternativas actuales del cliente
   - Oportunidades clave

2. Explicar brevemente qué es el CJM y sus dos partes (Actual + Futuro + Comparativa).

3. Preguntar al founder para personalizar el mapa:
   - ¿Cuál es el tipo de solución que estás pensando? (SaaS, servicio, app, marketplace, etc.)
   - ¿Querés que trabajemos con el segmento del JTBD priorizado o con otro?

4. Construir el CJM siguiendo el SOP en `knowledge/sop-customer-journey-map.md`:
   - **CJM Actual:** 4–7 etapas con las 7 dimensiones por etapa
   - **CJM Futuro:** mismas etapas con 6 dimensiones por etapa (cómo cambia la experiencia)
   - **Comparativa Actual vs Futuro:** tabla con las 6 dimensiones clave

5. Al finalizar, preguntar: "¿Querés ajustar algo del mapa antes de avanzar a la priorización Kano?"

6. Guardar en `<STARTUP_BASE>/stages/04-solution/customer-journey-map.md`.

7. **Gate de calidad — A09:** Antes de actualizar `state.yaml`, verificar que el CJM tiene al menos 4 etapas mapeadas tanto en el CJM Actual como en el CJM Futuro. Si hay menos de 4 etapas en alguno de los dos, mostrar cuántas hay e invitar al founder a completarlas o marcar `in_progress`. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

8. Actualizar `state.yaml`:
   ```yaml
   agents:
     A09_cjm:
       status: completed
       output: "<STARTUP_BASE>/stages/04-solution/customer-journey-map.md"
   next_action: "CJM completo. Invocar /solution para continuar con Priorización Kano (A10)."
   ```

---

### Modo B — Priorización Kano (A10 pending, A09 completed)

**Cuándo:** `A09_cjm.status == completed` y `A10_kano.status == pending`

**Qué hacer:**
1. Leer `<STARTUP_BASE>/stages/04-solution/customer-journey-map.md` para extraer:
   - Las tareas del CJM Futuro (candidatas a funcionalidades)
   - Las fricciones críticas del CJM Actual

2. Leer `<STARTUP_BASE>/stages/03-discovery/consolidado.md` para extraer:
   - Criterios de contratación → funcionalidades de Rendimiento
   - Criterios de despido → funcionalidades Imprescindibles
   - Trade-offs → funcionalidades Atractivas

3. Construir la priorización siguiendo el SOP en `knowledge/sop-priorizacion-kano.md`:
   - **Paso 1:** Tabla de clasificación Kano (Funcionalidad, Tipo, Origen en matriz, Evidencia, Decisión MVP)
   - **Paso 2:** Definición del MVP (atractivas + rendimiento + imprescindibles)
   - **Paso 3:** Soluciones existentes para imprescindibles

4. Verificar que el MVP cumple las reglas:
   - Máximo 5–7 funcionalidades
   - Al menos 1 funcionalidad atractiva
   - Todas las imprescindibles cubiertas
   - Cada funcionalidad con evidencia

5. Al finalizar, preguntar: "¿Estás de acuerdo con esta priorización antes de construir la Propuesta de Valor?"

6. Guardar en `<STARTUP_BASE>/stages/04-solution/priorizacion-kano.md`.

7. Actualizar `state.yaml`:
   ```yaml
   agents:
     A10_kano:
       status: completed
       output: "<STARTUP_BASE>/stages/04-solution/priorizacion-kano.md"
   next_action: "Kano completo. Invocar /solution para construir la Propuesta de Valor (A11)."
   ```

---

### Modo C — Propuesta de Valor (A11 pending, A10 completed)

**Cuándo:** `A10_kano.status == completed` y `A11_propuesta_valor.status == pending`

**Qué hacer:**
1. Leer los tres documentos de inputs:
   - `<STARTUP_BASE>/stages/04-solution/priorizacion-kano.md` — diferenciadores, beneficios, MVP
   - `<STARTUP_BASE>/stages/04-solution/customer-journey-map.md` — fricciones, mejoras, recorrido futuro
   - `<STARTUP_BASE>/stages/03-discovery/consolidado.md` — JTBD, evidencia textual, perfil Early Adopter

2. Construir la Propuesta de Valor siguiendo el SOP en `knowledge/sop-propuesta-de-valor.md`:
   - **Paso 1:** Público objetivo y JTBD
   - **Paso 2:** 2–3 variantes de headline + sub-headline + pre-headline (presentar opciones, esperar elección)
   - **Paso 3:** Completar los 8 componentes con el headline aprobado

3. Los 8 componentes a completar:
   1. Público objetivo (Early Adopter + JTBD canónico)
   2. Pre-headline (opcional)
   3. Headline (obligatorio — 2–3 variantes)
   4. Sub-headline
   5. Problemas que resolvemos (3–4 con evidencia)
   6. Beneficios clave (3–4 cuantificados donde sea posible)
   7. Diferenciadores (1–3, solo de funcionalidades atractivas del Kano)
   8. Cómo funciona (3–4 pasos del CJM Futuro simplificado)

4. Aplicar los tests de calidad:
   - ¿Cada claim tiene evidencia trazable?
   - ¿Los beneficios son el "otro lado" de los problemas?
   - ¿Los diferenciadores vienen de funcionalidades atractivas del Kano?
   - Test del café: ¿se entiende en 30 segundos?

5. Guardar en `<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md`.

6. **Gate de calidad — A11:** Antes de actualizar `state.yaml`, verificar que el output tiene: (a) Headline presente y no placeholder, y (b) Sub-headline presente y no placeholder. El Pre-headline es opcional pero si existe no debe ser placeholder. Si falta Headline o Sub-headline, mostrar cuál falta e invitar a completarlos o marcar `in_progress`. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

7. Actualizar `state.yaml`:
   ```yaml
   agents:
     A11_propuesta_valor:
       status: completed
       output: "<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md"
   active_stage: 5
   next_action: "Etapa 4 completa. Invocar /offer para construir la Oferta Irresistible (A12)."
   ```

7. Cerrar la etapa con mensaje:
   > "La Propuesta de Valor está completa. Esto es la columna vertebral estratégica de todo lo que construís a partir de acá: la oferta, la landing, los ads, el pitch. El próximo paso es convertir esta propuesta en una Oferta Irresistible — invocá `/offer` cuando estés listo."

---

### Modo D — Todo completo (A09–A11 completed)

**Cuándo:** los tres agentes están en `completed`

**Qué hacer:**
Mostrar resumen del estado:
- CJM generado → `<STARTUP_BASE>/stages/04-solution/customer-journey-map.md`
- Priorización Kano → `<STARTUP_BASE>/stages/04-solution/priorizacion-kano.md`
- Propuesta de Valor → `<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md`

Ofrecer opciones:
1. "Iterar el CJM (generar versión 2)"
2. "Revisar la priorización Kano"
3. "Actualizar la Propuesta de Valor"
4. "Avanzar a `/offer`"

Si elige iterar, crear versión nueva (`customer-journey-map-v2.md`) y actualizar el puntero en `state.yaml`. No sobreescribir el archivo original.

---

## Formato de los outputs

### `<STARTUP_BASE>/stages/04-solution/customer-journey-map.md`

```markdown
# Customer Journey Map
**Startup:** [nombre]
**JTBD priorizado:** [jtbd]
**Tipo de solución:** [tipo]
**Fecha:** [fecha]

---

## CJM Actual

### Etapa 1 — [nombre]
| Dimensión | Contenido |
|---|---|
| Tareas | ... |
| Emociones | ... |
| Expectativas | ... |
| Solución/herramienta actual | ... |
| Problemas y fricciones | ... |
| Brecha expectativa/realidad | ... |
| Oportunidades de mejora | ... |

[repetir por cada etapa]

**Etapa más crítica:** [nombre] — [justificación]
**Fricciones más dolorosas:** [lista con citas textuales]

---

## CJM Futuro

### Etapa 1 — [nombre]
| Dimensión | Contenido |
|---|---|
| Tareas | ... |
| Expectativas | ... |
| Ejecución con la solución | ... |
| Emociones esperadas | ... |
| Beneficios vs situación anterior | ... |

[repetir por cada etapa]

**Etapas eliminadas vs CJM actual:** [lista]
**Etapas simplificadas/fusionadas:** [lista]
**Fricciones que quedan sin resolver:** [lista — ser honesto]

---

## Comparativa Actual vs Futuro

| Dimensión | Actual | Futuro | Mejora |
|---|---|---|---|
| Tiempo total del proceso | | | |
| Costo para el cliente | | | |
| Esfuerzo y complejidad | | | |
| Satisfacción esperada | | | |
| Fricciones principales | | | |
| Dependencia de terceros | | | |

**Cambio más significativo:** [una sola cosa, bien articulada]
**¿Las mejoras son suficientes (3x o más en alguna dimensión)?** [sí/no + justificación]
```

### `<STARTUP_BASE>/stages/04-solution/priorizacion-kano.md`

```markdown
# Priorización Kano — Alcance del MVP
**Startup:** [nombre]
**Fecha:** [fecha]

---

## Clasificación de funcionalidades

| Funcionalidad | Tipo Kano | Origen en matriz | Evidencia | Decisión MVP |
|---|---|---|---|---|
| [funcionalidad] | Atractiva/Rendimiento/Imprescindible/Indiferente | Trade-off/Contratación/Despido/Sin evidencia | [cita o referencia] | Entra/No entra/V2 |

---

## Definición del MVP

### Funcionalidades Atractivas (diferenciación)
- [funcionalidad] — [por qué genera WOW, basado en trade-off X]

### Funcionalidades de Rendimiento (mejora cuantificable)
- [funcionalidad] — objetivo: [de X a Y en Z dimensión]

### Funcionalidades Imprescindibles (condiciones de entrada)
- [funcionalidad] — solución existente: [herramienta/API/servicio]

### Excluidas del MVP
- [funcionalidad] — motivo: [indiferente/sin evidencia/V2]

---

## Verificaciones
- [ ] Máximo 5–7 funcionalidades
- [ ] Al menos 1 funcionalidad atractiva
- [ ] Todas las imprescindibles cubiertas
- [ ] Cada funcionalidad con evidencia

---

## Esfuerzo estimado
- Construir desde cero: [N funcionalidades]
- Apalancar con soluciones existentes: [N funcionalidades]
```

### `<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md`

```markdown
# Propuesta de Valor
**Startup:** [nombre]
**Fecha:** [fecha]

---

## 1. Público objetivo

**Perfil del Early Adopter:** [descripción]
**Evento desencadenante:** [qué activa la necesidad]
**Frecuencia del dolor:** [con qué frecuencia enfrenta el problema]
**Insatisfacción con alternativas:** [por qué lo que usa hoy no le alcanza]

**JTBD canónico:**
> "Cuando [contexto], quiero [trabajo], para [resultado]."

---

## 2. Pre-headline (opcional)
[frase corta de filtro de audiencia]

## 3. Headline
[promesa central — resultado deseado, no features]

*Variantes consideradas:*
- Variante A: [enfoque tiempo]
- Variante B: [enfoque costo]
- Variante C: [enfoque control]

## 4. Sub-headline
[amplía el headline, conecta resultado con cómo se logra]

---

## 5. Problemas que resolvemos

1. **[problema]** — Evidencia: *"[cita textual de entrevista]"*
2. **[problema]** — Evidencia: *"[cita textual de entrevista]"*
3. **[problema]** — Evidencia: *"[cita textual de entrevista]"*

---

## 6. Beneficios clave

1. **[beneficio cuantificado]** — habilitado por: [funcionalidad del MVP]
2. **[beneficio cuantificado]** — habilitado por: [funcionalidad del MVP]
3. **[beneficio cuantificado]** — habilitado por: [funcionalidad del MVP]

---

## 7. Diferenciadores

1. **[diferenciador]** — Por qué importa: [razón basada en trade-off]

---

## 8. Cómo funciona

1. **[Paso 1]:** [acción del cliente] → [qué obtiene]
2. **[Paso 2]:** [acción del cliente] → [qué obtiene]
3. **[Paso 3]:** [acción del cliente] → [JTBD cumplido]

---

## Tests de calidad
- [ ] ¿Cada claim tiene evidencia trazable?
- [ ] ¿Los beneficios son el "otro lado" de los problemas?
- [ ] ¿Los diferenciadores vienen de funcionalidades atractivas del Kano?
- [ ] Test del café: ¿se entiende en 30 segundos?
```

---

## Gates de calidad

| Agente | Condición mínima |
|---|---|
| A09 CJM | Al menos 4 etapas mapeadas en CJM Actual y en CJM Futuro |
| A11 Propuesta de valor | Headline y Sub-headline presentes y sin placeholders |

A10 (Kano) no tiene gate de calidad propio — su criterio de done es la existencia del output con la tabla de clasificación completa y las secciones de definición del MVP.

Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo genérico de ejecución.

---

## Reglas de comportamiento

1. **Nunca inventar.** Cada elemento del CJM, Kano o PV debe derivarse de evidencia del consolidado de entrevistas. Si no hay evidencia, declararlo como supuesto.
2. **Un agente a la vez.** No mezclar los tres modos en la misma sesión a menos que el usuario lo pida explícitamente.
3. **Confirmar antes de avanzar.** Al finalizar cada agente, preguntar si el founder quiere ajustar algo antes de continuar.
4. **Versionar, no sobreescribir.** Si un output ya existe, crear `v2`, `v3`, etc.
5. **Actualizar state.yaml** al completar cada agente, antes de cerrar la sesión.

---

*Founder OS | Solution Skill v1.0 — Sesión 7*
