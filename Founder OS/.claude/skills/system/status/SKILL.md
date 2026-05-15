# Skill: status

## Qué es esta skill

Comando operativo del sistema. Lee `state.yaml` del startup activo y genera un dashboard visual en texto mostrando el estado completo del progreso sin modificar ningún archivo.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/status`

---

## Archivos que esta skill lee

- `startups/.active` — nombre del startup activo
- `startups/<activo>/.founder-os/state.yaml` — fuente de verdad del progreso

---

## Comportamiento

### Paso 1 — Determinar el path del startup activo

Leer `startups/.active`. Si no existe o está vacío, mostrar:

```
⚠️  No hay ningún startup activo. Para crear uno: /new-startup
    Para activar uno existente: /switch
```

Construir el path base: `STARTUP_BASE = startups/<contenido de .active>/`

### Paso 2 — Leer state.yaml

Leer `<STARTUP_BASE>/.founder-os/state.yaml`. Si el archivo no existe, mostrar:

```
⚠️  No se encontró state.yaml. ¿Ya corriste /onboarding para inicializar tu startup?
```

### Paso 3 — Calcular métricas

A partir del YAML:
- **Nombre del startup:** `startup.name`
- **Etapa activa:** `active_stage` → mapear al nombre de la etapa (ver tabla abajo)
- **Agentes completados:** contar agentes con `status: completed`
- **Total de agentes:** 19 (A01–A19). Para A07, contar como `completed` si `count > 0`
- **Porcentaje de completitud:** `(completados / 19) * 100`, redondeado a entero
- **Agente en progreso:** primer agente con `status: in_progress`, o "ninguno" si no hay
- **Next action:** campo `next_action`

Tabla de etapas:
| active_stage | Nombre |
|---|---|
| 1 | Mindset |
| 2 | Modelo de Negocios |
| 3 | Descubrimiento del Problema |
| 4 | Definición de la Solución |
| 5 | Creación de la Oferta |
| 6 | Validación de Demanda |
| 7 | Construcción del MVP |

### Paso 4 — Generar dashboard

Imprimir al chat con el siguiente formato (adaptado a los datos reales):

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  FOUNDER OS — Estado del startup
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Startup:       [nombre]
  Etapa activa:  [número] — [nombre de etapa]
  Progreso:      [X/19 agentes completados] ([XX]%)
  En progreso:   [agente en progreso o "ninguno"]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

ETAPA 2 — MODELO DE NEGOCIOS
  ✅ A01  Lean Canvas
  ✅ A02  Prueba de Deseabilidad
  ⬜ A03  Prueba de Viabilidad
  ⬜ A04  Prueba de Factibilidad
  ⬜ A05  Pitch

ETAPA 3 — DESCUBRIMIENTO DEL PROBLEMA
  🔄 A06  Preparación Entrevistas
  ⬜ A07  Análisis de Entrevistas  (0 entrevistas analizadas)
  ⬜ A08  Consolidación del Estudio

[... continuar con todas las etapas ...]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Próximo paso: [next_action]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Íconos de estado:**
- ✅ `status: completed`
- 🔄 `status: in_progress`
- ⬜ `status: pending`

**Agentes por etapa:**
- Etapa 1 — Mindset: sin agentes (skill conversacional)
- Etapa 2 — Modelo de Negocios: A01, A02, A03, A04, A05
- Etapa 3 — Descubrimiento: A06, A07, A08
- Etapa 4 — Solución: A09, A10, A11
- Etapa 5 — Oferta: A12
- Etapa 6 — Validación de Demanda: A13, A14, A15, A16, A17, A18
- Etapa 7 — MVP: A19

**Nombres completos de agentes:**
| ID | Nombre |
|---|---|
| A01 | Lean Canvas |
| A02 | Prueba de Deseabilidad |
| A03 | Prueba de Viabilidad |
| A04 | Prueba de Factibilidad |
| A05 | Pitch |
| A06 | Preparación Entrevistas |
| A07 | Análisis de Entrevistas |
| A08 | Consolidación del Estudio |
| A09 | Customer Journey Map |
| A10 | Análisis Kano |
| A11 | Propuesta de Valor |
| A12 | Oferta Irresistible |
| A13 | Experimento de Validación |
| A14 | Landing Copy |
| A15 | Landing Builder |
| A16 | Anuncios |
| A17 | Lead Magnet |
| A18 | Webinar |
| A19 | Definición del MVP |

### Paso 5 — Mostrar key_data si hay datos

Si algún campo de `key_data` no es `null`, agregar al final del dashboard:

```
DATOS CLAVE REGISTRADOS
  JTBD:              [valor o "pendiente"]
  Hipótesis activa:  [valor o "pendiente"]
  CPF:               [valor o "pendiente"]
  Tipo de MVP:       [valor o "pendiente"]
```

---

## Notas

- Este comando no genera ni modifica archivos.
- Puede invocarse en cualquier etapa sin afectar el estado del SVP™.
- Si `startup.name` está vacío, mostrar "[sin nombre]".
