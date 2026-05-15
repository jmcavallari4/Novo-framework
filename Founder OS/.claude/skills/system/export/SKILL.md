# Skill: export

## Qué es esta skill

Comando operativo del sistema. Genera un snapshot legible del avance del startup en ese momento — decisiones clave, outputs por etapa y estado del progreso — en un archivo Markdown sin rutas técnicas ni YAML. Útil para compartir con un mentor, equipo o inversor.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/export`

---

## Archivos que esta skill lee

- `<STARTUP_BASE>/startup-context.md` — contexto del startup
- `<STARTUP_BASE>/.founder-os/state.yaml` — estado del progreso y key_data
- Outputs registrados en `state.yaml` (rutas en los campos `output`) — para extraer el título o resumen de cada uno

## Archivos que esta skill genera

- `export/resumen-[YYYY-MM-DD].md` — snapshot exportable (en la carpeta raíz del startup)

---

## Comportamiento

### Paso 1 — Leer archivos base

Leer `<STARTUP_BASE>/startup-context.md` y `<STARTUP_BASE>/.founder-os/state.yaml`. Si alguno no existe, mostrar:
```
⚠️  No encontré [archivo]. Verificá que el startup esté inicializado con /onboarding.
```

### Paso 2 — Leer outputs existentes

Para cada agente con `status: completed` y `output` no nulo, intentar leer el archivo de output y extraer:
- El título (primera línea H1 del archivo, si existe)
- Las primeras 3–5 líneas de contenido sustantivo (no metadata, no headers vacíos)

Si el archivo no existe en disco, registrar: "(archivo no encontrado en disco)"

### Paso 3 — Calcular progreso

Igual que `/status`: total completados / 19 agentes, porcentaje de completitud.

### Paso 4 — Generar el archivo de export

Crear `export/resumen-[YYYY-MM-DD].md` con el siguiente contenido:

---

```markdown
# Resumen del Startup — [nombre del startup]
**Fecha:** [fecha de hoy]
**Generado por:** Founder OS — Sistema de Validación Paga™

---

## El proyecto

[Copiar la sección "Descripción" o "Idea" de <STARTUP_BASE>/startup-context.md. Si no existe esa sección exacta, copiar el primer párrafo de descripción del startup.]

**Segmento objetivo:** [del <STARTUP_BASE>/startup-context.md]
**Problema que resuelve:** [del <STARTUP_BASE>/startup-context.md]

---

## Estado del avance

Progreso general: **[X/19 agentes completados] ([XX]%)**
Etapa activa: **Etapa [N] — [nombre]**

---

## Decisiones clave registradas

| Decisión | Valor |
|---|---|
| JTBD priorizado | [valor o "Pendiente"] |
| Hipótesis activa | [valor o "Pendiente"] |
| Customer-Problem Fit | [valor o "Pendiente"] |
| Tipo de MVP elegido | [valor o "Pendiente"] |

---

## Outputs generados por etapa

### Etapa 2 — Modelo de Negocios
[Para cada agente completado en esta etapa, mostrar:]
**[Nombre del agente]**
> [Extracto de 3–5 líneas del output, o "(sin contenido extraíble)"]

### Etapa 3 — Descubrimiento del Problema
[ídem]

### Etapa 4 — Definición de la Solución
[ídem]

### Etapa 5 — Creación de la Oferta
[ídem]

### Etapa 6 — Validación de Demanda
[ídem]

### Etapa 7 — Construcción del MVP
[ídem]

[Omitir secciones de etapas sin ningún agente completado.]

---

## Próximo paso

[Valor de next_action en state.yaml]

---

*Exportado desde Founder OS el [fecha]. Sistema de Validación Paga™ by Novolabs.*
```

---

### Paso 5 — Confirmar al usuario

Mostrar:
```
✅ Resumen exportado en: export/resumen-[fecha].md

Este archivo es legible para cualquier persona — no requiere conocer el sistema.
Podés compartirlo con un mentor o equipo directamente.
```

---

## Notas

- Si la carpeta `export/` no existe, crearla antes de escribir.
- Si ya existe un export del mismo día (`resumen-[YYYY-MM-DD].md`), crear `resumen-[YYYY-MM-DD]-v2.md`, etc.
- No incluir paths de archivos internos ni términos técnicos del sistema en el output.
- Este comando no modifica `state.yaml` ni genera session-log.
- Puede invocarse en cualquier etapa sin afectar el estado del SVP™.
