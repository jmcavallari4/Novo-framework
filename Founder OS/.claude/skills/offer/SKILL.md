# Skill — Offer (A12)
**Founder OS | Etapa 5 — Creación de la Oferta Irresistible**

---

## Trigger

El usuario invoca `/offer`.

---

## Qué hace esta skill

Guía al founder en la construcción de la Oferta Irresistible a partir de la Propuesta de Valor existente. La oferta es el puente operativo entre el diseño de la solución y la validación de demanda — es el instrumento que se pone a prueba en el mercado real.

- **A12:** Construir la Oferta Irresistible — 15 componentes en 4 bloques

La oferta no es el producto ni el MVP. Es una promesa estructurada que permite validar demanda antes de construir.

---

## Archivos a leer al iniciar

1. `<STARTUP_BASE>/.founder-os/state.yaml` — determina el modo activo
2. `<STARTUP_BASE>/startup-context.md` — contexto del startup
3. `<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md` — input obligatorio (Bloque A se deriva de aquí)
4. `<STARTUP_BASE>/stages/04-solution/priorizacion-kano.md` — si existe, para contexto de diferenciadores y funcionalidades
5. `<STARTUP_BASE>/stages/03-discovery/consolidado.md` — para contexto de Early Adopters y dolores
6. `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v*.md` — para contexto de pricing y segmento

---

## Gate de entrada

**Verificar que A11 esté completo antes de proceder.**

```yaml
agents:
  A11_propuesta_valor:
    status: completed  ← requerido
```

Si A11 está `pending` o `in_progress`, responder:

> "Para construir la Oferta Irresistible necesitamos la Propuesta de Valor completa. Ese documento es el input directo del Bloque A de la oferta — sin él, los componentes de promesa, diferenciación y beneficios no tienen base en evidencia real.
>
> Invocá `/solution` para completar la Propuesta de Valor (A11) y después volvé acá."

---

## Lógica de modos

### Modo A — Construir oferta (A12 pending)

**Cuándo:** `A12_oferta.status == pending`

**Qué hacer:**

#### Introducción al founder

Explicar brevemente el rol de la oferta en el SVP™:
- La oferta **no es** el producto ni el MVP. Es una promesa estructurada.
- La oferta se construye **antes** de validar demanda — es el instrumento de la validación.
- El objetivo no es tener el copy perfecto sino tener algo **concreto que se pueda poner frente a clientes**.

Preguntar al founder antes de comenzar:
1. ¿Tenés idea del precio o modelo de pricing que querés explorar?
2. ¿Ya tenés prueba social (clientes, beta testers, casos, credenciales propias)?
3. ¿Hay alguna urgencia real o escasez operativa que aplique a tu oferta?

Explicar que vamos a trabajar **un componente a la vez** y que al final de cada bloque hay una pausa para revisar antes de avanzar.

---

#### Construcción en 4 bloques

Seguir el SOP completo en `knowledge/sop-oferta-irresistible.md`.

**Bloque A — Valor y producto (componentes 1–6)**

Estos componentes se derivan de la Propuesta de Valor existente (`<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md`). No reconstruir desde cero — ajustar para framing de oferta comercial.

1. **Propuesta de Valor** → leer headline + sub-headline + público del PV. Adaptar para contexto de oferta (más concreto, más orientado a la venta, orientado a resultado).
2. **Problema** → leer "Problemas que resolvemos" del PV. Para cada problema: título del dolor + consecuencia de no resolverlo.
3. **Beneficios concretos** → leer "Beneficios clave" del PV. Convertir a resultados medibles con timeframe si es posible.
4. **Diferenciación** → leer "Diferenciadores" del PV + tabla comparativa vs alternativas.
5. **Elementos de la solución** → qué incluye exactamente la oferta (producto core + extras).
6. **Cómo funciona** → 3–4 pasos desde compra hasta resultado. Incluir quick wins.

