# Skill: new-startup

## Qué es esta skill

Comando operativo del sistema. Crea la estructura base de carpetas para un nuevo startup dentro de `startups/`, establece el nuevo startup como activo en `startups/.active` e invoca el flujo de `/onboarding` para inicializarlo.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/new-startup`

---

## Archivos que esta skill crea

- `startups/<nombre>/startup-context.md` — creado por onboarding
- `startups/<nombre>/.founder-os/state.yaml` — creado por onboarding
- `startups/<nombre>/.founder-os/session-log/` — carpeta vacía
- `startups/<nombre>/stages/01-mindset/` — estructura de carpetas
- `startups/<nombre>/stages/02-business-model/`
- `startups/<nombre>/stages/03-discovery/entrevistas/`
- `startups/<nombre>/stages/04-solution/`
- `startups/<nombre>/stages/05-offer/`
- `startups/<nombre>/stages/06-demand/`
- `startups/<nombre>/stages/07-mvp/`
- `startups/.active` — actualizado con el nombre del nuevo startup

---

## Comportamiento

### Paso 1 — Pedir nombre del startup

Preguntar al usuario:

```
¿Cuál es el nombre de tu nuevo startup? (puede ser provisional — usá solo letras, números y guiones, sin espacios)
```

Validar que el nombre:
- No contiene espacios (reemplazar automáticamente con guiones bajos si los hay)
- No contiene caracteres especiales excepto `-` y `_`
- No existe ya como carpeta en `startups/`

Si ya existe una carpeta con ese nombre, avisar:
```
Ya existe un startup con el nombre "[nombre]" en startups/.
¿Querés activarlo en lugar de crear uno nuevo? (sí / no)
```
- Si sí: actualizar `.active` y salir (ver `/switch`)
- Si no: pedir un nombre diferente

### Paso 2 — Crear estructura de carpetas

Crear las siguientes carpetas y archivos:

```
startups/<nombre>/
├── .founder-os/
│   ├── session-log/           ← carpeta vacía
│   └── (state.yaml lo crea onboarding)
└── stages/
    ├── 01-mindset/
    ├── 02-business-model/
    ├── 03-discovery/
    │   └── entrevistas/
    ├── 04-solution/
    ├── 05-offer/
    ├── 06-demand/
    └── 07-mvp/
```

Para que las carpetas vacías sean rastreables, crear un archivo `.gitkeep` dentro de `session-log/` y de cada subcarpeta de `stages/`.

### Paso 3 — Actualizar startups/.active

Escribir el nombre del nuevo startup (solo el nombre, sin ruta, sin espacios extra ni saltos de línea) en `startups/.active`.

### Paso 4 — Confirmar y lanzar onboarding

Imprimir:

```
✓ Startup "[nombre]" creado en startups/[nombre]/
✓ Ahora trabajando en: [nombre]

A continuación vamos a inicializar el startup con /onboarding.
```

Luego ejecutar el flujo completo de la skill `/onboarding` leyendo su `SKILL.md` en `.claude/skills/onboarding/SKILL.md`.

El onboarding escribirá `startup-context.md` y `state.yaml` dentro de `startups/<nombre>/` (respetando la Regla 8 de CLAUDE.md sobre paths del startup activo).

---

## Notas

- Este comando puede invocarse en cualquier etapa sin afectar el progreso del startup activo actual.
- Si el usuario ya tiene un startup activo, el cambio se confirma explícitamente en el Paso 3.
- No borra ni modifica ningún startup existente.
