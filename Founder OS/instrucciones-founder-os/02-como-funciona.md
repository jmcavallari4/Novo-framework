# Cómo funciona Founder OS

> Documentación de uso para participantes de Novolabs.
> Para referencia técnica del sistema, ver `CLAUDE.md`.

---

## Qué es el SVP™

El **Sistema de Validación Paga™ (SVP™)** invierte la lógica típica del emprendedor. En lugar de construir un producto y esperar que alguien lo compre, el SVP™ te pide primero validar que el problema existe, que tu solución genera deseo y que alguien está dispuesto a pagar antes de que construyas nada.

Cada una de las 7 etapas del SVP™ reduce un riesgo específico: desde la mentalidad incorrecta hasta la sobreconstrucción. No son etapas opcionales ni reordenables — cada una depende de lo que aprendiste en la anterior. Saltear una etapa no te hace avanzar más rápido: te hace construir sobre suposiciones sin validar.

El principio rector es simple: **avanzar bien no significa avanzar rápido. Significa avanzar en el orden correcto.**

---

## Cómo funciona este sistema

Founder OS es un asistente metodológico que vive en tu computadora como una carpeta. No hay servidor, no hay cuenta, no hay suscripción. Abrís la carpeta en Claude Code y el sistema toma vida.

La carpeta tiene tres partes:

- **El OS** (`CLAUDE.md` + `.claude/`): las instrucciones que le dicen a Claude cómo comportarse. No tenés que leer esto — el sistema lo usa internamente.
- **Tus startups** (`startups/`): cada proyecto que creas tiene su propia subcarpeta con todo su contexto, progreso y outputs. Podés tener varios proyectos en paralelo y cambiar entre ellos con un comando.
- **El progreso** (`state.yaml`): un archivo que el sistema actualiza automáticamente cada vez que completás un agente. Es la fuente de verdad de tu avance — si cerrás Claude Code y volvés mañana, el sistema sabe exactamente dónde estabas.

El sistema usa **skills** (habilidades especializadas) que se activan con comandos `/nombre`. Cada skill sabe qué etapa del SVP™ le corresponde, qué preguntar, qué generar y cómo registrar el resultado.

---

## Flujo típico de un founder

Una sesión de trabajo con Founder OS se ve así:

1. **Abrís Claude Code** apuntando a la carpeta del OS. El sistema detecta tu startup activo y muestra un resumen de la última sesión: qué agentes completaste, qué decidiste, cuál es el próximo paso.

2. **Invocás un comando**, por ejemplo `/business-model`. La skill te hace preguntas, co-construye el output con vos (un Lean Canvas, un análisis, una propuesta de valor) y al terminar verifica que el resultado cumple un criterio mínimo de calidad.

3. **El sistema guarda todo automáticamente**: actualiza `state.yaml`, genera un log de la sesión y te confirma cuál es el próximo paso recomendado.

4. **En la próxima sesión**, el sistema retoma desde donde lo dejaste sin que tengas que explicar nada de nuevo.

El trabajo real ocurre fuera del chat — hablar con clientes, hacer experimentos, iterar. El sistema organiza ese trabajo y le da sentido dentro del método.

---

## Las 7 etapas en detalle

### Etapa 1 — Mindset
**Pregunta clave:** ¿Cómo tengo que pensar para emprender con método?
**Comando:** `/mindset`
**Qué produce:** una conversación guiada sobre los marcos mentales del SVP™ — sin outputs de archivo.
**Cuándo está completa:** cuando el fundador internaliza los principios antes de entrar al método.
**Riesgo que reduce:** mentalidad incorrecta (empezar a construir antes de validar).

---

### Etapa 2 — Modelo de Negocios
**Pregunta clave:** ¿Este proyecto tiene sentido como negocio?
**Comando:** `/business-model`
**Agentes (A01–A05):**
- **A01 Lean Canvas** — mapea las 11 dimensiones del negocio en una página.
- **A02 Prueba de Deseabilidad** — analiza si el problema es suficientemente urgente para que alguien pague.
- **A03 Prueba de Viabilidad** — revisa si los números tienen sentido (ingresos, costos, margen).
- **A04 Prueba de Factibilidad** — evalúa si el equipo puede construir lo que propone.
- **A05 Pitch** — estructura una presentación de 3 minutos del modelo de negocio.
**Cuándo está completa:** cuando los 5 agentes están en `completed` y el fundador tiene claridad sobre si el modelo tiene sentido económico.

---

### Etapa 3 — Descubrimiento del Problema
**Pregunta clave:** ¿Existe un problema real, urgente y relevante?
**Comando:** `/discovery`
**Agentes (A06–A08):**
- **A06 Preparación de Entrevistas** — diseña el guión de entrevistas de descubrimiento.
- **A07 Análisis de Entrevistas** — analiza cada transcripción para identificar patrones, dolores y JTBD.
- **A08 Consolidación del Estudio** — sintetiza todos los hallazgos y emite un veredicto sobre el Customer Problem Fit.
**Cuándo está completa:** cuando A08 tiene un `customer_problem_fit` con veredicto explícito (`alcanzado` / `no_alcanzado`).
**Nota importante:** si el CPF no se alcanza, el sistema recomienda volver a iterar antes de avanzar.

