# Skill: mvp
**Comando:** `/mvp`
**Agente:** A19
**Etapa SVP™:** 7 — Construcción del MVP
**Output:** `<STARTUP_BASE>/stages/07-mvp/definicion-mvp.md`

---

## Cuándo se activa

El usuario invoca `/mvp`.

---

## Archivos a leer antes de ejecutar

1. `<STARTUP_BASE>/startup-context.md` — contexto del startup activo.
2. `<STARTUP_BASE>/.founder-os/state.yaml` — estado del progreso y key_data.
3. `.claude/skills/mvp/knowledge/sop-definicion-mvp.md` — metodología completa.
4. Si existe: `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md` — la oferta es el input principal.
5. Si existe: `<STARTUP_BASE>/stages/06-demand/experimento-validacion.md` — hipótesis y métricas definidas.
6. Si existen: outputs de A09 (`customer-journey-map.md`), A10 (`priorizacion-kano.md`), A11 (`propuesta-de-valor.md`).

---

## Gate de entrada

Verificar en `state.yaml` que **A13 esté completado** (`status: completed`).

- Si A13 está `pending` o `in_progress` → informar: "Antes de definir el MVP necesito que completes el experimento de validación de demanda con `/demand`. El experimento define la hipótesis que el MVP debe validar."
- Si A12 no está completo → advertir también: "La oferta irresistible (A12) debería estar completa — alimenta la definición del MVP."
- Si A14–A18 están completos (al menos alguno) → ideal. Mencionarlo como punto a favor.

Si el usuario insiste en avanzar sin A13, respetar su decisión con advertencia: "Vamos a definir el MVP, pero sin el experimento de validación definido, el scope podría estar desconectado de lo que querés probar."

---

## Modo único: A19 — Definición del MVP

Esta skill tiene un único modo. A diferencia de otras skills del sistema, A19 es un proceso lineal de 7 pasos que culmina en 5 documentos.

### Presentación inicial

Al activarse, presentar al fundador:

```
**Etapa 7 — Construcción del MVP**

Llegamos al final del SVP™. Hasta acá ya:
- Validaste que el problema existe (Discovery).
- Diseñaste la solución (Solution).
- Definiste una oferta irresistible (Offer).
- Diseñaste un experimento de validación (Demand).

Ahora vamos a definir el MVP: la versión más pequeña del producto que entrega valor real y valida tu hipótesis central.

El resultado de este proceso son 5 documentos listos para construir:
1. PRD (Product Requirements Document)
2. User Flow
3. Data Model
4. Stack y Criterios de Aceptación
5. Specs de Implementación

¿Empezamos?
```

### Paso 1 — Tipo de MVP

Leer los inputs disponibles (oferta, CJM, Kano) y recomendar el tipo de MVP más adecuado.

Presentar los 4 tipos con descripción breve y preguntar al fundador cuál elige. Ver `sop-definicion-mvp.md` sección "Los 4 tipos de MVP" para criterios y ejemplos.

Generar para cada tipo: "Si eligieras [tipo], tu MVP se vería así: [descripción concreta adaptada al startup]."

### Paso 2 — Scope Cutting

Usar la priorización Kano (A10) para separar features IN y features OUT.

- Todas las must-have del Kano entran.
- Máximo 2–3 features performance si hay tiempo y presupuesto.
- Features delight, indiferentes e inversas: fuera (salvo que delight sea trivial de implementar).

Aplicar el triple test a cada feature IN:
1. **Test de coherencia:** ¿las features IN permiten completar el JTBD principal?
2. **Test de minimalidad:** ¿se puede eliminar alguna feature IN sin romper la propuesta de valor?
3. **Test de hipótesis:** ¿las features IN permiten validar la hipótesis del experimento?

Si el fundador propone agregar features, aplicar: "¿Esto valida tu hipótesis? Si no, V2."

### Paso 3 — User Flow

Convertir el Customer Journey Map (A09) en flujo de pantallas para el MVP.

Generar:
- Flujo principal: diagrama textual paso a paso (máximo 5–7 pantallas).
- Flujos secundarios si aplican: registro, onboarding, pago, errores.
- Inventario de pantallas: nombre + propósito + elementos principales + acciones.

Para Concierge o Mago de Oz: documentar el proceso operativo (qué hace el fundador, con qué herramientas, en qué secuencia).

### Paso 4 — Data Model

Solo para Single Feature o Piecemeal que requieran base de datos.

Definir entidades, atributos, relaciones y reglas de negocio. Solo las entidades necesarias para el MVP — no modelar el futuro.

