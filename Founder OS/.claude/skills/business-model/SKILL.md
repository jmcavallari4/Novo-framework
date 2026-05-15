# Skill: business-model

## Qué es esta skill

Guía al founder por los 5 agentes de la Etapa 2 del SVP™ — Modelo de Negocios. Cubre la construcción del Lean Canvas (A01), la Prueba de Deseabilidad (A02), la Prueba de Viabilidad (A03), la Prueba de Factibilidad (A04) y la generación de pitches para las audiencias clave (A05).

Esta skill lee `state.yaml` y activa el modo correcto según el progreso. No requiere que el founder recuerde en qué quedó — el sistema lo detecta.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/business-model`
2. El sistema detecta `active_stage: 2` en `state.yaml`
3. El usuario termina `/mindset` y elige continuar con el modelo de negocios

---

## Archivos que esta skill lee

Siempre:
- `<STARTUP_BASE>/startup-context.md` — para personalizar todo al contexto del startup
- `<STARTUP_BASE>/.founder-os/state.yaml` — para detectar el modo correcto

Por modo:
- `knowledge/sop-lean-canvas.md` — Modo A01
- `knowledge/sop-prueba-deseabilidad.md` — Modo A02
- `knowledge/sop-prueba-viabilidad.md` — Modo A03
- `knowledge/sop-prueba-factibilidad.md` — Modo A04
- `knowledge/sop-generador-pitch.md` — Modo A05

---

## Lógica de modos

Al invocar `/business-model`, leer `state.yaml` y determinar el modo activo:

```
A01_lean_canvas.status = pending
  → Activar Modo A01: Lean Canvas

A01_lean_canvas.status = completed
A02_deseabilidad.status = pending
A03_viabilidad.status = pending
A04_factibilidad.status = pending
  → Activar Modo Pruebas: preguntar cuál prueba hacer (ver abajo)

A01 completed + A02–A04 todos completed
A05_pitch.status = pending
  → Activar Modo A05: Generador de Pitch

A01–A05 todos completed
  → Modo iteración: ofrecer revisar o profundizar en algún agente
```

**Si `active_stage < 2` en state.yaml:** avisar que esta etapa requiere haber completado Mindset (`/mindset`) primero. Si el founder quiere continuar igual, respetarlo.

---

## MODO A01 — Lean Canvas

### Cuándo se activa
`A01_lean_canvas.status = pending`

### Qué hace
Guía la construcción del Lean Canvas de 11 bloques siguiendo el SOP completo. El canvas se construye un bloque por vez en conversación — nunca pedir dos bloques al mismo tiempo.

### Paso a paso

**Paso 1 — Presentación**
Leer `sop-lean-canvas.md`. Presentar al founder el propósito del canvas en 2–3 líneas. Aclarar que todo lo que escriben en esta etapa son supuestos a validar, no certezas. Objetivo: terminar la primera versión en 30 minutos.

**Paso 2 — Construir los 11 bloques en orden**

Trabajar en este orden exacto (el orden importa — cada bloque se apoya en los anteriores):

1. Segmento de clientes (+ JTBD por segmento)
2. Early Adopters
3. Alternativas existentes
4. Problemas (derivados de las limitaciones de las alternativas)
5. Solución
6. Propuesta de valor (pre-headline, headline, sub-headline)
7. Canales
8. Fuentes de ingreso
9. Estructura de costos
10. Métricas clave
11. Ventaja injusta

Para cada bloque:
- Explicar qué se busca en 2–3 líneas (usando el SOP como guía)
- Hacer la pregunta al founder
- Esperar respuesta
- Si la respuesta es vaga o genérica, pedir que la refine antes de avanzar (ver criterios de calidad en el SOP)
- Confirmar y pasar al siguiente bloque

**Reglas de calidad del JTBD (Bloque 1):**
- Debe tener formato: "Cuando [contexto], quiero [trabajo], para [resultado deseado]."
- Si es vago o genérico, señalarlo y ayudar a reformularlo antes de continuar. Un JTBD débil contamina todos los bloques siguientes.

**Regla de las alternativas (Bloque 3):**
- Completar este bloque siempre antes de definir los Problemas (Bloque 4).
- Los problemas se derivan de las limitaciones de las alternativas — no se inventan.

**Paso 3 — Análisis post-completado**

Después de los 11 bloques, ejecutar los 3 análisis del SOP:

1. **Variantes:** ¿el canvas intenta abarcar múltiples segmentos muy distintos? Proponer dividir en variantes si aplica.
2. **Hipótesis más riesgosa:** identificar el supuesto que, si resulta falso, destruye el modelo. Formular como hipótesis falsable (formato XYZ o Real Startup).
3. **Mini-pitch:** generar el one-liner: "Ayudamos a [cliente] a [trabajo] para lograr [resultado deseado] con [propuesta de valor única]."

**Paso 4 — Generar output**

Crear `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v1.md`:

```markdown
# Lean Canvas — [Nombre del Startup]

