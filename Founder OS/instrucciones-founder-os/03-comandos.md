# Comandos de Founder OS — Referencia completa

> Todos los comandos se invocan escribiéndolos en el chat de Claude Code.
> Para entender qué hace cada etapa del método, ver `HOW-IT-WORKS.md`.

---

## Skills del SVP™

Estos comandos ejecutan las etapas del método. Actualizan el progreso en `state.yaml`, generan outputs en la carpeta `stages/` y registran la sesión en el historial del startup.

| Comando | Etapa | Agentes | Qué produce | Gate de entrada |
|---|---|---|---|---|
| `/onboarding` | Inicial | — | `startup-context.md` + `state.yaml` inicializado | Ninguno |
| `/mindset` | 1 — Mindset | — | Conversación guiada (sin archivo) | Ninguno |
| `/business-model` | 2 — Modelo de Negocios | A01–A05 | Lean Canvas, pruebas de deseabilidad / viabilidad / factibilidad, pitch | Startup inicializado |
| `/discovery` | 3 — Descubrimiento | A06–A08 | Guión de entrevistas, análisis por entrevista, consolidado del estudio | A01 completado |
| `/solution` | 4 — Solución | A09–A11 | Customer Journey Map, análisis Kano, propuesta de valor | CPF alcanzado (A08) |
| `/offer` | 5 — Oferta | A12 | Oferta irresistible (promesa + mecanismo + precio + garantía) | A11 completado |
| `/demand` | 6 — Demanda | A13–A18 | Experimento de validación + landing page + anuncios + lead magnet + webinar | A12 completado |
| `/mvp` | 7 — MVP | A19 | Definición del MVP (tipo + features + criterio de éxito) | Experimento diseñado (A13) |

### Detalle de agentes por skill

**`/business-model` (A01–A05)**
- `A01` Lean Canvas — mapa de 11 dimensiones del negocio
- `A02` Prueba de Deseabilidad — ¿el problema es urgente?
- `A03` Prueba de Viabilidad — ¿los números tienen sentido?
- `A04` Prueba de Factibilidad — ¿el equipo puede construirlo?
- `A05` Pitch — presentación de 3 minutos del modelo

**`/discovery` (A06–A08)**
- `A06` Preparación de Entrevistas — guión de descubrimiento (gate: mínimo 10 preguntas)
- `A07` Análisis de Entrevistas — análisis de transcripciones (gate: JTBD + 3 dolores)
- `A08` Consolidación del Estudio — veredicto de Customer Problem Fit

**`/solution` (A09–A11)**
- `A09` Customer Journey Map — recorrido actual y futuro del cliente (gate: 4+ etapas mapeadas)
- `A10` Análisis Kano — clasificación de features por impacto
- `A11` Propuesta de Valor — Pre-Headline, Headline y Sub-Headline (gate: los 3 presentes)

**`/offer` (A12)**
- `A12` Oferta Irresistible — promesa + mecanismo + precio + garantía (gate: los 4 componentes)

**`/demand` (A13–A18)**
- `A13` Experimento de Validación — hipótesis + métrica + canal + duración (gate: los 4 definidos)
- `A14` Landing Copy — texto de la landing page
- `A15` Landing Builder — código HTML de la landing page
- `A16` Anuncios — piezas publicitarias
- `A17` Lead Magnet — recurso gratuito para captura de interés
- `A18` Webinar — estructura del webinar de validación

**`/mvp` (A19)**
- `A19` Definición del MVP — tipo + features mínimos + criterio de éxito (gate: los 3 definidos)

---

## Comandos del sistema

Estos comandos son utilidades operativas — no forman parte del método SVP™, no actualizan el progreso de agentes y pueden invocarse en cualquier momento sin afectar el estado del startup.

| Comando | Qué hace | Qué produce |
|---|---|---|
| `/status` | Muestra el estado actual del startup activo: etapa, progreso, agente en curso y próximo paso | Dashboard en el chat (sin archivos) |
| `/switch` | Lista los startups disponibles y permite cambiar el activo | Actualiza `startups/.active` |
| `/new-startup` | Crea un nuevo startup e inicia el onboarding | Estructura de carpetas + invoca `/onboarding` |
| `/reset-agent [ID]` | Reinicia un agente a `pending` sin borrar su output | Actualiza `state.yaml` (solo ese agente) |
| `/export` | Genera un snapshot legible del avance para compartir con un mentor o equipo | `export/resumen-[fecha].md` en la carpeta del startup |
| `/help` | Lista todos los comandos disponibles con descripción | Respuesta en el chat (sin archivos) |

### Detalles de comandos del sistema

**`/status`**
```
Uso: /status
Cuándo usarlo: al iniciar una sesión para ver dónde estás, o para verificar el progreso antes de elegir el próximo paso.
Ejemplo de output: dashboard con ✅ / 🔄 / ⬜ por cada agente A01–A19.
```

**`/switch`**
```
Uso: /switch
Cuándo usarlo: cuando tenés más de un startup y querés trabajar en otro proyecto.
Flujo: lista los startups disponibles → elegís uno → el sistema lo activa y confirma.
```

**`/new-startup`**
```
Uso: /new-startup
Cuándo usarlo: para crear un proyecto nuevo desde cero. El sistema crea la carpeta y lanza el onboarding automáticamente.
```

**`/reset-agent [ID]`**
```
Uso: /reset-agent A05
Cuándo usarlo: cuando un agente está marcado como completed pero querés rehacerlo (ej: el output quedó superficial, cambiaste de hipótesis).
Importante: el archivo output NO se borra. Solo el puntero en state.yaml vuelve a pending.
El sistema pedirá confirmación antes de ejecutar.
```

**`/export`**
```
Uso: /export
Cuándo usarlo: para compartir el avance con un mentor, inversor o socio que no tiene acceso al sistema.
Output: resumen en Markdown sin YAML ni rutas técnicas — legible por cualquier persona.
```

**`/help`**
```
Uso: /help
Cuándo usarlo: para recordar qué comandos existen sin tener que abrir este archivo.
```

---

## Ejemplos de uso

**"Acabo de instalar el sistema y quiero empezar"**
```
/onboarding → /mindset → /business-model
```

**"Terminé todas las entrevistas y quiero analizar qué aprendí"**
```
/discovery
(La skill detecta las transcripciones y ejecuta el análisis de A07 automáticamente, luego pasa a A08 para el consolidado)
```

**"No recuerdo en qué etapa estoy"**
```
/status
(Muestra el dashboard completo con el próximo paso recomendado)
```

**"Quiero mejorar mi Lean Canvas — lo hice con pocas ideas"**
```
/reset-agent A01 → /business-model
(Reinicia A01 sin borrar el archivo anterior, luego rehacés el Lean Canvas)
```

**"Quiero trabajar en otro startup"**
```
/switch
(Lista los proyectos disponibles → elegís uno → el sistema cambia el contexto)
```

**"Necesito compartir mi avance con mi mentor"**
```
/export
(Genera un resumen limpio en export/resumen-[fecha].md que podés enviar por email)
```

---

*Founder OS | Sistema de Validación Paga™ by Novolabs*
