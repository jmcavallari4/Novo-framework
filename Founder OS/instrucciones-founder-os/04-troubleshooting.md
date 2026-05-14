# Solución de problemas — Founder OS

> Si algo no funciona como esperás, este archivo tiene las respuestas a los problemas más comunes.
> Para entender cómo funciona el sistema, ver `HOW-IT-WORKS.md`.
> Para referencia de comandos, ver `COMMANDS.md`.

---

## Problemas comunes

### El hook no imprime nada al iniciar la sesión

**Síntoma:** al abrir Claude Code, el sistema no muestra el resumen de la última sesión ni el estado del startup.

**Causas posibles y soluciones:**

1. **El hook no está habilitado en la configuración de Claude Code.**
   - Abrí la configuración de Claude Code (ícono de engranaje o menú de configuración).
   - Buscá la sección de "Hooks" o "Session hooks".
   - Verificá que `on-session-start.sh` esté listado y habilitado.

2. **El archivo `.active` no existe o está vacío.**
   - Verificá que existe el archivo `startups/.active` en la carpeta del OS.
   - Si no existe: ejecutá `/new-startup` para crear tu primer startup.
   - Si existe pero está vacío: ejecutá `/switch` para activar un startup existente.

3. **No existe ningún startup inicializado.**
   - Si la carpeta `startups/` está vacía o no tiene subcarpetas con `state.yaml`, el hook no tiene contexto para mostrar.
   - Solución: ejecutá `/new-startup` o `/onboarding`.

---

### La skill no detecta mi startup

**Síntoma:** al invocar una skill como `/business-model` o `/discovery`, el sistema dice que no hay startup activo o no encuentra `state.yaml`.

**Cómo verificar:**

1. Revisá el contenido del archivo `startups/.active` — debe tener el nombre exacto de una carpeta dentro de `startups/`.
2. Verificá que esa carpeta existe: `startups/[nombre]/`.
3. Verificá que dentro de esa carpeta existe `.founder-os/state.yaml`.

**Soluciones:**
- Si `.active` apunta a una carpeta que no existe: ejecutá `/switch` para elegir un startup válido.
- Si el startup existe pero no tiene `state.yaml`: ejecutá `/onboarding` para inicializarlo.
- Si todo parece correcto pero el problema persiste: cerrá y volvé a abrir Claude Code apuntando a la carpeta raíz del OS.

---

### Un agente está marcado como `completed` pero el output no existe

**Síntoma:** `state.yaml` muestra un agente en `completed` pero el archivo de output que debería estar en `stages/` no aparece o está vacío.

**Por qué ocurre:** esto puede pasar si el archivo fue borrado manualmente, movido de lugar o si hubo un error al generar el output en una sesión anterior.

**Solución:**
```
/reset-agent [ID del agente]
```
Por ejemplo: `/reset-agent A01`

Esto devuelve el agente a `pending` (sin borrar nada más) y te permite regenerar el output correctamente. El sistema pedirá confirmación antes de ejecutar.

---

### El modelo "olvida" el contexto en sesiones largas

**Síntoma:** a medida que la sesión avanza, el modelo parece olvidar detalles del startup, el método o decisiones tomadas al inicio.

**Por qué ocurre:** Claude tiene un límite de contexto activo. En sesiones muy largas (muchos intercambios), el contexto inicial puede quedar fuera de la ventana de memoria activa.

**Qué hacer:**
1. **Invocá el comando que corresponde a la etapa en la que estás.** Por ejemplo, si estás trabajando en descubrimiento, escribí `/discovery` de nuevo. La skill vuelve a leer los archivos del startup y retoma con contexto fresco.
2. **Si el problema persiste:** cerrá la conversación, abrí una nueva sesión de Claude Code y empezá con `/status` para retomar desde el estado guardado. El progreso nunca se pierde — está en `state.yaml`.

---

### Quiero volver a una etapa anterior sin romper el estado

**Síntoma:** avanzaste en el método pero querés revisar o rehacer el trabajo de una etapa previa.

**Opciones según el caso:**

**Si el output está desactualizado pero el agente está `completed`:**
- Usá `/reset-agent [ID]` para volver el agente a `pending`.
- Luego invocá la skill correspondiente para rehacer el agente.
- El archivo original no se borra — el sistema crea una versión nueva (ej: `lean-canvas-v2.md`).