Versión: 1
Fecha: [fecha actual]
Estado: hipótesis (no validado)

---

## Bloque 1 — Segmento de clientes
[Segmentos identificados, con distinción cliente/usuario si aplica, y nichos concretos]

### JTBD por segmento
[Job statement completo para cada segmento relevante]

## Bloque 2 — Early Adopters
[Perfil concreto del subgrupo con mayor urgencia hoy]

## Bloque 3 — Alternativas existentes
[Qué usa el Early Adopter hoy para resolver su JTBD]

## Bloque 4 — Problemas
[Los 3 problemas principales derivados de las limitaciones de las alternativas, con nivel de consciencia y frecuencia]

## Bloque 5 — Solución
[Funcionalidades mapeadas a cada problema: Problema 1 → Solución 1, etc.]

## Bloque 6 — Propuesta de valor
**Pre-headline:** [opcional]
**Headline:** [resultado deseado, no features]
**Sub-headline:** [amplía el headline, conecta con el Early Adopter]

## Bloque 7 — Canales
[Antes / Durante / Después — Inbound / Outbound]

## Bloque 8 — Fuentes de ingreso
[Modelo de monetización + precio + justificación]

## Bloque 9 — Estructura de costos
[Fijos, variables, únicos, recurrentes. Punto de equilibrio estimado.]

## Bloque 10 — Métricas clave
[Leading indicators + marco AARRR aplicado al modelo]

## Bloque 11 — Ventaja injusta
[Qué tiene el founder que no se puede copiar ni comprar]

---

## Análisis post-completado

### Variantes identificadas
[Si hay variantes, listarlas. Si el canvas es coherente y enfocado, indicarlo.]

### Hipótesis más riesgosa
[Supuesto crítico formulado como hipótesis falsable]

### Mini-pitch
"Ayudamos a [cliente] a [trabajo] para lograr [resultado deseado] con [propuesta de valor única]."
```

**Paso 5 — Gate de calidad (A01)**

Antes de actualizar `state.yaml`, verificar las condiciones mínimas del output generado. Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo completo.

**Condición mínima:** 7 de los 11 bloques del lean canvas deben tener contenido real. Un bloque con placeholder (`[completar]`, `[descripción]`, texto genérico sin datos del startup) cuenta como vacío.

Bloques a verificar: Segmento + JTBD, Early Adopters, Alternativas, Problemas, Solución, Propuesta de Valor, Canales, Fuentes de Ingreso, Estructura de Costos, Métricas Clave, Ventaja Injusta.

Si el gate falla: mostrar qué bloques están incompletos y preguntar si continuar o marcar `in_progress`.

**Paso 6 — Actualizar state.yaml**

```yaml
active_stage: 2
agents:
  A01_lean_canvas:
    status: completed
    output: "<STARTUP_BASE>/stages/02-business-model/lean-canvas-v1.md"
    current_version: 1
next_action: "Lean Canvas completo. Siguiente paso: elige una prueba en /business-model (Deseabilidad, Viabilidad o Factibilidad)."
```

**Paso 6 — Confirmación final**

Imprimir:
- Los 3 supuestos más importantes del canvas
- La hipótesis más riesgosa identificada
- Próximo paso recomendado: volver a `/business-model` para las pruebas

---

## MODO PRUEBAS — A02, A03, A04

### Cuándo se activa
`A01_lean_canvas.status = completed` y al menos una de A02, A03, A04 está `pending`.

### Presentación del menú

Mostrar el estado actual de las pruebas y ofrecer el menú:

```
El Lean Canvas está completo. ¿Qué prueba querés hacer?

(1) Prueba de Deseabilidad (A02) — Canvas de Fuerzas: ¿tu Early Adopter realmente quiere esto?
(2) Prueba de Viabilidad (A03) — Tamaño de mercado: ¿el modelo tiene escala suficiente?
(3) Prueba de Factibilidad (A04) — Roadmap de tracción: ¿podés ejecutar esto con lo que tenés?