---

### Etapa 4 — Definición de la Solución
**Pregunta clave:** ¿Cuál es la solución mínima que tiene sentido?
**Comando:** `/solution`
**Agentes (A09–A11):**
- **A09 Customer Journey Map** — mapea el recorrido actual del cliente con el problema y el recorrido futuro con tu solución.
- **A10 Análisis Kano** — clasifica los features posibles según su impacto en la satisfacción del cliente.
- **A11 Propuesta de Valor** — redacta el Pre-Headline, Headline y Sub-Headline que comunican el valor de tu solución.
**Cuándo está completa:** cuando los 3 agentes están en `completed` y la propuesta de valor es clara y específica.

---

### Etapa 5 — Creación de la Oferta
**Pregunta clave:** ¿Cómo activo el deseo de compra?
**Comando:** `/offer`
**Agentes (A12):**
- **A12 Oferta Irresistible** — construye la oferta completa: promesa, mecanismo, precio y garantía.
**Cuándo está completa:** cuando la oferta tiene los 4 componentes definidos y el gate de calidad la valida.

---

### Etapa 6 — Validación de Demanda
**Pregunta clave:** ¿Alguien está dispuesto a pagar?
**Comando:** `/demand`
**Agentes (A13–A18):**
- **A13 Experimento de Validación** — define la hipótesis, la métrica de éxito, el canal y la duración del experimento.
- **A14 Landing Copy** — escribe el texto de una landing page que comunica la oferta.
- **A15 Landing Builder** — genera el código HTML de la landing page.
- **A16 Anuncios** — crea las piezas publicitarias para distribuir la oferta.
- **A17 Lead Magnet** — diseña un recurso gratuito que captura el interés del segmento objetivo.
- **A18 Webinar** — estructura un webinar de validación.
**Cuándo está completa:** cuando el experimento (A13) se diseñó y al menos uno de los canales de distribución (A14–A18) está listo para ejecutar.

---

### Etapa 7 — Construcción del MVP
**Pregunta clave:** ¿Qué versión mínima construyo?
**Comando:** `/mvp`
**Agentes (A19):**
- **A19 Definición del MVP** — define el tipo de MVP, los features mínimos indispensables y el criterio de éxito que determinará si seguir construyendo.
**Cuándo está completa:** cuando A19 está en `completed` con tipo, features y criterio de éxito definidos.

---

## Glosario

**JTBD (Jobs To Be Done)**
El trabajo que el cliente "contrata" a tu producto para hacer. No es una feature ni un problema técnico — es el progreso que el cliente quiere lograr en su vida. Ejemplo: no contratan un taladro, contratan "un agujero en la pared para colgar un cuadro".

**CPF (Customer Problem Fit)**
La evidencia de que el problema que estás resolviendo es real, urgente y relevante para el segmento que definiste. Se alcanza cuando las entrevistas de descubrimiento confirman patrones consistentes de dolor.

**Lean Canvas**
Un mapa de una página con las 11 dimensiones clave del negocio: problema, segmento, propuesta de valor única, solución, canales, flujos de ingresos, estructura de costos, métricas clave, ventaja injusta.

**Oferta irresistible**
Una propuesta comercial estructurada en 4 componentes: qué promete (la transformación), cómo lo logra (el mecanismo), cuánto cuesta (el precio) y qué pasa si no funciona (la garantía).

**MVP (Minimum Viable Product)**
La versión más pequeña del producto que permite validar la hipótesis central con clientes reales. No es la versión más barata — es la más rápida para aprender si la solución funciona.

**Agente**
Una unidad de trabajo dentro de una etapa del SVP™. Cada agente tiene un ID (A01–A19), un output específico y un gate de calidad. El sistema registra si está pendiente, en progreso o completado.

**Gate de calidad**
Una verificación automática que el sistema corre antes de marcar un agente como completado. Revisa que el output cumple condiciones mínimas (ej: el Lean Canvas tiene al menos 7 de 11 bloques completos). No bloquea al fundador — lo informa.

**State.yaml**
El archivo que guarda el progreso de tu startup. Registra el estado de cada agente (pending / in_progress / completed), el output generado y los datos clave del método. Es la memoria del sistema entre sesiones.

**HUCS (Historial Unificado de Contexto del Startup)**
El registro automático de cada sesión de trabajo. Cuando completás un agente, el sistema genera una entrada con las decisiones tomadas y los próximos pasos. Al iniciar una sesión nueva, el sistema muestra el resumen de las últimas entradas.

---

*Founder OS | Sistema de Validación Paga™ by Novolabs*
