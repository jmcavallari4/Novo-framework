# SOP — Gate de Calidad por Agente

> Este SOP define el mecanismo de validación que cada skill ejecuta **antes** de escribir `status: completed` en `state.yaml`. Los gates evitan que el sistema avance con outputs incompletos o superficiales.

---

## ¿Qué es un gate de calidad?

Un gate es una verificación estructurada que corre al finalizar un agente, antes de actualizar `state.yaml`. Revisa que el output cumple condiciones mínimas que garantizan que es útil para los agentes siguientes.

**El gate no bloquea al fundador — lo informa.** Si el output no pasa, la skill muestra qué falta y pregunta si el fundador quiere completarlo o prefiere marcar el agente como `in_progress` para continuar en otra sesión.

---

## Cuándo ejecutar el gate

Toda skill debe correr el gate correspondiente justo antes de actualizar `state.yaml` a `status: completed`.

Secuencia correcta:
1. El agente termina su trabajo y genera el output.
2. La skill ejecuta el gate de calidad.
3. **Si el gate pasa:** confirmar al fundador y actualizar `state.yaml`.
4. **Si el gate falla:** mostrar qué falta, preguntar cómo continuar.
5. Generar el log de sesión (HUCS) después del gate, antes de cerrar.

---

## Cómo implementar el gate en una skill

Al finalizar la construcción del output, antes de escribir en `state.yaml`:

**Paso 1 — Verificar condiciones mínimas**

Revisar el output generado contra las condiciones del gate de este agente (definidas en la sección "Gate de calidad" de cada SKILL.md).

**Paso 2a — Gate pasa**

Si todas las condiciones se cumplen:

```
✅ Gate de calidad — [ID] [Nombre del agente]

Condiciones verificadas:
- [condición 1]: ✓
- [condición 2]: ✓
- [condición N]: ✓

El output está completo. Actualizando state.yaml...
```

Actualizar `state.yaml` a `status: completed` y continuar con el log de sesión.

**Paso 2b — Gate falla**

Si una o más condiciones no se cumplen:

```
⚠️ Gate de calidad — [ID] [Nombre del agente]

El output no cumple todas las condiciones mínimas:
- [condición que falla]: ✗ — [qué falta concretamente]
- [condición que pasa]: ✓

¿Cómo querés continuar?
(1) Completar lo que falta ahora → volvemos al agente para cubrir los puntos incompletos
(2) Marcar como in_progress → guardás lo que hay y continuás en otra sesión
```

Si elige opción 1: retomar el agente para cubrir los puntos faltantes, luego re-ejecutar el gate.
Si elige opción 2: actualizar `state.yaml` a `status: in_progress` (no `completed`), registrar lo avanzado en el output parcial.

---

## Gates por agente

| Agente | Condición mínima para pasar |
|---|---|
| A01 Lean Canvas | 7 de 11 bloques con contenido real (sin placeholders ni texto genérico) |
| A06 Guión entrevistas | Al menos 10 preguntas en el guión final |
| A07 Análisis entrevista | JTBD identificado + al menos 3 dolores documentados |
| A08 Consolidado | `customer_problem_fit` con veredicto explícito (alcanzado / no_alcanzado / pendiente) |
| A09 CJM | Al menos 4 etapas del journey mapeadas (Actual y Futuro) |
| A11 Propuesta de valor | Pre-Headline (si aplica), Headline y Sub-Headline presentes y no vacíos |
| A12 Oferta irresistible | Promesa + mecanismo + precio + garantía presentes (no placeholders) |
| A13 Experimento | Hipótesis + métrica de éxito + canal + duración definidos |
| A19 Definición MVP | Tipo de MVP + features mínimos + criterio de éxito documentados |

---

## Reglas del gate

1. **El gate siempre se ejecuta.** No es opcional ni salteable — incluso si el fundador insiste en avanzar, informar el resultado del gate antes de proceder.
2. **El gate verifica el output final, no el proceso.** Si el output tiene el contenido mínimo, pasa — sin importar cuánto tiempo tomó construirlo.
3. **Los placeholders no cuentan.** Texto como `[completar]`, `[descripción]`, `[pendiente]` equivale a campo vacío.
4. **El gate no invalida lo previo.** Un gate que falla no borra el trabajo hecho — solo impide marcarlo como `completed`.
5. **Reportar con especificidad.** Al fallar, indicar exactamente qué campo falta o está incompleto, no solo "faltan cosas".

---

## Relación con otros SOPs

- `sop-session-log.md` — el log de sesión (HUCS) se genera **después** del gate, antes de cerrar
- `state.yaml` — solo se escribe `status: completed` si el gate pasa; si falla, escribir `in_progress`

---

*SOP Gate de Calidad v1.0 — Founder OS Post-MVP Etapa 1 | Sesión 2*