[Mostrar cuáles ya están completadas con ✅]
```

**Orden recomendado:** Deseabilidad → Viabilidad → Factibilidad. Pero si el founder elige otro orden, respetar.

---

### SUB-MODO A02 — Prueba de Deseabilidad

**Leer:** `knowledge/sop-prueba-deseabilidad.md`

**Input requerido:** `lean-canvas-v1.md` (o la versión más reciente). Si no existe, activar Modo A01 primero.

**Qué hace:** Construye el Canvas de Fuerzas del Cliente (9 pasos) para mapear las 4 fuerzas que compiten en la decisión de compra del Early Adopter.

**Paso a paso:**

1. Extraer del Lean Canvas: segmento, Early Adopter, JTBD, alternativas, problemas, propuesta de valor.
2. Presentar el framework de las 4 fuerzas (Empuje, Tire, Inercia, Fricción) en 3–4 líneas.
3. Construir los 9 pasos del canvas en orden, un paso por vez:
   - Paso 1: Evento desencadenante
   - Paso 2: Resultado deseado
   - Paso 3: Solución anterior
   - Paso 4: Inercia
   - Paso 5: Conjunto de consideración
   - Paso 6: Nueva solución (criterios de contratación y despido)
   - Paso 7: Fricción
   - Paso 8: Resultado final
   - Paso 9: ¿Qué sigue?
4. Análisis post-completado: clasificar como Analgésico o Vitamina + Checkpoint de 3 preguntas.
5. Identificar hipótesis más riesgosas del canvas de fuerzas.

**Output:** `<STARTUP_BASE>/stages/02-business-model/prueba-deseabilidad-v1.md`

```markdown
# Prueba de Deseabilidad — [Nombre del Startup]

Fecha: [fecha actual]
Segmento evaluado: [Early Adopter del Lean Canvas]

---

## Canvas de Fuerzas del Cliente

### Paso 1 — Evento desencadenante
[El momento específico que activa la urgencia de buscar solución]

### Paso 2 — Resultado deseado
[Cómo quiere verse/sentirse el cliente cuando el trabajo está hecho]

### Paso 3 — Solución anterior
[Qué usaba antes — alternativas del Lean Canvas]

### Paso 4 — Inercia
[Hábitos, costo de cambio, procrastinación]

### Paso 5 — Conjunto de consideración
[Criterios de selección del cliente + opciones que evalúa]

### Paso 6 — Nueva solución
**Criterios de contratación:** [por qué elegiría esta solución]
**Criterios de despido de alternativas:** [qué no funcionaba]

### Paso 7 — Fricción
[Preocupaciones y dudas sobre la nueva solución]

### Paso 8 — Resultado final
[Satisfacción = resultado real − resultado esperado]

### Paso 9 — ¿Qué sigue?
[Próximo trabajo del cliente después de este]

---

## Evaluación

**Clasificación:** Analgésico / Vitamina
**Justificación:** [por qué]

**Checkpoint de avance:**
- [ ] ¿Es un analgésico con evento desencadenante claro?
- [ ] ¿EMPUJE + TIRE > INERCIA + FRICCIÓN?
- [ ] ¿Los clientes están insatisfechos con las alternativas actuales?

**Señal de pivote:** [si aplica]

---

## Hipótesis más riesgosas
[2–3 hipótesis falsables del canvas de fuerzas]
```

**Actualizar state.yaml:**
```yaml
agents:
  A02_deseabilidad:
    status: completed
    output: "<STARTUP_BASE>/stages/02-business-model/prueba-deseabilidad-v1.md"
