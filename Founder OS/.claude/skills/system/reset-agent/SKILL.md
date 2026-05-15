# Skill: reset-agent

## Qué es esta skill

Comando operativo del sistema. Permite reiniciar el estado de un agente específico en `state.yaml`, volviendo su status a `pending` y su output a `null`. El archivo de output existente **no se borra** — solo se desconecta el puntero.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/reset-agent [ID]` — por ejemplo: `/reset-agent A05`

---

## Archivos que esta skill lee y modifica

- `<STARTUP_BASE>/.founder-os/state.yaml` — para leer el estado actual y actualizar el agente

---

## Comportamiento

### Paso 1 — Parsear el argumento

Leer el ID del agente del comando (ej: `A05`, `A07`, `A13`).

Si no se provee ningún ID, mostrar:
```
⚠️  Falta el ID del agente. Uso: /reset-agent [ID]
Ejemplo: /reset-agent A05

Agentes disponibles: A01 – A19
```

Si el ID no existe en `state.yaml`, mostrar:
```
⚠️  No encontré el agente "[ID]" en state.yaml.
Verificá el ID e intentá de nuevo. Agentes válidos: A01 – A19
```

### Paso 2 — Verificar el estado actual

Leer el estado actual del agente en `state.yaml`:
- Si ya está en `pending` y `output: null`: mostrar "El agente [ID] ya está en estado pendiente. No hay nada que reiniciar."
- Si está en `completed` o `in_progress`: continuar al paso 3.

### Paso 3 — Verificar dependientes

Revisar si hay agentes posteriores que dependan del agente a reiniciar y estén en `completed` o `in_progress`. Las dependencias son:

| Agente reiniciado | Dependientes a alertar |
|---|---|
| A01 | A02, A03, A04, A05 |
| A02 | A03, A04, A05 |
| A06 | A07, A08 |
| A07 | A08 |
| A08 | A09, A10, A11 |
| A09 | A11 |
| A10 | A11 |
| A11 | A12 |
| A12 | A13 |
| A13 | A14, A15, A16, A17, A18 |
| A19 | — |

Si hay dependientes completos, incluirlos en la confirmación del paso 4.

### Paso 4 — Pedir confirmación

Mostrar al fundador:

```
⚠️  Vas a reiniciar el agente [ID] — [Nombre del agente].

Estado actual: [completed / in_progress]
Output registrado: [path o "ninguno"]

El archivo de output NO se borrará, pero el agente volverá a estado pendiente
y deberás ejecutarlo de nuevo la próxima vez que uses /[skill-correspondiente].

[Si hay dependientes:]
⚠️  Los siguientes agentes completados dependen de éste:
  - [ID] — [nombre] (completed)
  - [ID] — [nombre] (in_progress)
Quedarán desconectados pero no se reiniciarán automáticamente.

¿Confirmas el reinicio? (sí / no)
```

### Paso 5 — Ejecutar o cancelar

**Si confirma (sí):**

Actualizar `state.yaml`:
- `agents.[agente_id].status: pending`
- `agents.[agente_id].output: null`
- Para A07: también resetear `count: 0` y `outputs: []`

Mostrar:
```
✅ Agente [ID] reiniciado correctamente.
   Para ejecutarlo de nuevo, usá /[skill-correspondiente].
```

**Si cancela (no):**
```
Operación cancelada. No se realizaron cambios.
```

---

## Mapeo de agentes a skills

| Agente | Skill para re-ejecutar |
|---|---|
| A01–A05 | `/business-model` |
| A06–A08 | `/discovery` |
| A09–A11 | `/solution` |
| A12 | `/offer` |
| A13–A18 | `/demand` |
| A19 | `/mvp` |

---

## Notas

- Este comando puede invocarse en cualquier etapa sin afectar el SVP™ salvo el agente reiniciado.
- No genera session-log ni corre gate de calidad (es una operación administrativa).
- Si el output era una versión específica (ej: `lean-canvas-v2.md`), ese archivo sigue en disco — el fundador puede consultarlo manualmente.
