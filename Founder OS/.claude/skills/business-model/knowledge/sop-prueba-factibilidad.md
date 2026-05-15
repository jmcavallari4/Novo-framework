# SOP — Cómo hacer una Prueba de Factibilidad
**Novolabs | Etapa 1 — Diseño del Modelo de Negocios**

---

## ¿Para qué sirve la Prueba de Factibilidad?

La Prueba de Factibilidad es la tercera verificación del modelo de negocio, después de la Deseabilidad y la Viabilidad. La lógica del orden importa:

- **Deseable:** ¿el cliente realmente quiere esto?
- **Viable:** ¿el mercado es suficientemente grande para el modelo?
- **Factible:** ¿se puede implementar con los recursos, el equipo y el contexto actuales?

Una idea puede ser deseable y viable en papel pero completamente imposible de ejecutar — por falta de capacidad técnica, por costos que exceden el runway, por barreras legales, o por la incapacidad de llegar al cliente con los canales disponibles.

La Prueba de Factibilidad responde una sola pregunta: **¿podés ejecutar esto?** No en abstracto — en el horizonte concreto de los próximos 3 a 6 meses.

---

## Input necesario

**Obligatorio:**
- **Lean Canvas:** provee la estructura de costos (factibilidad financiera), los canales (factibilidad comercial), la solución (factibilidad técnica) y las actividades clave (factibilidad operativa).
- **Prueba de Viabilidad:** provee el CME, el ARPA, el arquetipo de cliente y los clientes necesarios al año 3. Son los inputs directos para construir el roadmap de tracción.

Sin ambos, no se puede hacer la prueba. La factibilidad se evalúa después de la deseabilidad y la viabilidad — hacerla antes es construir sobre hipótesis no verificadas.

Si solo se tiene el Lean Canvas pero no la Prueba de Viabilidad, se puede pedir CME y ARPA directamente al emprendedor, pero señalar que debería completar la Prueba de Viabilidad completa antes de avanzar.

---

## El concepto central: Roadmap de Tracción (no de producto)

Los roadmaps de producto tradicionales asumen que se sabe qué construir en los próximos meses. En etapas tempranas, eso es falso. Por eso se usa el **roadmap de tracción**: orientado a resultados (outcomes) y no a producción (outputs).

**El objetivo principal de progreso de una startup es la tracción. O yendo más al grano: las ventas.**

El roadmap de tracción modela cuántos clientes y cuánta facturación se necesita en cada hito del camino hacia el Criterio Mínimo de Éxito, siguiendo la curva natural de adopción de una nueva idea.

---

## La curva de adopción: el palo de hockey

La participación de mercado de una nueva idea sigue una **curva en S** (teoría de difusión de las innovaciones). La primera mitad de esta curva tiene forma de palo de hockey:

- **Sección plana (primeros 6–12 meses):** pocos clientes, crecimiento lento. Este es el momento de descubrir, aprender y validar — no de escalar.
- **Punto de inflexión (12–24 meses):** la curva empieza a acelerarse. Ya hay aprendizaje suficiente para crecer.
- **Sección empinada (24–36 meses):** crecimiento acelerado hacia el CME.

Entender esta curva es crítico para no frustrarse con la sección plana ni intentar saltearla.

---

## La trampa de la optimización prematura

El principio más importante de la prueba de factibilidad es también el que más se viola:

> **Querer ir rápido no te hace ir más rápido. Es una forma de perderse más rápido.**

Ejemplos de optimización prematura:
- Intentar optimizar un producto para miles de usuarios antes de tener los primeros 10 clientes.
- Contratar un VP de Ventas antes de tener un cliente.
- Levantar inversión antes de demostrar tracción.
- Automatizar procesos antes de validar que el proceso manual funciona.
- Construir el producto completo antes de venderlo.

La mentalidad correcta: **la acción correcta en el tiempo correcto**. En cualquier momento dado, hay solo unas pocas acciones clave que tienen el mayor impacto. El trabajo es concentrarse en esas e ignorar el resto.

Si el emprendedor habla de escalar, automatizar, contratar equipo grande o levantar inversión antes de tener tracción, frenarlo y redirigirlo al horizonte AHORA.

---

## La tasa de crecimiento: cómo modelar la curva

Para proyectar el roadmap, se elige una tasa de crecimiento anual que representa qué tan rápido puede escalar el modelo:

| Tasa | Perfil del modelo | Implicancia |
|---|---|---|
| **3x** | Servicios con ticket alto, modelos menos escalables. | Requiere más clientes desde el arranque para llegar al CME. |
| **5x** | Punto medio. Ticket medio, modelos mixtos. | Balance entre volumen inicial y velocidad de escala. |
| **10x** | Software/SaaS con ticket bajo-medio. Modelos más escalables. | Pocos clientes al principio (más tiempo para aprender), luego aceleración fuerte. **Recomendada para la mayoría de startups tech.** |

**Contradicción aparente que vale la pena explicar:** una tasa de crecimiento *mayor* (10x) requiere *menos* clientes en los primeros meses que una tasa *menor* (3x). Con 10x, la sección plana inicial es más larga — y eso es positivo porque da más tiempo para descubrir antes de escalar.

---

## Paso 1 — Confirmar CME y ARPA

Extraer de la Prueba de Viabilidad los cuatro datos base:
- CME (ARR objetivo a 3 años).
- ARPA (ingreso anual promedio por cliente).
- Arquetipo de cliente.
- Clientes necesarios al año 3 (CME ÷ ARPA).

Si el emprendedor ajustó algún número desde la Prueba de Viabilidad, actualizarlo antes de avanzar. Los cálculos del roadmap dependen de estos datos.

---

## Paso 2 — Elegir tasa de crecimiento

El emprendedor elige la tasa según el perfil de su modelo (ver tabla arriba). Si la elección no es coherente con el modelo, señalarlo:
- Un SaaS de $20/mes con tasa 3x probablemente está subestimando su potencial de escala.
- Un servicio de consultoría de $25.000/año con tasa 10x probablemente está siendo demasiado optimista.

---

## Paso 3 — Proyección de tracción mes a mes

Con CME, ARPA y tasa de crecimiento, calcular la tabla de tracción.

**Fórmula:**
> ARR_mes = ARR_final ÷ (1 + tasa_mensual)^(36 − mes)
>
> Donde tasa_mensual = (1 + tasa_anual)^(1/12) − 1

**Para cada mes calculado:**
- **Clientes acumulados** = ARR del mes ÷ ARPA
- **Facturación mensual** = ARR del mes ÷ 12

Calcular para los meses: 3, 6, 9, 12, 18, 24, 36. Siempre verificar que el mes 36 dé exactamente el CME y la cantidad de clientes esperada.

**Mostrar la matemática paso a paso** para al menos un mes de ejemplo. El emprendedor tiene que poder seguir el razonamiento y modificar los inputs.

Si los números del mes 3 dan menos de 1 cliente, señalar que la startup está en fase de descubrimiento puro y que el objetivo no es cerrar clientes de pago completo todavía — sino conseguir los primeros compromisos tangibles.

---

## Paso 4 — Roadmap Ahora–Siguiente–Más Tarde

Usando la tabla del Paso 3, definir los tres horizontes del plan. El nivel de concreción va decreciendo del primero al tercero — y eso está bien.

**AHORA (0–6 meses) → Problem/Solution Fit**
- Objetivo de tracción: clientes proyectados al mes 3–6.
- Facturación mensual esperada.
- Foco: descubrir, validar, conseguir los primeros compromisos tangibles.
- Proceso clave: **Demo-Build-Sell** — vender antes de construir. No se necesita el producto terminado para conseguir los primeros compromisos. Se necesita lo mínimo para demostrar que el dolor es real y que la solución tiene sentido.
- Al final de esta etapa: comprensión clara de las necesidades del cliente, conocimiento de lo más pequeño que hay que construir (MVP), y compromisos tangibles (pagos por adelantado, cartas de intención, algo que demuestre que el dolor es real).
- **Este es el horizonte más concreto y el único que se evalúa en profundidad.**

**SIGUIENTE (6–12 meses) → Hito intermedio hacia PMF**
- Objetivo de tracción: clientes proyectados al mes 12.
- Facturación mensual esperada.
- Foco: iterar producto basándose en el aprendizaje del AHORA, empezar a sistematizar la adquisición.
- Menos concreto que el AHORA — es normal, porque depende de lo que se aprenda en los primeros 6 meses.

**MÁS TARDE (12–36 meses) → PMF → CME**
- Objetivo de tracción: clientes proyectados al mes 24 y 36.
- Foco: escalar canales, optimizar operaciones, crecer hacia el CME.
- El más difuso de los tres — y eso también es normal. Lo importante es la dirección, no los detalles.

