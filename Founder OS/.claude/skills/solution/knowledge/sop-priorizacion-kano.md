# SOP — Priorización Kano
**Founder OS | Etapa 4 — Definición de la Solución | Agente A10**

---

## Qué es y para qué sirve

El Modelo Kano es una herramienta de priorización de funcionalidades que conecta la evidencia de entrevistas con las decisiones de qué construir primero. No es un ejercicio de votación ni de intuición del fundador — es un marco para traducir lo que los clientes valoran en decisiones concretas de producto.

En el contexto de un MVP, el Modelo Kano cumple dos funciones críticas:

1. **Identificar las funcionalidades que realmente importan** — separar las que el cliente da por sentadas, las que lo van a sorprender, y las que no le mueven la aguja.
2. **Limitar el alcance del MVP** al mínimo necesario para provocar un cambio de comportamiento en los Early Adopters. Cada funcionalidad extra es más tiempo, más dinero y más riesgo de no lanzar nunca.

---

## Input obligatorio

La priorización no se hace en el aire. Dos inputs obligatorios:

- **`<STARTUP_BASE>/stages/03-discovery/consolidado.md`** — contiene la matriz de oportunidades con:
  - Criterios de contratación → funcionalidades de Rendimiento
  - Criterios de despido → funcionalidades Imprescindibles
  - Trade-offs → funcionalidades Atractivas
- **`<STARTUP_BASE>/stages/04-solution/customer-journey-map.md`** — contiene las tareas y beneficios del CJM Futuro (de qué funcionalidades estamos hablando)

Sin ambos inputs, no hay base suficiente para clasificar. Cualquier funcionalidad sin respaldo en la evidencia no debería entrar al MVP.

---

## Los 5 tipos de funcionalidades del Modelo Kano

### 1. Imprescindibles (Must-Be)

El cliente las **da por sentadas**. Su ausencia provoca frustración y descarte inmediato. Su presencia no genera satisfacción extra — es simplemente "lo mínimo esperado."

Son las más difíciles de identificar porque los usuarios rara vez las mencionan en entrevistas. Nadie dice "quiero que el auto tenga frenos" — pero si no los tiene, no lo compran.

**Origen:** los **criterios de despido** — las razones por las que los clientes descartan una alternativa actual.

**Regla:** si un imprescindible no está, el MVP fracasa. No importa cuántas ideas buenas tenga.

---

### 2. Rendimiento (Performance)

Relación lineal positiva con satisfacción: **más inversión = más satisfacción**. Son el campo de batalla de la competencia.

Para provocar un cambio de comportamiento, no alcanza con ser levemente mejor. Se necesita ser **3x–10x mejor** que las alternativas en al menos una dimensión de rendimiento.

**Origen:** los **criterios de contratación** — lo que los clientes valoran y por lo que eligen una solución sobre otra.

---

### 3. Atractivas (WOW / Delighters)

Los clientes no las anticipan, no las piden, y no las extrañan si no están. Pero cuando aparecen bien ejecutadas, generan felicidad fuera de escala y disparan recomendaciones.

Son el arma más poderosa de una startup porque las alternativas establecidas no las tienen. Son únicas por definición.

Advertencia: las atractivas se deprecian con el tiempo. Lo que hoy genera WOW, mañana es rendimiento y pasado mañana es imprescindible.

**Origen:** los **trade-offs** — los deseos insatisfechos que ninguna alternativa actual resuelve bien.

**Regla del MVP:** incluir UNA sola, bien elegida. El MVP sin ninguna atractiva no tiene diferenciación real.

---

### 4. Indiferentes

Sin impacto en satisfacción en ninguna dirección. Desarrollarlas es desperdiciar recursos. **Excluir del MVP sin excepción.**

---

### 5. Inversas

Más de estas funcionalidades genera más insatisfacción. **Excluir del MVP sin excepción.**

---

## El puente entre la Matriz de Oportunidades y Kano

| Matriz de Oportunidades | Tipo Kano | Lógica |
|---|---|---|
| **Trade-offs** (deseos que ninguna alternativa resuelve) | → Atractivas | Son la propuesta de valor única — el cliente no las espera, pero las va a valorar |
| **Criterios de contratación** (qué valoran al elegir) | → Rendimiento | Existente en alternativas, pero se puede hacer 3x–10x mejor |
| **Criterios de despido** (por qué descartan alternativas) | → Imprescindibles | Si se omiten, el MVP queda descartado antes de probarse |

Si una funcionalidad no puede mapearse a ninguno de estos tres orígenes, es señal fuerte de que no tiene evidencia suficiente para entrar al MVP.

---

## Los 3 pasos de la priorización

---

### Paso 1 — Clasificación Kano de funcionalidades

**Fuentes de funcionalidades candidatas:**
- Las oportunidades clave del consolidado
- Las tareas del CJM Futuro
- La matriz de oportunidades (criterios de contratación, despido y trade-offs)

**Para cada funcionalidad, documentar:**

| Columna | Contenido |
|---|---|
| **Funcionalidad** | Formulada clara y específica |
| **Tipo Kano** | Atractiva / Rendimiento / Imprescindible / Indiferente / Inversa |
| **Origen en matriz** | Trade-off / Contratación / Despido / Sin evidencia |
| **Evidencia** | Citas textuales de entrevistas cuando existan. Si no hay, declarar supuesto. |
| **Decisión MVP** | Entra / No entra / V2 |

