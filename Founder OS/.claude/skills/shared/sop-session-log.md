# SOP — Registro de Sesión (HUCS)

> HUCS: Sistema de Historial Unificado de Contexto del Startup.
> Este SOP define cómo cualquier skill genera la entrada de log al finalizar una sesión de trabajo.

---

## Propósito

Registrar qué pasó en cada sesión de trabajo para que el modelo pueda retomar con contexto real sin depender de la memoria del usuario. El `state.yaml` dice si un agente está completo; el session log dice qué resultó de ese trabajo y qué decidió el fundador.

---

## Cuándo generar una entrada de log

Toda skill que complete o avance en un agente del SVP™ debe generar una entrada de log **antes** de actualizar `state.yaml`. Si la sesión no completó ningún agente pero sí hubo decisiones relevantes (cambio de hipótesis, descarte de un segmento, etc.), también se registra.

---

## Ruta de los archivos

```
[startup-folder]/
└── .founder-os/
    └── session-log/
        ├── session-001.md
        ├── session-002.md
        └── ...
```

El número de sesión se determina buscando el último archivo existente en la carpeta y sumando 1. Si la carpeta está vacía, comenzar con `session-001.md`.

---

## Cómo determinar el número de sesión

```bash
# Buscar el último número usado
ls <STARTUP_BASE>/.founder-os/session-log/session-*.md 2>/dev/null | sort | tail -1
# Si retorna session-003.md → la próxima es session-004.md
# Si no retorna nada → la próxima es session-001.md
```

---

## Formato de cada entrada

```markdown
# Sesión [NNN] — [YYYY-MM-DD]

## Agentes trabajados
- [A##] [Nombre del agente]: [completed | in_progress | revisado]
  - Output: [ruta del archivo generado, o "ninguno"]

## Decisiones tomadas
- [Decisión concreta que tomó el fundador en esta sesión]
- [Otra decisión si la hubo]

## Cambios en key_data
- [campo]: [valor anterior] → [valor nuevo]
- (ninguno si no cambió nada)

## Próximos pasos acordados
- [Qué acordó hacer el fundador en la próxima sesión]
```

**Restricciones de formato:**
- Máximo 300 palabras por entrada. Ser conciso y directo.
- No incluir transcripciones, solo decisiones y resultados.
- No usar jerga técnica sin definir. El log es para el fundador, no para el desarrollador.
- Si no hubo decisiones relevantes, escribir "Sin decisiones nuevas esta sesión."
- Los próximos pasos deben ser accionables (verbos concretos, no "ver qué pasa").

---

## Ejemplo de entrada válida

```markdown
# Sesión 003 — 2026-05-15

## Agentes trabajados
- [A01] Lean Canvas: completed
  - Output: <STARTUP_BASE>/stages/02-business-model/lean-canvas-v1.md

## Decisiones tomadas
- Segmento objetivo redefinido: de "emprendedores" a "fundadores de SaaS B2B en Latam con 1–3 empleados"
- Se descartó el canal de distribución via marketplace; se priorizó venta directa

## Cambios en key_data
- (ninguno esta sesión)

## Próximos pasos acordados
- Completar A02 Deseabilidad para validar si el segmento elegido tiene dolor real
- Revisar la sección "Ventaja Injusta" del lean canvas antes de avanzar
```

---

## Instrucciones para la skill

1. **Antes de actualizar `state.yaml`**, crear el archivo de log con el número correspondiente.
2. Usar la información de la conversación actual (agentes trabajados, decisiones tomadas) para poblar la entrada. No pedir al fundador que dicte el log — generarlo automáticamente.
3. Confirmar al fundador mostrando el log antes de escribirlo: "Voy a registrar esta sesión así: [log]. ¿Correcto?"
4. Si el fundador corrige algo, actualizar la entrada antes de guardarla.
5. Después de guardar el log, actualizar `state.yaml` normalmente.
6. Informar al fundador: "Sesión registrada en `<STARTUP_BASE>/.founder-os/session-log/session-[NNN].md`."

---

## Relación con otros archivos

- `state.yaml` — fuente de verdad del progreso (qué agentes están completos)
- `<STARTUP_BASE>/startup-context.md` — contexto estático inicial del startup
- `session-log/` — historial dinámico de lo que pasó entre sesiones
- `on-session-start.sh` — lee las últimas entradas del log para inyectarlas al inicio de cada sesión

---

*SOP Session Log v1.0 — HUCS | Founder OS Post-MVP Etapa 1*
