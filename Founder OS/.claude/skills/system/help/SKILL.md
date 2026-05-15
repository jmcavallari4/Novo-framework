# Skill: help

## Qué es esta skill

Comando operativo del sistema. Imprime al chat la lista completa de comandos disponibles — skills del SVP™ y comandos del sistema — con descripción de una línea y cuándo usar cada uno. No genera archivos.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/help`

---

## Archivos que esta skill lee

Ninguno.

---

## Comportamiento

Imprimir al chat el siguiente texto (estático, no requiere leer ningún archivo):

---

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  FOUNDER OS — Comandos disponibles
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

SKILLS DEL SVP™
Guían al founder por las 7 etapas del método de validación.

  /onboarding       Inicializar un nuevo startup. Crea startup-context.md y
                    state.yaml. Punto de entrada obligatorio.

  /mindset          Etapa 1. Trabajar los principios de mentalidad para
                    emprender con método antes de validar.

  /business-model   Etapa 2. Construir y validar el modelo de negocios.
                    Cubre Lean Canvas (A01) y pruebas de deseabilidad,
                    viabilidad y factibilidad (A02–A04) y pitch (A05).

  /discovery        Etapa 3. Descubrir si el problema es real, urgente y
                    relevante. Cubre guión de entrevistas (A06), análisis
                    individual (A07) y consolidación del estudio (A08).

  /solution         Etapa 4. Definir la solución mínima con sentido.
                    Cubre Customer Journey Map (A09), análisis Kano (A10)
                    y propuesta de valor (A11).

  /offer            Etapa 5. Crear la oferta irresistible (A12).
                    Construye promesa, mecanismo, precio y garantía.

  /demand           Etapa 6. Validar que alguien está dispuesto a pagar.
                    Cubre experimento de validación (A13) y generación de
                    landing, anuncios, lead magnet y webinar (A14–A18).

  /mvp              Etapa 7. Definir la versión mínima a construir (A19).
                    Tipo de MVP, features mínimos y criterio de éxito.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS DEL SISTEMA
Operaciones de navegación y utilidad. No afectan el progreso del SVP™.

  /status           Ver el estado actual del startup: etapa activa,
                    agentes completados y próximo paso recomendado.

  /reset-agent [ID] Reiniciar un agente específico (ej: /reset-agent A05).
                    El output existente no se borra, solo se desconecta.

  /export           Generar un resumen exportable del avance del startup.
                    Útil para compartir con un mentor o equipo.

  /switch           Cambiar el startup activo entre los proyectos disponibles.
                    Lista los startups y permite elegir cuál activar.

  /new-startup      Crear un nuevo startup e inicializarlo con /onboarding.
                    Crea la estructura de carpetas y activa el nuevo proyecto.

  /help             Mostrar este listado de comandos.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EJEMPLOS DE USO

  "Terminé las entrevistas" → /discovery (para consolidar el estudio)
  "¿En qué quedamos?" → /status
  "Quiero rehacer la propuesta de valor" → /reset-agent A11, luego /solution
  "Quiero compartir el avance" → /export
  "Es mi primera vez" → /new-startup
  "Quiero trabajar en otro proyecto" → /switch

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Notas

- Este comando no lee ni modifica archivos.
- Puede invocarse en cualquier etapa del SVP™.
- Este SKILL.md refleja los comandos de la versión actual del sistema. Actualizar si se agregan nuevos comandos en sesiones futuras.