---

## Paso 5 — Evaluación de factibilidad por dimensión

Con el roadmap definido, evaluar si el emprendimiento puede ejecutar el horizonte AHORA en las 5 dimensiones. Ir de a 1–2 dimensiones por vez, no las 5 juntas.

---

**Dimensión 1: Factibilidad Técnica**

¿Qué tecnología es necesaria para el horizonte AHORA? ¿El equipo puede construirla? ¿O necesita contratar o subcontratar?

Para el AHORA, recordar que el proceso es Demo-Build-Sell. No se necesita construir el producto completo — se necesita lo mínimo para validar y conseguir compromisos tangibles.

Preguntas clave:
- ¿Hay desafíos técnicos significativos o la tecnología necesaria es estándar?
- ¿El equipo fundador tiene las capacidades requeridas?
- ¿Qué necesitaría contratar o subcontratar, y a qué costo?

---

**Dimensión 2: Factibilidad Operativa**

¿Cuáles son las actividades clave del negocio día a día para operar con los primeros clientes? ¿El equipo puede manejarlas?

Preguntas clave:
- ¿Qué hay que hacer todos los días para que el servicio funcione?
- ¿Hay actividades que requieren habilidades que el equipo no tiene?
- ¿Las operaciones son manejables en escala pequeña (10 clientes), o hay complejidad operativa desde el día 1?

---

**Dimensión 3: Factibilidad Financiera**

¿Tiene el emprendimiento el runway necesario para llegar al primer hito del AHORA?

Conectar la estructura de costos del Lean Canvas con la facturación proyectada de la tabla de tracción:
- ¿Cuánto cuesta operar por mes?
- ¿Cuándo empieza a entrar ingresos suficientes para cubrir esos costos?
- ¿Hay gap entre los costos y los ingresos proyectados? ¿Cuántos meses de runway hacen falta para cubrirlo?
- ¿Se necesita financiamiento externo para llegar al primer hito, o se puede bootstrapear?

Calcular el **punto de equilibrio**: ¿en qué mes los ingresos cubren los costos operativos?

---

**Dimensión 4: Factibilidad Legal**

¿Hay barreras regulatorias o legales que puedan frenar la operación?

No todos los modelos tienen riesgo legal alto. Un SaaS B2B estándar tiene riesgo legal bajo — señalarlo y avanzar rápido. Un modelo que maneja datos de salud, opera en el sector financiero, mueve dinero entre partes, o requiere licencias especiales tiene riesgo legal alto — profundizar.

Preguntas clave:
- ¿Hay regulaciones específicas del sector que aplican?
- ¿Se necesitan licencias o permisos para operar?
- ¿Hay implicancias legales en la geografía objetivo que puedan ser bloqueantes?

---

**Dimensión 5: Factibilidad Comercial**

¿Puede el emprendedor llegar al cliente y adquirirlo de forma costo-efectiva con los canales actuales?

Conectar directamente con los canales del Lean Canvas y los datos de la Prueba de Viabilidad.

Preguntas clave:
- ¿Los canales definidos en el Lean Canvas dan acceso directo al Early Adopter del perfil correcto?
- ¿Cuánto costaría adquirir cada cliente (CAC estimado)?
- ¿El CAC es menor al LTV (valor de vida del cliente)?
- ¿Hay una estrategia de GTM clara para el arquetipo de cliente definido?

---

## Veredicto de factibilidad

**Por dimensión:**
- ✅ **Factible:** sin obstáculos significativos.
- ⚠️ **Factible con ajustes:** hay riesgos manejables que requieren acción.
- ❌ **No factible:** hay obstáculos críticos que resolver antes de avanzar.

**Veredicto general:**
- ✅ **FACTIBLE:** todas las dimensiones son verdes o amarillas sin bloqueos críticos. Avanzar.
- ⚠️ **FACTIBLE CON CONDICIONES:** hay 1–2 dimensiones amarillas que requieren acción antes de escalar. Se puede avanzar mientras se resuelven.
- ❌ **NO FACTIBLE COMO ESTÁ:** hay 1+ dimensiones rojas. Resolver antes de invertir más tiempo y recursos.

---

## Plan de acción para el AHORA