**Reglas de clasificación:**
- **Atractiva:** basada en trade-offs, no existe en alternativas actuales, genera efecto WOW. Máximo 1–2 en el MVP.
- **Rendimiento:** basada en criterios de contratación, existe en alternativas pero se puede hacer 3x–10x mejor. Máximo 1–2 en el MVP.
- **Imprescindible:** basada en criterios de despido, su ausencia causa descarte inmediato. Incluir las necesarias.
- **Indiferente / Inversa:** sin evidencia de impacto positivo. Excluir siempre.

Si el founder propone funcionalidades sin evidencia en la matriz, clasificarlas como "Sin evidencia — no recomendada para MVP" y señalarlo. No se agregan funcionalidades "porque suenan bien."

---

### Paso 2 — Definición del MVP

Con la clasificación aprobada, definir el conjunto concreto de funcionalidades.

**Estructura del MVP:**

**Funcionalidades Atractivas (propuesta de valor única):**
Las 1–2 funcionalidades que sorprenden, que ninguna alternativa tiene, basadas en trade-offs reales. Sin al menos una atractiva, el MVP no tiene diferenciación real.

**Funcionalidades de Rendimiento (ejes de mejora):**
Las 1–2 funcionalidades donde la solución puede ser 3x–10x mejor que las alternativas. Definir el objetivo de mejora en términos medibles (ej: "de 2 horas a 10 minutos", "de 5 pasos a 1").

**Funcionalidades Imprescindibles (condiciones de entrada):**
Las funcionalidades sin las cuales el cliente descarta la solución antes de probarla. Para estas, apalancarse en soluciones existentes en vez de construir desde cero.

**Excluidas del MVP (para versiones posteriores):**
Todo lo que es indiferente, inverso, o sin evidencia suficiente. Registrar por qué se posterga.

**Verificaciones al cerrar el Paso 2:**
- ¿El MVP tiene máximo 5–7 funcionalidades? Si tiene más, reducir.
- ¿Hay al menos 1 funcionalidad atractiva? Si no hay ninguna, el MVP no tiene diferenciación.
- ¿Falta alguna imprescindible que causaría descarte inmediato?
- ¿Alguna funcionalidad atractiva es demasiado costosa de implementar con los recursos disponibles?

---

### Paso 3 — Soluciones existentes para imprescindibles

Para cada funcionalidad imprescindible del MVP, buscar soluciones existentes que el founder pueda apalancar en vez de construir desde cero.

**Para cada solución, documentar:**
- La funcionalidad que cubre
- La solución o herramienta (API, librería, servicio, plataforma no-code)
- El tipo de integración (API / librería open source / SaaS / no-code / Zapier)
- El costo estimado (free tier, precio mensual, precio por uso)
- La ventaja clave que justifica elegirla

**Al cerrar el Paso 3, estimar el esfuerzo total del MVP:**
- ¿Cuántas funcionalidades hay que construir desde cero?
- ¿Cuántas se pueden apalancar con soluciones existentes?
- Si el founder no tiene equipo técnico, priorizar soluciones no-code/low-code siempre que sean viables.

---

## Reglas del MVP — no negociables

1. **Máximo 5–7 funcionalidades en el MVP total.** Si el founder quiere meter más: "¿Esta funcionalidad es realmente necesaria para provocar el cambio, o puede esperar a V2?"
2. **Al menos 1 funcionalidad atractiva.** Sin ella, el MVP es una réplica mediocre de lo que ya existe.
3. **Cada funcionalidad debe tener evidencia.** Si no hay evidencia en la matriz o en el CJM, no entra.
4. **La conexión Kano ↔ Matriz es obligatoria.** Trade-offs → atractivas. Contratación → rendimiento. Despido → imprescindibles.
5. **Para imprescindibles, apalancarse en soluciones existentes.** No reinventar la rueda en lo que el cliente simplemente da por sentado.
6. **Excluir indiferentes e inversas siempre**, sin importar cuánto le guste la idea al founder.

---

## Errores típicos

- **Priorizar por intuición / gusto personal** en vez de por impacto en satisfacción
- **Confundir "más features" con "más valor"** — los imprescindibles no se valoran explícitamente
- **No incluir ningún atractivo en el MVP** — "un MVP no lo necesita" es falso
- **Incluir muchos atractivos al mismo tiempo** — pierde foco
- **Tratar los "me gustaría que…" como lista de features** en lugar de señales de deseo
- **Saltar imprescindibles** porque "son obvios" — y el MVP falla por lo obvio
- **Agregar funcionalidades** porque "suena bien" o porque el founder las quiere
- **Clasificar algo como atractivo solo porque es innovador** — tiene que estar basado en un trade-off real

---

## Conexión con otras herramientas

**Inputs que alimentan la Priorización Kano:**
- `<STARTUP_BASE>/stages/03-discovery/consolidado.md` (obligatorio): matriz de oportunidades
- `<STARTUP_BASE>/stages/04-solution/customer-journey-map.md` (obligatorio): tareas y beneficios del CJM Futuro
- Lean Canvas (útil): contexto del modelo de negocio

**Output que genera la Priorización Kano:**
- `<STARTUP_BASE>/stages/04-solution/priorizacion-kano.md` → input directo para la Propuesta de Valor (A11)
  - Atractivas → diferenciadores
  - Rendimiento → beneficios cuantificables
  - Imprescindibles → condiciones base

---

*Founder OS — Etapa 4: Definición de la Solución | A10*
