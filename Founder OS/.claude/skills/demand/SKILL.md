# Skill — Demand (A13–A18)
**Founder OS | Etapa 6 — Validación de Demanda**

---

## Trigger

El usuario invoca `/demand`.

---

## Qué hace esta skill

Guía al founder a través de la Etapa 6 del SVP™: diseñar y ejecutar un experimento para validar que existe demanda real y pagante antes de construir el MVP.

Agentes que cubre:
- **A13:** Diseñar el experimento de validación de demanda
- **A14 + A15:** Generar copy y builder de landing page → subagent `landing-generator`
- **A16:** Generar portfolio de anuncios → subagent `ads-generator`
- **A17:** Generar lead magnet → subagent `lead-magnet-generator` *(Sesión 11)*
- **A18:** Generar guion y secuencias de webinar → subagent `webinar-generator` *(Sesión 11)*

---

## Archivos a leer al iniciar

1. `<STARTUP_BASE>/.founder-os/state.yaml` — determina el modo activo
2. `<STARTUP_BASE>/startup-context.md` — contexto del startup
3. `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md` — input obligatorio para A13 y todos los subagents
4. `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v*.md` — canales disponibles y Early Adopters
5. `<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md` — si existe, enriquece el copy del experimento

---

## Gate de entrada

**Verificar que A12 esté completo antes de proceder.**

```yaml
agents:
  A12_oferta:
    status: completed  ← requerido
```

Si A12 está `pending` o `in_progress`, responder:

> "Para validar demanda primero necesitamos tener la Oferta Irresistible construida — es el instrumento que el experimento va a poner a prueba. Sin ella no hay nada concreto que presentarle al mercado.
>
> Invocá `/offer` para completar la Oferta Irresistible (A12) y después volvé acá."

---

## Lógica de modos

### Modo A — Diseñar experimento (A13 pending o in_progress)

**Cuándo:** `A13_experimento.status == pending`

**Qué hacer:**

#### Introducción al founder

Explicar brevemente el rol de esta etapa en el SVP™:
- Validar demanda **no es** pedir feedback ni hacer encuestas. Es obtener **señales reales de que hay personas dispuestas a pagar**.
- El experimento pone la Oferta Irresistible frente al mercado por primera vez.
- Si valida → avanzar al MVP con confianza. Si no valida → iterar la oferta, no el MVP.
- La meta es **aprender rápido**, no "tener razón".

---

#### Construcción del experimento en 5 pasos

Seguir el SOP completo en `knowledge/sop-experimento-validacion.md`.

**Paso 1 — Hipótesis**

Antes de diseñar cualquier canal o embudo, formular una hipótesis falsable sobre el comportamiento de la audiencia.

Preguntar al founder:
1. ¿Qué nivel de evidencia querés obtener? (interés, intención, pago)
2. ¿Cuánto tiempo y presupuesto tenés para este experimento?
3. ¿Cuántas personas deberían tomar la acción para que te sientas confiado en avanzar al MVP?

Usar el template del SOP para formular la hipótesis:
> *"En [X semanas], [audiencia específica] realizará [acción observable] a [precio/condiciones]. Será considerado éxito si [criterio cuantitativo]."*

Hacer pausa: "¿Esta hipótesis captura exactamente lo que querés probar?"

**Paso 2 — Tipo de experimento**

Presentar el catálogo de 7 tipos del SOP (Waitlist, LoI, Preventa, Concierge, Mago de Oz, Single Feature, Piece-Meal) y recomendar el más adecuado según:
- El nivel de evidencia definido en el Paso 1
- El modelo de negocio del Lean Canvas
- El presupuesto y tiempo disponibles

Recomendar 1–2 opciones concretas adaptadas al startup. Explicar el razonamiento. Pedir confirmación antes de avanzar.

**Paso 3 — Embudo AIDA**

Diseñar el embudo de 2–4 pasos usando la Matriz de Decisión de Canales del SOP.

Para cada etapa del embudo (Atención, Interés, Deseo, Acción):
- ¿Qué canal se usa?
- ¿Qué artefacto se necesita?
- ¿Cuál es la acción esperada del prospecto?