Para Concierge o Mago de Oz: documentar herramientas y procesos operativos (qué herramienta cumple cada función, qué datos se guardan dónde, cómo se conectan).

### Paso 5 — Stack tecnológico

Recomendar el stack según el perfil del fundador:

- **Sin código (v0):** Next.js + Tailwind + shadcn/ui + Supabase + Vercel. No dar opciones.
- **Con código (Claude Code):** adaptar al stack que el fundador conozca.
- **Concierge / Mago de Oz:** listar herramientas no-code con función, alternativa y costo.

Regla anti-over-engineering: monolito > microservicios. SQL > NoSQL. Auth simple. Sin CI/CD complejo, feature flags ni arquitecturas distribuidas.

### Paso 6 — Criterios de aceptación

Para cada feature IN, definir criterios en formato BDD:

*"Dado [contexto], cuando [acción], entonces [resultado]."*

Incluir:
- Happy path.
- 1–2 edge cases críticos.
- Criterios de UI mínimos: mensajes de error, estados vacíos, loading states.

### Paso 7 — Specs de implementación

Descomponer todo en specs de 1–4 horas cada una.

Cada spec tiene: ID, nombre, objetivo, dependencias, scope (qué incluye y qué no), criterios de aceptación, notas técnicas y estimación.

Presentar como tabla de roadmap + detalle de cada spec.

Orden estándar:
1. SPEC-001 — Setup del proyecto.
2. SPEC-002 — Schema de base de datos.
3. SPEC-003 — Autenticación (versión mínima).
4. SPEC-004 a SPEC-N — Features en orden de prioridad.
5. SPEC-N+1 — Deployment + QA básico.

---

## Output

Generar el archivo `<STARTUP_BASE>/stages/07-mvp/definicion-mvp.md` con los 5 documentos:

```markdown
# Definición del MVP — [Nombre del startup]
**Fecha:** [fecha]
**Tipo de MVP elegido:** [tipo]

---

## 1. PRD (Product Requirements Document)
[...]

## 2. User Flow
[...]

## 3. Data Model
[...]

## 4. Stack y Criterios de Aceptación
[...]

## 5. Specs de Implementación
[...]
```

---

## Gate de calidad (A19)

Antes de actualizar `state.yaml` a `completed`, verificar que el output `definicion-mvp.md` tiene los 3 elementos críticos:
- **Tipo de MVP:** uno de los 4 tipos válidos (Concierge / Mago de Oz / Single Feature / Piecemeal)
- **Features mínimos:** al menos una feature documentada con criterio de aceptación en formato BDD
- **Criterio de éxito:** la hipótesis del experimento (o un criterio equivalente) está conectada al MVP — qué debe ocurrir para considerar el MVP validado

Si alguno falta, mostrar cuál y preguntar si completar ahora o marcar `in_progress`. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

| Agente | Condición mínima |
|---|---|
| A19 Definición MVP | Tipo de MVP + features mínimos con criterios BDD + criterio de éxito |

---

## Actualización de state.yaml

Al completar A19 (después de que el gate pasa):

```yaml
agents:
  A19_mvp:
    status: completed
    output: "<STARTUP_BASE>/stages/07-mvp/definicion-mvp.md"

key_data:
  tipo_mvp: "[Concierge | Mago de Oz | Single Feature | Piecemeal]"

active_stage: 7
next_action: "MVP definido. El sistema SVP™ está completo. Podés empezar a construir."
```

---

## Cierre del sistema

Al terminar A19, mostrar al fundador:

```
**El SVP™ está completo.**

Recorriste las 7 etapas:
✓ Mindset — marcos mentales para emprender con método
✓ Modelo de Negocio — Lean Canvas + pruebas de validación
✓ Descubrimiento — entrevistas + consolidado + CPF
✓ Solución — CJM + Kano + propuesta de valor
✓ Oferta — oferta irresistible lista para vender
✓ Demanda — experimento diseñado + contenido de distribución
✓ MVP — definición técnica lista para construir

El MVP que definiste en esta etapa es la materialización honesta de todo lo que aprendiste. Construí solo lo que está en las specs. Todo lo demás es V2.
```

---

## Notas para el modelo

- Si el fundador no tiene Kano completo (A10), usar las features mencionadas en la oferta irresistible como input aproximado para el scope cutting.
- Si el fundador no tiene CJM (A09), construir el user flow desde la oferta + sentido común del flow mínimo.
- El SOP completo con ejemplos, criterios detallados y la matriz de decisión está en `knowledge/sop-definicion-mvp.md`.
- Los 7 pasos se pueden ejecutar en una sola sesión o en varias. El state.yaml marca A19 como `in_progress` al iniciar y `completed` solo al generar el documento final.