**Si solo querés revisar lo que generaste antes:**
- Podés leer los archivos directamente en la carpeta `stages/` del startup.
- O usá `/export` para ver un resumen de todos los outputs generados hasta ahora.

**Si cambiaste radicalmente de hipótesis y querés empezar desde una etapa:**
- Usá `/reset-agent` para cada agente que querés rehacer, empezando por el más temprano.
- Los agentes posteriores que dependían de ese output quedarán con su contenido anterior — podés actualizarlos uno por uno.

**Importante:** el sistema no te bloquea para avanzar ni para retroceder. Pero te informa si hay dependencias entre agentes, para que tomes la decisión con conciencia del impacto.

---

### El gate de calidad falla y no sé cómo completarlo

**Síntoma:** al intentar marcar un agente como completado, el sistema muestra que el gate no pasa y lista las condiciones faltantes.

**Qué hacer:**
1. Leé qué condición específica falla (el sistema lo indica con detalle).
2. Elegí la opción 1: "Completar lo que falta ahora". La skill retoma el agente y te ayuda a cubrir los puntos incompletos.
3. Si preferís continuar en otra sesión: elegí la opción 2 ("Marcar como in_progress"). El progreso parcial se guarda y podés retomarlo con el mismo comando en la próxima sesión.

**Los gates por agente son:**
- **A01 Lean Canvas:** al menos 7 de 11 bloques con contenido real.
- **A06 Guión de entrevistas:** al menos 10 preguntas en el guión.
- **A07 Análisis de entrevista:** JTBD identificado + al menos 3 dolores documentados.
- **A08 Consolidado:** veredicto explícito de Customer Problem Fit.
- **A09 CJM:** al menos 4 etapas del journey mapeadas.
- **A11 Propuesta de valor:** Pre-Headline, Headline y Sub-Headline presentes.
- **A12 Oferta irresistible:** promesa + mecanismo + precio + garantía.
- **A13 Experimento:** hipótesis + métrica de éxito + canal + duración.
- **A19 Definición MVP:** tipo + features mínimos + criterio de éxito.

---

### El comando `/switch` no muestra mis startups

**Síntoma:** al ejecutar `/switch`, el sistema dice que no hay startups disponibles o muestra una lista vacía.

**Causa:** el comando lista las carpetas dentro de `startups/` que contienen un archivo `.founder-os/state.yaml`. Si una carpeta no tiene ese archivo, no aparece en la lista.

**Solución:**
- Verificá que la carpeta del startup existe dentro de `startups/`.
- Verificá que dentro de esa carpeta existe `.founder-os/state.yaml`.
- Si el startup fue creado manualmente sin pasar por `/onboarding`, puede que le falte el `state.yaml`. En ese caso, abrí el startup directamente desde `/new-startup` y el sistema lo inicializará.

---

### El sistema dice que debo completar una etapa anterior primero

**Síntoma:** al invocar una skill (por ejemplo `/solution`), el sistema te avisa que hay un agente previo que no está completado.

**Por qué ocurre:** el método SVP™ tiene dependencias entre etapas. No es posible definir la solución mínima sin antes validar que el problema existe (CPF).

**Qué hacer:**
1. Ejecutá `/status` para ver exactamente qué agentes están pendientes.
2. Retomá el agente que falta con el comando correspondiente.
3. Si considerás que la advertencia no aplica a tu caso, el sistema te permite avanzar igual — pero te muestra el impacto de saltear ese paso.

---

## Cuándo pedir ayuda

Si encontrás un problema que no está en esta lista, incluí la siguiente información en tu reporte:

1. **Qué comando ejecutaste** (ej: `/discovery`).
2. **Qué esperabas que pasara** (ej: "que analizara la transcripción").
3. **Qué pasó en cambio** (ej: "dijo que no encontraba el archivo").
4. **El contenido de `startups/.active`** (el nombre de la carpeta que tiene).
5. **Si el archivo `state.yaml` existe** y en qué etapa dice que estás.

Con esa información, cualquier persona que conozca el sistema puede ayudarte a resolver el problema rápidamente.

---

*Founder OS | Sistema de Validación Paga™ by Novolabs*