Presentar 2–3 opciones de embudo adaptadas al modelo de negocio. Recomendar la más simple que responda la hipótesis.

Hacer pausa: "¿Este embudo se puede ejecutar con los recursos que tenés disponibles esta semana?"

**Paso 4 — Artefactos**

Listar los artefactos concretos que hay que construir para cada etapa del embudo elegido. Para cada artefacto: nombre, propósito, quién lo construye (modelo o founder).

Nota: si el founder quiere que el modelo genere landing, anuncios, lead magnet o webinar, esos se generan con los subagents en los Modos B–E (A14–A18). En este paso solo se listan los artefactos que el experimento necesita.

**Paso 5 — Ejecutar, medir y aprender**

Definir:
- **KPI primario:** la señal que valida o refuta la hipótesis (un número, no una opinión)
- **KPIs secundarios:** CTR, conversión por etapa del embudo, tasa de respuesta outreach
- **Tablero simple:** tabla por etapa — fuente → acción observada → cantidad
- **Criterios de decisión:** AVANZAR (supera umbral) / ITERAR (hay señal pero baja) / FRENAR (sin señal tras 2–3 intentos)
- **Cronograma:** semana 1 preparación, semanas 2–3 ejecución, semana 4 análisis

---

#### Guardado

Guardar en `<STARTUP_BASE>/stages/06-demand/experimento-validacion.md` siguiendo el **formato de output** definido al final de este SKILL.md.

**Gate de calidad — A13:** Antes de actualizar `state.yaml`, verificar que el output tiene los 4 elementos críticos del experimento:
- **Hipótesis:** formulada en formato canónico (*"En [X semanas], [audiencia] realizará [acción] a [condiciones]. Será éxito si [criterio cuantitativo]."*)
- **Métrica de éxito:** KPI primario definido como número (no descripción)
- **Canal:** al menos un canal del embudo especificado
- **Duración:** cronograma con fechas o semanas definidas

Si alguno falta, mostrar cuál y preguntar si completar ahora o marcar `in_progress`. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

Actualizar `state.yaml`:
```yaml
agents:
  A13_experimento:
    status: completed
    output: "<STARTUP_BASE>/stages/06-demand/experimento-validacion.md"
key_data:
  hipotesis_activa: "[hipótesis formulada, una sola línea]"
active_stage: 6
next_action: "Experimento diseñado. Construir los artefactos del embudo. Invocar /demand para generar landing, anuncios, lead magnet o webinar según el experimento elegido."
```

Cerrar con mensaje:
> "El experimento de validación está diseñado. Ahora toca construir los artefactos y salir a probarlo.
>
> Podés volver aquí cuando quieras generar los assets del embudo: **landing page**, **anuncios**, **lead magnet** o **webinar** — invocá `/demand` y te voy a mostrar el menú de opciones."

---

### Modo B — Menú de generación (A13 completado)

**Cuándo:** `A13_experimento.status == completed`

Mostrar resumen del experimento:
- Hipótesis activa: `key_data.hipotesis_activa`
- Experimento: link a `<STARTUP_BASE>/stages/06-demand/experimento-validacion.md`

Mostrar estado de cada asset generado y ofrecer el menú:

```
¿Qué querés generar para tu embudo?

1. Landing page — copy de 12 bloques + prompts para v0.dev (A14 + A15) [pendiente / ✓ generado]
2. Anuncios — banco de hooks + copy listo para Meta/Instagram (A16) [pendiente / ✓ generado]
3. Lead magnet — guía, checklist, o mini-tool para capturar leads (A17) [pendiente / ✓ generado]
4. Webinar/Masterclass — guion + secuencias + landing de registro (A18) [pendiente / ✓ generado]
5. Ver estado actual de los assets generados
```

Mostrar `[✓ generado]` o `[pendiente]` según el estado en `state.yaml` para que el founder sepa qué ya tiene.