3–5 acciones concretas priorizadas para los próximos 3–6 meses, enfocadas en llegar a Problem/Solution Fit.

Cada acción debe:
- Estar conectada con una hipótesis riesgosa del modelo.
- Contribuir directamente a conseguir los primeros clientes objetivo.
- Seguir la lógica Demo-Build-Sell: vender antes de construir, aprender antes de escalar.

Si alguna acción suena a "escalar", "automatizar", "contratar equipo grande" o "levantar inversión" — señalarlo como prematuro para esta etapa.

---

## Hipótesis más riesgosas

Identificar las hipótesis críticas priorizadas por impacto × incertidumbre:

- **Hipótesis técnica:** ¿podemos construir lo mínimo necesario con los recursos actuales?
- **Hipótesis comercial:** ¿podemos adquirir clientes con los canales definidos al CAC estimado?
- **Hipótesis financiera:** ¿tenemos runway suficiente para llegar al primer hito?

Formularlas como falsables:
- **Formato XYZ:** "Al menos X% de Y harán Z."
- **Formato Real Startup:** "Si [cambio], [métrica] [impacto] en [plazo]."

---

## Señales de pivote a monitorear

- No se pueden resolver los desafíos técnicos con el equipo actual.
- Los costos superan significativamente los recursos disponibles.
- Existen barreras legales insuperables en la geografía objetivo.
- No se logran compromisos tangibles de clientes en los primeros 6 meses.

Si aparece cualquiera de estas señales, no ignorarlas ni minimizarlas. Son indicadores de que algo estructural necesita cambiar — en el equipo, el modelo de costos, la geografía, o la idea misma.

---

## Qué sí y qué no

### Sí

- Mostrar la matemática del roadmap paso a paso. El emprendedor tiene que poder seguir la lógica y modificar los inputs para explorar escenarios.
- Enfocarse en el horizonte AHORA para las dimensiones de factibilidad. Los horizontes SIGUIENTE y MÁS TARDE son naturalmente más difusos.
- Señalar activamente la optimización prematura cuando aparece — antes de que el emprendedor invierta en algo que todavía no tiene base.
- Reconocer cuándo una dimensión es de bajo riesgo para el modelo específico (ej: legal para SaaS estándar) y avanzar rápido en lugar de profundizar por igual en todo.
- Ser honesto cuando el modelo no es factible. La misión es cuidar el tiempo y los recursos del emprendedor.
- Conectar el plan de acción con el proceso Demo-Build-Sell: conseguir compromisos tangibles antes de construir.

### No

- Hacer la Prueba de Factibilidad sin el Lean Canvas y la Prueba de Viabilidad. La factibilidad se evalúa sobre un modelo que ya pasó los filtros de deseabilidad y viabilidad.
- Evaluar las 5 dimensiones en un solo intercambio. Ir de a una o dos por vez.
- Confundir el plan del AHORA con un plan de escala. El AHORA es Problem/Solution Fit — pocos clientes, mucho aprendizaje.
- Plantear el roadmap como objetivos fijos inmutables. Son proyecciones basadas en supuestos — cambian con la realidad.
- Permitir que el plan de acción del AHORA incluya acciones prematuras (automatización, contratación de equipo grande, levantamiento de inversión) sin señalarlo explícitamente.
- Suavizar un veredicto negativo. Si algo no es factible, decirlo claro y proponer el camino de resolución.

---

## Conexión con otras herramientas

**Inputs que alimentan la Prueba de Factibilidad:**
- **Lean Canvas** (obligatorio): estructura de costos → factibilidad financiera; canales → factibilidad comercial; solución → factibilidad técnica.
- **Prueba de Viabilidad** (obligatorio): CME, ARPA, arquetipo, clientes necesarios → base del roadmap de tracción.
- **Prueba de Deseabilidad** (útil si existe): enriquece la evaluación de factibilidad comercial con las fuerzas de inercia y fricción identificadas.

**Output que genera la Prueba de Factibilidad:**
- **Entrevistas de Descubrimiento:** si el modelo es factible, el siguiente paso son entrevistas para validar Customer/Problem Fit — o directamente el proceso Demo-Build-Sell si ya hay evidencia suficiente.
- **Lean Canvas actualizado:** si hay dimensiones no factibles que requieren ajustes en costos, canales o solución, volver al canvas para iterar antes de avanzar.

---

*Novolabs — Etapa 1: Diseño del Modelo de Negocios*
