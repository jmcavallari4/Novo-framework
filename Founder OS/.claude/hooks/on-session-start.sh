#!/usr/bin/env bash
# Founder OS — Hook: on-session-start v2 (multi-startup)
# Lee startups/.active para determinar el startup activo y mostrar su contexto.

ACTIVE_FILE="startups/.active"

# Helper: extraer valor de un campo YAML simple (clave: "valor")
yaml_get() {
  local file="$1"
  local key="$2"
  grep -m1 "^  ${key}:" "$file" 2>/dev/null | sed 's/^[^:]*: *//' | tr -d '"'
}

yaml_get_root() {
  local file="$1"
  local key="$2"
  grep -m1 "^${key}:" "$file" 2>/dev/null | sed 's/^[^:]*: *//' | tr -d '"'
}

# Truncar campos largos (49 chars máx para respetar el box)
truncate_field() {
  local val="$1"
  local max=49
  if [ ${#val} -gt $max ]; then
    echo "${val:0:$((max-3))}..."
  else
    echo "$val"
  fi
}

# Mapear número de etapa a nombre
stage_name() {
  case "$1" in
    1) echo "Etapa 1 — Mindset" ;;
    2) echo "Etapa 2 — Modelo de Negocios" ;;
    3) echo "Etapa 3 — Descubrimiento del Problema" ;;
    4) echo "Etapa 4 — Definición de la Solución" ;;
    5) echo "Etapa 5 — Creación de la Oferta" ;;
    6) echo "Etapa 6 — Validación de Demanda" ;;
    7) echo "Etapa 7 — Construcción del MVP" ;;
    *) echo "Etapa ${1}" ;;
  esac
}

# ── Determinar startup activo ─────────────────────────────────────────────────
if [ ! -f "$ACTIVE_FILE" ] || [ -z "$(cat "$ACTIVE_FILE" 2>/dev/null | tr -d '[:space:]')" ]; then
  echo "┌─────────────────────────────────────────────────────────────────┐"
  echo "│  👋  Bienvenido a Founder OS                                    │"
  echo "│                                                                 │"
  echo "│  No hay ningún startup activo.                                  │"
  echo "│                                                                 │"
  echo "│  Para crear tu primer startup:  /new-startup                   │"
  echo "│  Para ver startups existentes:  /switch                        │"
  echo "└─────────────────────────────────────────────────────────────────┘"
  exit 0
fi

ACTIVE_STARTUP=$(cat "$ACTIVE_FILE" | tr -d '[:space:]')
STARTUP_BASE="startups/${ACTIVE_STARTUP}"
STATE_FILE="${STARTUP_BASE}/.founder-os/state.yaml"
SESSION_LOG_DIR="${STARTUP_BASE}/.founder-os/session-log"

# ── Startup activo sin state.yaml: estructura incompleta ─────────────────────
if [ ! -f "$STATE_FILE" ]; then
  echo "┌─────────────────────────────────────────────────────────────────┐"
  echo "│  ⚠️   Founder OS — Startup sin inicializar                      │"
  echo "│                                                                 │"
  printf "│  Startup activo: %-47s│\n" "${ACTIVE_STARTUP}"
  echo "│                                                                 │"
  echo "│  No encontré state.yaml para este startup.                      │"
  echo "│  Para inicializarlo, ejecuta:  /onboarding                     │"
  echo "└─────────────────────────────────────────────────────────────────┘"
  exit 0
fi

# ── Mostrar contexto del startup activo ──────────────────────────────────────
STARTUP_NAME=$(yaml_get "$STATE_FILE" "name")
ACTIVE_STAGE=$(yaml_get_root "$STATE_FILE" "active_stage")
NEXT_ACTION=$(yaml_get_root "$STATE_FILE" "next_action")

STAGE_LABEL=$(stage_name "$ACTIVE_STAGE")
STARTUP_DISPLAY=$(truncate_field "${STARTUP_NAME:-${ACTIVE_STARTUP}}")
NEXT_DISPLAY=$(truncate_field "${NEXT_ACTION:-ver state.yaml}")

echo "┌─────────────────────────────────────────────────────────────────┐"
echo "│  🚀  Founder OS — Sesión activa                                 │"
echo "├─────────────────────────────────────────────────────────────────┤"
printf "│  Startup:       %-49s│\n" "${STARTUP_DISPLAY}"
printf "│  Etapa activa:  %-49s│\n" "${STAGE_LABEL}"
echo "├─────────────────────────────────────────────────────────────────┤"
printf "│  Próximo paso:  %-49s│\n" "${NEXT_DISPLAY}"
echo "└─────────────────────────────────────────────────────────────────┘"
echo ""

# ── Historial de sesiones recientes (HUCS) ───────────────────────────────────
if [ -d "$SESSION_LOG_DIR" ]; then
  RECENT_LOGS=$(ls "$SESSION_LOG_DIR"/session-*.md 2>/dev/null | sort | tail -3)

  if [ -n "$RECENT_LOGS" ]; then
    echo "── Historial reciente ──────────────────────────────────────────────"
    for log_file in $RECENT_LOGS; do
      SESSION_NUM=$(basename "$log_file" .md | sed 's/session-//')
      SESSION_DATE=$(grep -m1 "^# Sesión" "$log_file" 2>/dev/null | sed 's/^# Sesión [0-9]* — //')

      echo ""
      echo "  — Sesión ${SESSION_NUM} (${SESSION_DATE:-fecha desconocida}):"

      DECISIONS=$(awk '/^## Decisiones tomadas/{found=1; next} found && /^## /{exit} found && /^- /{print "    "$0}' "$log_file" 2>/dev/null | head -2)
      if [ -n "$DECISIONS" ]; then
        echo "$DECISIONS"
      fi

      NEXT_STEPS=$(awk '/^## Próximos pasos acordados/{found=1; next} found && /^## /{exit} found && /^- /{print "    "$0}' "$log_file" 2>/dev/null | head -1)
      if [ -n "$NEXT_STEPS" ]; then
        echo "    → Acordado: $(echo "$NEXT_STEPS" | sed 's/^    - //')"
      fi
    done
    echo ""
    echo "────────────────────────────────────────────────────────────────────"
    echo ""
  fi
fi

echo "Lee ${STARTUP_BASE}/startup-context.md para recuperar el contexto completo."