Si el usuario elige **opción 1 — Landing page:**
→ Invocar el subagent `landing-generator` pasándole el contexto completo del startup.
→ El subagent genera `<STARTUP_BASE>/stages/06-demand/landing/copy-12-bloques.md`, `variantes-headline.md` y `prompts-v0.md`.
→ Al volver del subagent, confirmar que A14 y A15 quedaron marcados como `completed` en `state.yaml`.

Si el usuario elige **opción 2 — Anuncios:**
→ Invocar el subagent `ads-generator` pasándole el contexto completo del startup.
→ El subagent genera `<STARTUP_BASE>/stages/06-demand/ads/portfolio-anuncios.md`.
→ Al volver del subagent, confirmar que A16 quedó marcado como `completed` en `state.yaml`.

Si el usuario elige **opción 3 — Lead magnet:**
→ Invocar el subagent `lead-magnet-generator` pasándole el contexto completo del startup.
→ El subagent genera `<STARTUP_BASE>/stages/06-demand/lead-magnet/` con el recurso completo y el checklist de distribución.
→ Al volver del subagent, confirmar que A17 quedó marcado como `completed` en `state.yaml`.

Si el usuario elige **opción 4 — Webinar/Masterclass:**
→ Invocar el subagent `webinar-generator` pasándole el contexto completo del startup.
→ El subagent genera `<STARTUP_BASE>/stages/06-demand/webinar/` con el guion, secuencias pre/post, landing de registro, thank you page e hipótesis del webinar.
→ Al volver del subagent, confirmar que A18 quedó marcado como `completed` en `state.yaml`.

Si el usuario elige **opción 5 — Ver estado:**
→ Mostrar tabla de todos los assets A14–A18 con su estado (pending / completed) y el path del output si existe.

---

### Modo C — Todo completo (A13–A18 completados)

**Cuándo:** todos los agentes A13–A18 tienen `status: completed`

Mostrar resumen completo:
- Experimento de validación: `<STARTUP_BASE>/stages/06-demand/experimento-validacion.md`
- Assets generados: listar los que existen en `<STARTUP_BASE>/stages/06-demand/`

Ofrecer opciones:
1. "Revisar o iterar el experimento"
2. "Regenerar algún asset"
3. "Avanzar a `/mvp`"

Si elige iterar, crear `<STARTUP_BASE>/stages/06-demand/experimento-validacion-v2.md`. No sobreescribir el original.

---

## Formato del output

### `<STARTUP_BASE>/stages/06-demand/experimento-validacion.md`