next_action: "Deseabilidad completa. Podés continuar con Viabilidad o Factibilidad en /business-model."
```

---

### SUB-MODO A03 — Prueba de Viabilidad

**Leer:** `knowledge/sop-prueba-viabilidad.md`

**Input requerido:** `lean-canvas-v1.md` (bloques Segmento, Fuentes de Ingreso y Canales son la materia prima).

**Qué hace:** Evalúa si el tamaño de mercado y el modelo de negocio cumplen el Criterio Mínimo de Éxito usando la regla 100x.

**Paso a paso:**

1. Extraer del Lean Canvas: segmento, modelo de ingreso, precio, canales.
2. **Paso 0:** confirmar geografía objetivo.
3. **Paso 1:** definir CME (Criterio Mínimo de Éxito en ARR a 3 años). Usar la tabla de niveles del SOP como guía.
4. **Paso 2:** identificar arquetipo de cliente y calcular ARPA. Mostrar la matemática.
5. **Paso 3:** calcular clientes necesarios (CME ÷ ARPA) y mercado mínimo requerido (× 100). Mostrar la matemática paso a paso.
6. **Paso 4:** buscar datos externos de tamaño del segmento, competencia, pricing y tendencias. Citar siempre la fuente.
7. **Veredicto:** ✅ Viable / ⚠️ Ajustable / ❌ No viable. Si no viable, proponer ajustes concretos y recalcular.

**Output:** `<STARTUP_BASE>/stages/02-business-model/prueba-viabilidad-v1.md`

```markdown
# Prueba de Viabilidad — [Nombre del Startup]

Fecha: [fecha actual]

---

## Datos base

| Elemento | Valor |
|---|---|
| Geografía objetivo | |
| CME (ARR a 3 años) | |
| ARPA | |
| Arquetipo de cliente | |
| Clientes necesarios | |
| Mercado mínimo requerido (100x) | |
| Mercado estimado (real) | |
| Ratio mercado / necesario | |
| **Veredicto** | ✅ / ⚠️ / ❌ |

---

## Datos externos consultados

[Fuentes, datos de mercado, competencia, tendencias — con fuente y fecha]

---

## Ajustes propuestos (si aplica)

[Si veredicto es ⚠️ o ❌: ajustes ordenados por impacto con recálculo]

---

## Hipótesis más riesgosas

[2–3 hipótesis falsables sobre tamaño de mercado, ARPA y conversión]
```

**Actualizar state.yaml:**
```yaml
agents:
  A03_viabilidad:
    status: completed
    output: "<STARTUP_BASE>/stages/02-business-model/prueba-viabilidad-v1.md"
next_action: "Viabilidad completa. Podés continuar con Deseabilidad o Factibilidad en /business-model."
```

---

### SUB-MODO A04 — Prueba de Factibilidad

**Leer:** `knowledge/sop-prueba-factibilidad.md`

**Input requerido:** `lean-canvas-v1.md` + idealmente `prueba-viabilidad-v1.md` para tener CME, ARPA y clientes necesarios. Si falta la Prueba de Viabilidad, solicitarlos directamente al founder.

**Qué hace:** Construye el roadmap de tracción y evalúa si el emprendimiento puede ejecutar el horizonte AHORA en 5 dimensiones.

**Paso a paso:**

1. Extraer (o pedir): CME, ARPA, arquetipo, clientes necesarios.
2. **Paso 2:** definir tasa de crecimiento (3x, 5x o 10x) con el founder.
3. **Paso 3:** calcular tabla de tracción mes a mes para los hitos 3, 6, 9, 12, 18, 24, 36. Mostrar fórmula y al menos un ejemplo de cálculo.
4. **Paso 4:** definir roadmap AHORA–SIGUIENTE–MÁS TARDE. El AHORA (0–6 meses) es el más concreto.
5. **Paso 5:** evaluar las 5 dimensiones de factibilidad de a 1–2 por vez:
   - Técnica: ¿puede construirse con el equipo actual?
   - Operativa: ¿las operaciones son manejables en escala pequeña?
   - Financiera: ¿hay runway hasta el primer hito?
   - Legal: ¿hay barreras regulatorias?
   - Comercial: ¿los canales permiten llegar al Early Adopter al CAC estimado?
6. **Veredicto:** ✅ Factible / ⚠️ Factible con condiciones / ❌ No factible como está.
7. Plan de acción AHORA: 3–5 acciones concretas orientadas a Problem/Solution Fit.

**Señal de alerta activa:** si el founder menciona escalar, contratar equipo grande, levantar inversión o automatizar antes de tener tracción, señalarlo como optimización prematura y redirigir al horizonte AHORA.

**Output:** `<STARTUP_BASE>/stages/02-business-model/prueba-factibilidad-v1.md`

```markdown
# Prueba de Factibilidad — [Nombre del Startup]

Fecha: [fecha actual]

---

## Datos base

- CME: [ARR objetivo]
- ARPA: [ingreso anual por cliente]
- Arquetipo: [nombre]
- Clientes necesarios (año 3): [número]
- Tasa de crecimiento elegida: [3x / 5x / 10x]

---

