# Skill — Discovery (A06–A08)
**Founder OS | Etapa 3 — Descubrimiento del Problema**

---

## Trigger

El usuario invoca `/discovery`.

---

## Qué hace esta skill

Guía al founder a través de la etapa completa de descubrimiento del problema:

- **A06:** Preparación — genera el guión de entrevistas
- **A07:** Análisis individual — procesa cada transcripción con el subagent `interview-analyzer`
- **A08:** Consolidación — sintetiza todos los análisis con el subagent `study-interviews-analyzer`

---

## Archivos a leer al iniciar

1. `<STARTUP_BASE>/.founder-os/state.yaml` — determina el modo activo
2. `<STARTUP_BASE>/startup-context.md` — contexto del startup para personalizar el guión
3. `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v*.md` — si existe, para conectar hipótesis con hallazgos

---

## Lógica de modos

### Modo A — Preparación (A06 pending)

**Cuándo:** `A06_prep_entrevistas.status == pending`

**Qué hacer:**
1. Explicar al founder qué son las entrevistas de descubrimiento y por qué son críticas en el SVP™.
2. Hacer las siguientes preguntas para personalizar el guión:
   - ¿A quiénes vas a entrevistar? (perfil, cargo, contexto)
   - ¿Cuántas entrevistas tenés planeadas?
   - ¿Tenés acceso ya a los entrevistados, o necesitás estrategia de reclutamiento?
3. Generar `<STARTUP_BASE>/stages/03-discovery/guion-entrevista.md` siguiendo el SOP en `knowledge/sop-preparacion-entrevistas.md`.
4. Explicar cómo organizar los archivos de las entrevistas:
   ```
   <STARTUP_BASE>/stages/03-discovery/entrevistas/
   └── {nombre-entrevistado}/
       └── transcripcion.md    ← el founder pega aquí la transcripción
   ```
5. **Gate de calidad — A06:** Antes de actualizar `state.yaml`, verificar que el guión tenga al menos 10 preguntas. Contar las preguntas del output generado. Si son menos de 10, mostrar cuántas hay e invitar al founder a completar el guión o marcar `in_progress`. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

6. Actualizar `state.yaml`:
   ```yaml
   agents:
     A06_prep_entrevistas:
       status: completed
       output: "<STARTUP_BASE>/stages/03-discovery/guion-entrevista.md"
   active_stage: 3
   next_action: "Realizar entrevistas. Pegar transcripciones en <STARTUP_BASE>/stages/03-discovery/entrevistas/{nombre}/transcripcion.md y volver a /discovery para analizar."
   ```

---

### Modo B — Análisis individual (A06 done, A07 en curso)

**Cuándo:** `A06_prep_entrevistas.status == completed`

**Qué hacer:**
1. Escanear `<STARTUP_BASE>/stages/03-discovery/entrevistas/` buscando carpetas con `transcripcion.md` pero sin `resumen-ejecutivo.md`.
2. Para cada carpeta encontrada, informar al founder: "Encontré una transcripción nueva en `entrevistas/{nombre}/`. Voy a analizarla."
3. Invocar el subagent `interview-analyzer` para cada transcripción pendiente, pasándole:
   - La ruta del `transcripcion.md`
   - La ruta del Lean Canvas si existe
4. **Gate de calidad — A07:** Antes de registrar el análisis como completo en `state.yaml`, verificar que el `resumen-ejecutivo.md` generado contiene: (a) al menos un JTBD identificado, y (b) al menos 3 dolores documentados. Si alguna condición falla, mostrar qué falta e invocar nuevamente al subagent para completar el análisis, o marcar `in_progress`. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

5. Al completar cada análisis, actualizar `state.yaml`:
   ```yaml
   agents:
     A07_analisis_entrevista:
       count: {N}
       outputs:
         - "<STARTUP_BASE>/stages/03-discovery/entrevistas/{nombre}/resumen-ejecutivo.md"
         - "<STARTUP_BASE>/stages/03-discovery/entrevistas/{nombre}/analisis-completo.md"
   ```