Pausa: "¿Querés ajustar algo del Bloque A antes de continuar?"

**Bloque B — Credibilidad y confianza (componente 7)**

7. **Prueba social** → evidencias disponibles: clientes, casos, métricas, credenciales del fundador. Para early-stage: expertise del fundador, entrevistas realizadas, beta testers, historia personal. Si no hay prueba, diseñar un plan mínimo para conseguirla.

Pausa: "¿Tenés prueba social adicional que no hayamos mencionado?"

**Bloque C — Estructura comercial (componentes 8–13)**

8. **Precio y qué incluye** → un solo plan para el ICP definido. Formato: nombre del plan, precio o rango, qué incluye, qué NO incluye, condición de pago.
9. **Urgencia** → elegir tipo real: por cohortes, temporadas, promociones, o deadline natural del problema.
10. **Escasez** → elegir tipo real: cupos limitados, bonos limitados, o nunca más disponible.
11. **Bonos** → 2–3 extras que amplifiquen el valor percibido. Cada bono: nombre descriptivo, valor anclado, driver de Hormozi que activa.
12. **Garantías** → elegir tipo: incondicional, condicional, antigarantía, o basada en desempeño. Formato: "Si no obtenés [X] en [Y tiempo], te devolvemos [Z]."
13. **Incentivo Early Adopter** → qué obtiene el cliente por ser de los primeros, algo que solo se puede dar HOY.

Pausa: "¿Hay algo en la estructura comercial que no sea sostenible o real para tu negocio?"

**Bloque D — Objeciones y acción (componentes 14–15)**

14. **FAQs** → 4–6 preguntas formuladas desde la voz del cliente. Solo miedos y dudas reales — no repetir beneficios.
15. **Call to Action** → UNA acción clara. Verbo + micro-siguiente paso.

---

#### Evaluación de la oferta completa

Una vez construidos los 15 componentes, aplicar el chequeo final:

1. **Chequeo Hormozi por driver:**
   - ↑ Resultado Deseado: ¿el headline, beneficios y elementos lo comunican claramente?
   - ↑ Probabilidad Percibida: ¿prueba social, garantía y estructura generan confianza?
   - ↓ Tiempo: ¿hay quick wins visibles? ¿el "cómo funciona" se ve rápido?
   - ↓ Esfuerzo: ¿los bonos y recorrido simplifican el camino?

2. **Relación valor-precio:** ¿El valor percibido total llega a 3:1 vs el precio?

3. **Test de coherencia:** ¿Urgencia y escasez son reales? ¿La garantía es financieramente viable? ¿Los diferenciadores son realmente únicos?

4. **Hipótesis de validación:** Formular la hipótesis que esta oferta busca probar:
   > "Si presentamos esta oferta a N Early Adopters de [segmento], al menos Y% van a [acción concreta] en Z semanas."

Preguntar al founder: "¿Estás de acuerdo con esta evaluación antes de guardar la oferta?"

---

#### Guardado

Guardar en `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md` siguiendo el **formato de output** definido al final de este SKILL.md.

**Gate de calidad — A12:** Antes de actualizar `state.yaml`, verificar que el output tiene los 4 elementos críticos presentes y sin placeholders:
- **Promesa** (Headline + Sub-headline del Bloque A — componente 1)
- **Mecanismo** (Cómo funciona — componente 6: mínimo 3 pasos)
- **Precio** (componente 8: precio concreto o rango, no `[completar]`)
- **Garantía** (componente 12: tipo de garantía definido, no `[completar]`)

Si alguno falta, mostrar cuál y preguntar si completar ahora o marcar `in_progress`. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

Actualizar `state.yaml`:
```yaml
agents:
  A12_oferta:
    status: completed
    output: "<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md"
active_stage: 6
next_action: "Etapa 5 completa. Invocar /demand para diseñar el experimento de validación (A13)."
```