## Tabla de tracción

| Mes | ARR proyectado | Clientes acumulados | Facturación mensual |
|-----|---------------|---------------------|---------------------|
| 3   | | | |
| 6   | | | |
| 9   | | | |
| 12  | | | |
| 18  | | | |
| 24  | | | |
| 36  | | | |

---

## Roadmap AHORA–SIGUIENTE–MÁS TARDE

### AHORA (0–6 meses) — Problem/Solution Fit
**Objetivo:** [clientes y facturación proyectados al mes 6]
**Foco:** [descubrir, validar, conseguir compromisos tangibles]
**Proceso clave:** Demo-Build-Sell

### SIGUIENTE (6–12 meses)
**Objetivo:** [clientes y facturación al mes 12]

### MÁS TARDE (12–36 meses)
**Objetivo:** [clientes y facturación al mes 24 y 36]

---

## Evaluación de factibilidad

| Dimensión | Veredicto | Observaciones |
|-----------|-----------|---------------|
| Técnica | ✅ / ⚠️ / ❌ | |
| Operativa | ✅ / ⚠️ / ❌ | |
| Financiera | ✅ / ⚠️ / ❌ | |
| Legal | ✅ / ⚠️ / ❌ | |
| Comercial | ✅ / ⚠️ / ❌ | |

**Veredicto general:** ✅ / ⚠️ / ❌

---

## Plan de acción — AHORA

1. [Acción 1 — conectada a hipótesis riesgosa]
2. [Acción 2]
3. [Acción 3]

---

## Hipótesis más riesgosas

[Técnica, comercial y financiera — formuladas como falsables]
```

**Actualizar state.yaml:**
```yaml
agents:
  A04_factibilidad:
    status: completed
    output: "<STARTUP_BASE>/stages/02-business-model/prueba-factibilidad-v1.md"
next_action: "Factibilidad completa. Con las 3 pruebas listas, podés generar los pitches en /business-model."
```

---

## MODO A05 — Generador de Pitch

### Cuándo se activa
`A01 completed + A02–A04 todos completed + A05_pitch.status = pending`

También disponible si A01 está completo y el founder quiere generar pitches antes de completar las 3 pruebas (respetar si insiste, pero recomendar tener al menos Viabilidad completa para el Investor Pitch).

### Leer
`knowledge/sop-generador-pitch.md`

### Input requerido
`lean-canvas-v1.md` (obligatorio). Si existen, también leer `prueba-viabilidad-v1.md` y `prueba-factibilidad-v1.md` para enriquecer el Investor Pitch.

**Verificación de calidad del canvas:** antes de generar, revisar que los bloques clave (segmento, problemas, JTBD, propuesta de valor, alternativas) no sean vagos o genéricos. Si lo son, señalarlo y pedir que el founder los refine primero. Un pitch es tan bueno como el modelo que tiene detrás.

### Qué hace
Genera los 5 pitches personalizados al modelo del founder. Todos en la misma sesión, uno por vez.

### Los 5 pitches

**Pitch 1 — Mini Pitch:** "Ayudamos a [cliente] a [trabajo] para lograr [resultado deseado] con [propuesta de valor única]." Una sola oración, sin jerga.

**Pitch 2 — Elevator Pitch (30 seg):** Estructura de 3 actos — viaje del héroe. **No nombrar la solución.** Cerrar con pedido explícito.
- Acto I: "Cuando [clientes] encuentran un [desencadenante], necesitan hacer [trabajo] para lograr [resultado]."
- Acto II: "Normalmente usarían [alternativas], pero [cambio macro] hace que ya no funcionen porque [problemas]. Si no se resuelve, [consecuencias]."
- Acto III: "Por eso creamos algo que ayuda [a los clientes] a [resultado deseado] ayudándolos a [propuesta de valor]."

**Pitch 3 — Investor Pitch:** tamaño de oportunidad, modelo de ingresos, ventaja injusta, tracción actual, pedido concreto. Si no hay tracción real, señalarlo explícitamente — este pitch es prematuro sin clientes pagando.

**Pitch 4 — Tech Co-founder Pitch:** visión del producto, reto técnico concreto, potencial de impacto, oportunidad de co-creación, evidencia de problema real.

**Pitch 5 — Business Co-founder Pitch:** oportunidad de mercado, estrategia GTM, gap que el socio llenaría, alineación de valores, evidencia de interés del mercado.

**Verificación de consistencia:** antes de cerrar, confirmar que los 5 pitches son coherentes entre sí y con el Lean Canvas. Sin placeholders vacíos en ninguno.

### Output
Crear `<STARTUP_BASE>/stages/02-business-model/pitches-v1.md`:

```markdown
# Pitches — [Nombre del Startup]