```markdown
# Experimento de Validación de Demanda
**Startup:** [nombre]
**Fecha:** [fecha]
**Versión:** 1

---

## Hipótesis

> "En [X semanas], [audiencia específica] realizará [acción observable: registro / booking / compra] a [precio/condiciones] a través de [canal o embudo propuesto]. Será considerado éxito si [criterio cuantitativo]."

**Componentes de la hipótesis:**
- **Ventana temporal:** [fecha de inicio] → [fecha de cierre]
- **Criterio de éxito cuantitativo:** [número exacto — ej: ≥15 personas completan el checkout]
- **Supuestos críticos:** [qué debe ser verdad para que funcione]
- **Riesgos y confusores:** [factores externos que podrían distorsionar resultados]

---

## Tipo de experimento

**Formato elegido:** [Waitlist / LoI / Preventa / Concierge / Mago de Oz / Single Feature / Piece-Meal]

**Nivel de evidencia:** [Nivel 1 Interés / Nivel 2 Intención / Nivel 3 Pago / Nivel 4 Uso]

**Razón de la elección:** [justificación concreta basada en modelo de negocio, presupuesto y etapa]

---

## Embudo AIDA

**Resumen del embudo:** [canal entrada] → [artefacto interés] → [mecanismo deseo] → [acción de conversión]

| Etapa | Canal/Artefacto | Acción esperada del prospecto |
|---|---|---|
| **A — Atención** | [canal: Meta Ads / LinkedIn DM / etc.] | [clic / respuesta / apertura] |
| **I — Interés** | [artefacto: landing / lead magnet / etc.] | [registro / descarga / booking] |
| **D — Deseo** | [mecanismo: demo / email / propuesta] | [solicitud / confirmación] |
| **A — Acción** | [checkout / formulario / agenda] | [pago / LoI firmada / depósito] |

---

## Artefactos a construir

| Artefacto | Etapa del embudo | Descripción | Estado |
|---|---|---|---|
| [nombre] | [A/I/D/A] | [qué es y para qué] | pendiente |
| [nombre] | [A/I/D/A] | [qué es y para qué] | pendiente |
| [nombre] | [A/I/D/A] | [qué es y para qué] | pendiente |

---

## Plan de medición

**KPI primario:** [señal que valida la hipótesis — número exacto]

**KPIs secundarios:**

| KPI | Etapa | Benchmark orientativo |
|---|---|---|
| CTR de creatividades | Atención | 1–3% |
| Tasa de conversión visita→lead | Interés | 10–30% |
| Show-up rate demos | Deseo | 50–70% |
| Tasa de conversión a pago | Acción | según modelo |

**Tablero:**

| Etapa | Fuente | Meta | Real |
|---|---|---|---|
| Atención | [canal] | [N impresiones] | — |
| Interés | [artefacto] | [N leads] | — |
| Deseo | [mecanismo] | [N demos/interesados] | — |
| Acción | [conversión] | [N pagos/LoIs] | — |

---

## Criterios de decisión

**AVANZAR al MVP si:** [criterio cuantitativo concreto]

**ITERAR si:** [señal de interés pero baja intención de pago — qué variable ajustar]

**FRENAR/PIVOTAR si:** [sin tendencia positiva tras 2–3 iteraciones]

---

## Cronograma

| Semana | Actividad |
|---|---|
| 1 | Construir artefactos, configurar tracking, setup de canales |
| 2–3 | Lanzar embudo, medir en tiempo real, ajustes tácticos |
| 3–4 | Análisis de datos y decisión: avanzar / iterar / frenar |

---

## Checklist pre-lanzamiento

- [ ] Hipótesis y criterio de éxito documentados
- [ ] Embudo diagramado (2–4 pasos) y UTMs definidos
- [ ] Pixel / GA4 instalado y eventos verificados
- [ ] Landing page en QA: mobile + desktop
- [ ] Formularios y checkout funcionando end-to-end
- [ ] Secuencias de email listas (si aplica)
- [ ] Página de éxito post-conversión con siguiente paso claro

---

## Post-mortem (completar al cerrar el experimento)

- ¿Qué funcionó?
- ¿Qué no funcionó?
- ¿Qué haríamos distinto?
- ¿Cuál es el próximo experimento?
```

---

## Gate de calidad

| Agente | Condición mínima |
|---|---|
| A13 Experimento | Hipótesis (formato canónico) + métrica de éxito (número) + canal + duración definidos |

Los agentes A14–A18 (subagents) no tienen gate de calidad propio — su criterio de done es la existencia del output generado por el subagent correspondiente.

Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo genérico de ejecución.

---

## Reglas de comportamiento

1. **La hipótesis se define antes que el canal.** Primero qué se quiere probar, después cómo.
2. **Criterio de éxito cuantitativo, siempre.** "Que haya interés" no es un criterio. Un número exacto, sí.
3. **Embudo de 2–4 pasos máximo.** Más pasos = más fricción = señales más confusas.
4. **Recomendar primero, preguntar después.** No listar opciones sin recomendar una concreta con razones.
5. **El experimento no es el MVP.** No sugerir construir producto en este paso.
6. **Urgencia y escasez consistentes con la Oferta Irresistible.** Verificar coherencia con `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md`.
7. **Versionar, no sobreescribir.** Si el experimento ya existe, crear `v2`.
8. **Actualizar state.yaml** al completar A13, antes de cerrar la sesión.
9. **`key_data.hipotesis_activa`** debe quedar poblado al completar A13 — es el dato que conecta este agente con el MVP.

---

*Founder OS | Demand Skill v1.2 (A13–A18) — Sesión 11*
