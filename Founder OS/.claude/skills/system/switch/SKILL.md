# Skill: switch

## Qué es esta skill

Comando operativo del sistema. Lista los startups disponibles en `startups/` y permite cambiar el startup activo actualizando `startups/.active`.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/switch`

---

## Archivos que esta skill lee

- `startups/.active` — nombre del startup activo actualmente
- `startups/*/` — carpetas de startups disponibles
- `startups/<nombre>/.founder-os/state.yaml` — para mostrar etapa activa de cada startup

---

## Comportamiento

### Paso 1 — Listar startups disponibles

Listar todas las subcarpetas dentro de `startups/` que contengan un archivo `.founder-os/state.yaml`. Ignorar carpetas sin state.yaml (estructura incompleta).

Para cada startup encontrado, extraer:
- **Nombre:** nombre de la carpeta
- **Etapa activa:** campo `active_stage` del state.yaml → mapear a nombre de etapa
- **Estado:** si es el startup activo (marcado con `← activo`)

Si no hay startups disponibles (o solo hay carpetas sin state.yaml), mostrar:

```
No encontré startups inicializados en la carpeta startups/.
Para crear uno nuevo, usá /new-startup.
```

### Paso 2 — Mostrar lista y pedir elección

Imprimir al chat:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  FOUNDER OS — Cambiar startup activo
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Startups disponibles:

  [1] mi-startup-1     Etapa 2 — Modelo de Negocios  ← activo
  [2] mi-startup-2     Etapa 3 — Descubrimiento

¿Cuál querés activar? (escribí el número o el nombre, o "cancelar" para salir)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Paso 3 — Procesar la elección

- Si el usuario elige el startup que ya está activo: informar "Ya estás trabajando en [nombre]." y salir.
- Si el usuario elige un startup diferente: actualizar `startups/.active` con el nombre elegido.
- Si el usuario escribe "cancelar": salir sin cambios.
- Si la elección no corresponde a ningún startup: pedir que ingrese una opción válida.

### Paso 4 — Confirmar el cambio

Imprimir:

```
✓ Ahora trabajando en: [nombre del startup elegido]
  Etapa activa: [número] — [nombre de etapa]
  Próximo paso: [next_action del state.yaml]

Para ver el estado completo: /status
```

---

## Tabla de etapas

| active_stage | Nombre |
|---|---|
| 1 | Mindset |
| 2 | Modelo de Negocios |
| 3 | Descubrimiento del Problema |
| 4 | Definición de la Solución |
| 5 | Creación de la Oferta |
| 6 | Validación de Demanda |
| 7 | Construcción del MVP |

---

## Notas

- Este comando no modifica `state.yaml` ni genera outputs del SVP™.
- Solo actualiza `startups/.active`.
- Si `startups/` no existe, crear la carpeta y mostrar el mensaje de "sin startups".
- Puede invocarse en cualquier etapa sin afectar el progreso del SVP™.
