# SOP — Consolidación de Entrevistas y Customer/Problem Fit
**Founder OS | Discovery A08 | SVP™ Etapa 3**

---

## Cuándo consolidar

No consolidar antes de tiempo. Tener datos suficientes importa:

| N° de entrevistas | Acción |
|---|---|
| 1–4 | Demasiado temprano. Seguir entrevistando. |
| 5–9 | Posible análisis exploratorio, con todas las conclusiones marcadas como "Preliminar." |
| 10+ | Umbral mínimo para tomar decisiones de producto con confianza. |

**La saturación temática es la señal real:** cuando las últimas 3–4 entrevistas no agregan nada nuevo, ya tenés suficiente.

---

## Qué diferencia un patrón de una señal aislada

Esta distinción define la calidad del análisis consolidado:

| Tipo | Criterio | Cómo tratarlo |
|---|---|---|
| **Patrón fuerte** | Aparece en 5+ entrevistas, con palabras de urgencia/frustración, en entrevistados con perfil similar | Base para decisiones de producto |
| **Señal moderada** | Aparece en 3–4 entrevistas | Vale explorar, no suficiente para priorizar solo en base a esto |
| **Señal aislada** | Aparece en 1–2 entrevistas | Registrar y monitorear. No priorizar |

Las contradicciones entre entrevistados son hallazgos, no errores. Pueden indicar sub-segmentos distintos o que el problema no es universal.

---

## Los 6 pasos del análisis consolidado

### Paso 1 — Agrupar JTBD similares

Revisar los JTBD de todos los resúmenes ejecutivos y agrupar los que tengan el mismo significado o respondan a una necesidad similar.

Documentar por grupo:

| Grupo JTBD | Nombre representativo | Entrevistados que lo mencionan | N | Frases textuales representativas | ¿Importante e insatisfecho? |
|---|---|---|---|---|---|

Ordenar de mayor a menor N.

**Regla crítica:** Agrupar por significado, no por redacción. El mismo JTBD puede expresarse de formas completamente distintas. Ante la duda, preguntar al founder antes de agrupar.

---

### Paso 2 — Evaluar nivel de oportunidad

Para cada grupo de JTBD, calcular importancia y satisfacción promedio:

| JTBD | N | Importancia prom. (1–5) | Satisfacción prom. (1–5) | Gap (I−S) | Fuente | Veredicto |
|---|---|---|---|---|---|---|

Ordenar de mayor a menor Gap.

**Criterios de priorización:**
- **Priorizar: Sí** → Importancia ≥ 4 Y Satisfacción ≤ 2 Y N ≥ 3
- **Priorizar: Posible** → Gap > 2 pero no cumple todos los criterios anteriores
- **Priorizar: No** → Gap ≤ 1 o Importancia < 3

---

### Paso 3 — Definir el JTBD priorizado

Recomendar cuál JTBD priorizar como foco de la solución en formato canónico:

*"Cuando [contexto/situación], quiero [trabajo], para poder [resultado deseado]."*

Justificar con:
1. Datos cuantitativos (importancia, satisfacción, gap, N)
2. Citas textuales más contundentes
3. Por qué este y no los otros
4. Conexión o divergencia con el Lean Canvas (si existe)

Si hay empate genuino, presentar ambos opciones con pros y contras.

---

### Paso 4 — Matriz de Descubrimiento de Oportunidades

Para el JTBD priorizado, mapear el landscape de alternativas actuales:

**Tabla 1 — Criterios de contratación** (qué valoran y qué alternativa lo cumple)

| Criterio | Alternativa A | Alternativa B | Alternativa C | Observación |
|---|---|---|---|---|
| ... | ✅/❌ | ✅/❌ | ✅/❌ | ... |

**Tabla 2 — Criterios de despido** (por qué descartan alternativas)

| Criterio | Alternativa A | Alternativa B | Alternativa C | Observación |
|---|---|---|---|---|
| ... | ✅/❌ | ✅/❌ | ✅/❌ | ... |
*(✅ = la alternativa tiene ese problema / ❌ = no lo tiene)*

**Tabla 3 — Trade-offs y oportunidades de diferenciación**