Cerrar con mensaje:
> "La Oferta Irresistible está completa. Este documento es el input central de la Fase 4: todos los subagents de demanda (landing, ads, lead magnet, webinar) lo van a leer para generar contenido coherente con tu oferta.
>
> El próximo paso es diseñar el experimento de validación y salir a presentar esta oferta a Early Adopters reales — invocá `/demand` cuando estés listo."

---

### Modo B — Todo completo (A12 completed)

**Cuándo:** `A12_oferta.status == completed`

Mostrar resumen:
- Oferta Irresistible generada → `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md`

Ofrecer opciones:
1. "Iterar la oferta (generar versión 2)"
2. "Revisar un bloque específico"
3. "Avanzar a `/demand`"

Si elige iterar, crear `<STARTUP_BASE>/stages/05-offer/oferta-irresistible-v2.md` y actualizar el puntero en `state.yaml`. No sobreescribir el archivo original.

---

## Formato del output

### `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md`

```markdown
# Oferta Irresistible
**Startup:** [nombre]
**ICP objetivo:** [descripción del Early Adopter]
**Fecha:** [fecha]
**Versión:** 1

---

## BLOQUE A — Valor y producto

### 1. Propuesta de Valor

**Pre-headline:** [frase de filtro de audiencia — opcional]
**Headline:** [promesa central en resultado, no en features]
**Sub-headline:** [amplía el headline, conecta resultado con mecanismo]

---

### 2. Problema que resuelve

| Dolor | Consecuencia de no resolver |
|---|---|
| [dolor 1] | [consecuencia concreta] |
| [dolor 2] | [consecuencia concreta] |
| [dolor 3] | [consecuencia concreta] |

---

### 3. Beneficios concretos

| Beneficio | Cómo se logra / Timeframe |
|---|---|
| [resultado medible 1] | [mecanismo + tiempo estimado] |
| [resultado medible 2] | [mecanismo + tiempo estimado] |
| [resultado medible 3] | [mecanismo + tiempo estimado] |

---

### 4. Diferenciación

**Por qué esta solución y no las alternativas:**

| Criterio | [Solución] | [Alternativa 1] | [Alternativa 2] | Hacerlo solo |
|---|---|---|---|---|
| [criterio 1] | ✓ | ✗ | ✗ | ✗ |
| [criterio 2] | ✓ | ✓ | ✗ | ✗ |
| [criterio 3] | ✓ | ✗ | ✗ | ✗ |

---

### 5. Elementos de la solución

**Producto core:**
- [componente 1]: [qué logra para el cliente]
- [componente 2]: [qué logra para el cliente]

**Extras incluidos:**
- [soporte/onboarding/materiales]: [descripción]

**Lo que NO incluye:** [alcance claro]

---

### 6. Cómo funciona

1. **[Paso 1]:** [acción] → [qué obtiene / quick win]
2. **[Paso 2]:** [acción] → [qué obtiene]
3. **[Paso 3]:** [acción] → [qué obtiene]
4. **[Paso 4]:** [acción] → [resultado final / JTBD cumplido]

---

## BLOQUE B — Credibilidad y confianza

### 7. Prueba social

**Evidencias disponibles:**
- [tipo de evidencia + descripción concreta]
- [tipo de evidencia + descripción concreta]

**Plan para construir más prueba social:** [si aplica — pasos concretos]

---

## BLOQUE C — Estructura comercial

### 8. Precio y qué incluye

**Plan:** [nombre del plan]
**Precio:** [precio exacto o rango]
**Incluye:** [lista concisa]
**No incluye:** [límites claros del alcance]
**Condición de pago:** [único / mensual / cuotas]

---

### 9. Urgencia

**Tipo:** [cohortes / temporadas / promoción / deadline natural]
**Razón real:** [justificación operativa concreta]
**Mensaje:** "[cómo se comunica al cliente]"

---

### 10. Escasez

**Tipo:** [plazas limitadas / bonos limitados / edición limitada]
**Razón operativa:** [por qué el límite es real y creíble]
**Cantidad:** [N cupos / unidades]

---

### 11. Bonos

| Bono | Descripción | Driver Hormozi | Valor anclado |
|---|---|---|---|
| [nombre descriptivo] | [qué es + qué logra] | [↑ prob / ↓ tiempo / ↓ esfuerzo] | $[valor] |
| [nombre descriptivo] | [qué es + qué logra] | [↑ prob / ↓ tiempo / ↓ esfuerzo] | $[valor] |

---

### 12. Garantía

**Tipo:** [incondicional / condicional / antigarantía / desempeño]
**Formulación:** "Si no obtenés [resultado] en [plazo], te devolvemos [qué]."
**Viabilidad financiera:** [análisis breve de si es sostenible]

---

### 13. Incentivo Early Adopter

**Qué obtiene:** [descripción concreta]
**Por qué solo es posible ahora:** [razón operativa real]
**Límite:** [primeros N clientes / hasta fecha X]

---

## BLOQUE D — Objeciones y acción

### 14. FAQs

**¿[Pregunta desde la voz del cliente]?**
[Respuesta directa, honesta]

**¿[Pregunta desde la voz del cliente]?**
[Respuesta directa, honesta]

**¿[Pregunta desde la voz del cliente]?**
[Respuesta directa, honesta]

**¿[Pregunta desde la voz del cliente]?**
[Respuesta directa, honesta]

---

### 15. Call to Action

**Acción principal:** [verbo] → [micro-siguiente paso]
**Ejemplo:** "Agendá tu sesión de diagnóstico → en 48hs te confirmamos la disponibilidad."

---

## Evaluación de la oferta

### Chequeo Hormozi

| Driver | Estado | Componentes que lo sostienen |
|---|---|---|
| ↑ Resultado Deseado | Fuerte / Moderado / Débil | [componentes] |
| ↑ Probabilidad Percibida | Fuerte / Moderado / Débil | [componentes] |
| ↓ Tiempo de Espera | Fuerte / Moderado / Débil | [componentes] |
| ↓ Esfuerzo y Sacrificio | Fuerte / Moderado / Débil | [componentes] |

### Relación valor-precio

- Valor percibido total (oferta + bonos): $[suma con anclas]
- Precio: $[precio]
- Relación: [X]:1 → [cumple / no cumple el mínimo 3:1]

### Hipótesis de validación

> "Si presentamos esta oferta a [N] Early Adopters de [segmento], al menos [Y%] van a [acción concreta] en [Z semanas]."

**Criterio mínimo de éxito:** [definición concreta]
**Qué hacer si no se alcanza:** [plan de respuesta]
```

---

## Gate de calidad

| Agente | Condición mínima |
|---|---|
| A12 Oferta irresistible | Promesa + mecanismo + precio + garantía presentes y sin placeholders |

Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo genérico de ejecución.

---

## Reglas de comportamiento

1. **El Bloque A se deriva de la Propuesta de Valor existente.** No reconstruir desde cero — ajustar para framing de oferta comercial.
2. **Un bloque a la vez.** Hacer pausa de confirmación al final de cada bloque antes de avanzar.
3. **Nunca inventar prueba social.** Si no hay, decirlo y construir un plan para conseguirla.
4. **Urgencia y escasez deben ser reales.** Si no hay razón operativa genuina, omitirlas o no agregarlas todavía.
5. **Un solo plan de pricing.** No proponer múltiples planes — un plan para un ICP en etapas tempranas.
6. **Versionar, no sobreescribir.** Si un output ya existe, crear `v2`, `v3`, etc.
7. **Actualizar state.yaml** al completar A12, antes de cerrar la sesión.
8. **El output debe ser legible por los subagents de demanda sin procesamiento adicional.** Verificar que el formato sea claro y estructurado antes de guardar.

---

*Founder OS | Offer Skill v1.0 — Sesión 8*