5. Si no hay transcripciones nuevas, informar: "No encontré transcripciones nuevas sin analizar. Cuando tengas más entrevistas, pegá la transcripción en `<STARTUP_BASE>/stages/03-discovery/entrevistas/{nombre}/transcripcion.md` y volvé a invocar `/discovery`."
6. Recordar al founder cuántas entrevistas lleva y si ya puede consolidar (ver SOP).

---

### Modo C — Consolidación (usuario confirma que terminó)

**Cuándo:** El founder dice que terminó todas las entrevistas que planeaba hacer.

**Qué hacer:**
1. Verificar que hay al menos 1 `resumen-ejecutivo.md` disponible. Si no, advertir.
2. Si hay menos de 5 entrevistas, advertir: "Con {N} entrevistas podés hacer un análisis exploratorio, pero 10+ es el umbral recomendado para decisiones de producto con confianza. ¿Querés continuar igual?"
3. Invocar el subagent `study-interviews-analyzer`.
4. **Gate de calidad — A08:** Antes de actualizar `state.yaml`, verificar que el `consolidado.md` generado incluye un veredicto explícito de `customer_problem_fit` con valor `alcanzado`, `no_alcanzado` o `pendiente`. Si el veredicto está ausente o es ambiguo, señalarlo al founder y pedir confirmar el veredicto antes de actualizar el estado. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo.

5. Al completar la consolidación, actualizar `state.yaml` con el resultado del veredicto CPF:
   ```yaml
   agents:
     A08_consolidacion:
       status: completed
       output: "<STARTUP_BASE>/stages/03-discovery/consolidado.md"
   key_data:
     jtbd_priorizado: "{JTBD en formato canónico}"
     customer_problem_fit: "{alcanzado | no_alcanzado | pendiente}"
   active_stage: 4
   next_action: "Avanzar a Definición de la Solución con /solution"
   ```
   — o si CPF no alcanzado:
   ```yaml
   active_stage: 3
   next_action: "Hacer más entrevistas focalizadas en el JTBD identificado. Volver a /discovery."
   ```

---

## Gates de dependencia (entrada)

- Esta skill **no tiene gate de entrada** estricto — puede invocarse desde A01 completo.
- Pero idealmente A01 (Lean Canvas) está completo para conectar hipótesis con hallazgos.
- Si `<STARTUP_BASE>/startup-context.md` no existe, ejecutar `/onboarding` primero.

## Gates de calidad (salida por agente)

| Agente | Condición mínima |
|---|---|
| A06 Guión entrevistas | Al menos 10 preguntas en el guión final |
| A07 Análisis entrevista | JTBD identificado + al menos 3 dolores documentados |
| A08 Consolidado | `customer_problem_fit` con veredicto explícito (alcanzado / no_alcanzado / pendiente) |

Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo genérico de ejecución.

---

## Estructura de archivos que genera

```
<STARTUP_BASE>/stages/03-discovery/
├── guion-entrevista.md                    ← A06
├── entrevistas/
│   └── {nombre-entrevistado}/
│       ├── transcripcion.md               ← el founder lo crea
│       ├── analisis-completo.md           ← A07 (subagent)
│       └── resumen-ejecutivo.md           ← A07 (subagent)
└── consolidado.md                         ← A08 (subagent)
```

---

## Knowledge files de esta skill

- `knowledge/sop-preparacion-entrevistas.md` — guión, criterios de selección, tips de facilitación
- `knowledge/sop-consolidacion-entrevistas.md` — criterios de CPF, interpretación de patrones

---

## Subagents que invoca

| Subagent | Archivo | Cuándo |
|---|---|---|
| `interview-analyzer` | `.claude/agents/interview-analyzer.md` | Por cada `transcripcion.md` sin `resumen-ejecutivo.md` |
| `study-interviews-analyzer` | `.claude/agents/study-interviews-analyzer.md` | Cuando el founder confirma que terminó todas las entrevistas |

---

*Skill discovery — Founder OS MVP v1.0 | SVP™ Etapa 3*