| Deseo insatisfecho | Alternativa contratada | Frecuencia de mención | ¿Oportunidad de diferenciación? |
|---|---|---|---|

---

### Paso 5 — Seleccionar oportunidades clave

De la Tabla 3, seleccionar las 1–3 oportunidades más prometedoras.

Para cada oportunidad documentar:
- **Nombre:** específico y accionable (no "mejorar experiencia" — sí "eliminar la necesidad de X")
- **Descripción:** qué problema resuelve, para quién, en qué contexto
- **Impacto esperado:** en tiempo, costo, esfuerzo o satisfacción
- **Nivel de diferenciación:** alto / medio / bajo
- **Evidencia:** citas textuales de soporte
- **Justificación:** por qué merece pasar al diseño de solución

---

### Paso 6 — Veredicto de Customer/Problem Fit

Responder: **¿alcanzamos Customer/Problem Fit?**

**Definición:** CPF significa que descubrimos un problema urgente e importante para un nicho de mercado que está buscando activamente resolverlo.

**Las 3 preguntas de evaluación:**

1. **¿El JTBD priorizado es un dolor real?**
   - ¿Aparece en 5+ entrevistas?
   - ¿Los entrevistados usan palabras de urgencia o frustración?
   - ¿Están buscando activamente soluciones, o conformes con el status quo?

2. **¿Hay un segmento claro que lo experimenta?**
   - ¿Los entrevistados con este dolor comparten un perfil similar?
   - ¿Es un nicho alcanzable con los recursos del founder?

3. **¿Las alternativas actuales dejan espacio para diferenciarse?**
   - ¿Hay trade-offs claros que ninguna alternativa resuelve?
   - ¿Las oportunidades son significativas, no mejoras marginales?

**Veredictos posibles:**

✅ **CPF alcanzado** — Patrón claro, dolor real, segmento definido, oportunidades de diferenciación evidentes.
→ Avanzar a `/solution`

⚠️ **Señales prometedoras pero insuficientes** — Hay indicios pero falta evidencia.
→ Hacer 5–10 entrevistas adicionales focalizadas. Ajustar el guión. Dar recomendaciones concretas de qué preguntar.

❌ **No hay CPF** — No se encontró un dolor urgente y recurrente.
→ Considerar pivotar el segmento, explorar JTBD adyacentes, o volver al Lean Canvas. Dar recomendaciones concretas.

---

## Cómo interpretar el veredicto en `state.yaml`

| Veredicto | Valor en `key_data.customer_problem_fit` | `active_stage` | `next_action` |
|---|---|---|---|
| CPF alcanzado | `alcanzado` | 4 | "Avanzar a Definición de la Solución con /solution" |
| Señales pero insuficientes | `pendiente` | 3 | "Hacer más entrevistas. Volver a /discovery." |
| No hay CPF | `no_alcanzado` | 3 | "Pivotar segmento o volver al Lean Canvas con /business-model" |

---

## Conexión con herramientas posteriores

Los outputs de este análisis alimentan directamente:

- **`/solution` → Customer Journey Map:** el JTBD priorizado define el inicio y fin del mapa. Las fricciones detectadas alimentan el estado actual.
- **`/solution` → Priorización Kano:** la Tabla 3 (trade-offs) es el input directo para clasificar funcionalidades.
- **`/solution` → Propuesta de Valor:** el JTBD priorizado alimenta el headline. Los trade-offs se convierten en diferenciadores.

**Regla:** No iniciar `/solution` si `customer_problem_fit` es `no_alcanzado`. Hacerlo amplifica el riesgo de construir para el problema equivocado.

---

## Implicancias para el Lean Canvas

Si existe Lean Canvas, señalar explícitamente:
- Qué bloques **confirman** las hipótesis originales
- Qué bloques **cuestionan** las hipótesis (especialmente si el JTBD priorizado difiere del supuesto original)
- Qué bloques **deberían actualizarse** con los hallazgos

Si el JTBD priorizado difiere del supuesto original, marcarlo como descubrimiento importante. No es un fracaso — es que el proceso funcionó.

---

*SOP Consolidación de Entrevistas — Founder OS MVP v1.0 | SVP™ Etapa 3*