Fecha: [fecha actual]
Basado en: Lean Canvas v[número] + Prueba de Viabilidad (si existe) + Prueba de Factibilidad (si existe)

---

## Pitch 1 — Mini Pitch

"[one-liner completo]"

---

## Pitch 2 — Elevator Pitch

**Acto I:**
[texto]

**Acto II:**
[texto]

**Acto III:**
[texto]

**Pedido:** [qué se le pide al interlocutor]

---

## Pitch 3 — Investor Pitch

**Oportunidad:** [tamaño de mercado — número, no descripción]
**Modelo:** [cómo se hace dinero + path a rentabilidad]
**Ventaja injusta:** [lo que no se puede copiar]
**Tracción actual:** [clientes, LOIs, entrevistas, waitlist — o advertencia si es prematuro]
**Pedido:** [qué se necesita del inversor]

---

## Pitch 4 — Tech Co-founder Pitch

[texto completo]

---

## Pitch 5 — Business Co-founder Pitch

[texto completo]

---

## Cuándo usar cada pitch

| Pitch | Cuándo SÍ | Cuándo NO |
|-------|-----------|-----------|
| Mini Pitch | Sesiones internas, bio LinkedIn, networking casual | Como único pitch en reunión seria |
| Elevator Pitch | Eventos, networking, conversaciones casuales | Con audiencias que ya conocen el modelo |
| Investor Pitch | Reuniones con inversores (con tracción) | Sin clientes pagando — es prematuro |
| Tech Co-founder | 1:1 con candidatos técnicos | Presentaciones grupales masivas |
| Business Co-founder | 1:1 con candidatos de negocio | Como primera comunicación sin contexto |
```

**Actualizar state.yaml:**
```yaml
agents:
  A05_pitch:
    status: completed
    output: "<STARTUP_BASE>/stages/02-business-model/pitches-v1.md"
active_stage: 3
next_action: "Modelo de Negocios completo (A01–A05). Siguiente etapa: /discovery para entrevistas de descubrimiento."
```

---

## MODO ITERACIÓN — Todo A01–A05 completo

Cuando todos los agentes están en `completed`, el sistema ofrece:

```
El Modelo de Negocios está completo. ¿Qué querés hacer?

(1) Actualizar el Lean Canvas (generar v2 si hay aprendizajes nuevos)
(2) Revisar o rehacer alguna prueba
(3) Ajustar los pitches
(4) Ver el resumen del modelo
(5) Avanzar a /discovery
```

**Regla de versiones:** si se genera una nueva versión de algún output, crear `lean-canvas-v2.md` (nunca sobreescribir la versión anterior) y actualizar el puntero en `state.yaml`.

---

## Lo que esta skill NO hace

- No inventa datos de mercado para la Prueba de Viabilidad — si no hay datos confiables, lo dice y sugiere cómo obtenerlos
- No suaviza veredictos negativos en las pruebas — ser directo es cuidar el tiempo del founder
- No menciona el nombre de la solución en el Elevator Pitch (regla sin excepciones)
- No genera pitches si el Lean Canvas tiene bloques clave vacíos o genéricos sin advertirlo primero
- No activa optimización prematura — si el founder habla de escalar antes de tener tracción, lo señala

---

## Gates de calidad

| Agente | Condición mínima |
|---|---|
| A01 Lean Canvas | 7 de 11 bloques con contenido real (sin placeholders) |

Los demás agentes de esta skill (A02–A05) no tienen gate de calidad propio — su criterio de done es la existencia del output completo según el formato definido en cada sub-modo.

Ver `.claude/skills/shared/sop-gate-calidad.md` para el protocolo genérico de ejecución.

---

## Criterio de done

La skill está completa (Etapa 2 cerrada) cuando:
1. `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v1.md` existe con los 11 bloques completos
2. Al menos una de las 3 pruebas está completada
3. `<STARTUP_BASE>/stages/02-business-model/pitches-v1.md` existe con los 5 pitches personalizados
4. `state.yaml` tiene `active_stage: 3` y A01–A05 en `completed`
5. El founder puede articular la hipótesis más riesgosa de su modelo
