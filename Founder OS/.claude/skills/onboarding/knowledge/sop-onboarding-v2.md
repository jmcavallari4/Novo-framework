# SOP: Onboarding v2 — Criterios de calidad y casos especiales

Este documento complementa el SKILL.md del onboarding. Define criterios para evaluar respuestas del fundador y guiar la conversación cuando las respuestas son insuficientes o cuando el contexto del fundador lo justifica.

---

## 1. Criterios para evaluar la especificidad del segmento

Una descripción de segmento es **suficientemente específica** si cumple al menos 3 de estos 5 criterios:

| Criterio | Ejemplo insuficiente | Ejemplo suficiente |
|---|---|---|
| Industria o dominio | "negocios" | "SaaS B2B" |
| Rol o función | "personas" | "fundadores / CTOs / gerentes de marketing" |
| Geografía o contexto cultural | — | "en Latam" / "en mercados hispanohablantes" |
| Rango de tamaño o etapa | "empresas" | "startups con 1–10 empleados" / "en etapa pre-seed" |
| Problema o comportamiento específico | "que tienen problemas" | "que están intentando conseguir sus primeros 10 clientes pagos" |

**Si la respuesta tiene 0–2 criterios**, el segmento es demasiado vago. Ayudar al fundador a precisar con esta técnica:

> "Pensá en la persona exacta que más se beneficiaría de lo que querés construir. ¿Dónde trabaja? ¿Qué título tiene? ¿Qué está intentando lograr esta semana?"

Si el fundador resiste la especificidad diciendo "es para todos" o "puede ser cualquiera", explicar brevemente:

> "Cuanto más amplio el segmento, más difícil es hablar con ellos, entenderlos y convencerlos. Empezar específico no cierra puertas — abre el camino correcto."

No bloquear al fundador. Si insiste en un segmento vago, registrarlo tal cual y continuar.

---

## 2. Cómo reformular el dolor si está en términos técnicos

El campo "dolor en palabras del cliente" tiene que sonar como algo que el cliente diría en una conversación, no como un análisis de negocio.

**Señales de que la respuesta está mal formulada:**

- Usa jerga técnica del fundador: "ineficiencias operativas", "fricción en el funnel", "falta de alineación estratégica"
- Habla en tercera persona o como analista: "los clientes experimentan dificultades con..."
- Es demasiado abstracto: "no tienen visibilidad del proceso"

**Cómo ayudar a reformularlo:**

Preguntar: "¿Cómo lo diría ese cliente si se lo estuviera contando a un amigo en un bar? ¿Qué frase usaría?"

Ejemplos de reformulación:
- "Falta de visibilidad del pipeline" → "No sé cuánto voy a vender el mes que viene y eso me da ansiedad"
- "Fricción en el proceso de onboarding" → "Mis clientes se registran y después desaparecen — nunca sé por qué se van"
- "Ineficiencias en la gestión de inventario" → "Siempre me quedo sin stock de lo que más vende o me sobra lo que nadie quiere"

Si el fundador no puede articularlo en palabras del cliente, es una señal valiosa: aún no habló suficientemente con ellos. Registrar la mejor aproximación disponible y agregar una nota en el `startup-context.md`:

> *Nota: el dolor aún está formulado desde la perspectiva del fundador. Priorizar entrevistas de discovery para obtener el lenguaje real del cliente.*

---

## 3. Caso especial: fundador con evidencia previa

Si el fundador elige la opción (b), (c) o (d) en la pregunta de etapa actual (ya habló con clientes, tiene prototipo, o tiene ventas), adaptar el flujo:

**Si eligió (b) — ya habló con clientes:**
- Agregar pregunta: "¿Tenés notas o transcripciones de esas conversaciones? Si sí, podemos analizarlas directamente con `/discovery` después del onboarding — te ahorrás el paso de hacer el guión desde cero."
- Registrar en `startup-context.md` en "Contexto adicional": "Tiene entrevistas previas. Sugerir `/discovery` con transcripciones al llegar a A06."

**Si eligió (c) — tiene prototipo:**
- Agregar pregunta: "¿Alguien lo usó? ¿Qué feedback recibiste?"
- Registrar el feedback en "Contexto adicional".
- Agregar nota: "Tiene prototipo. En `/solution` revisar si las decisiones de diseño reflejan el problema real."

**Si eligió (d) — ya tiene clientes o ventas:**
- Agregar pregunta: "¿Qué te dicen los clientes que más valoran? ¿Y qué te dicen que falta?"
- Registrar ambas en "Contexto adicional".
- Agregar nota: "Tiene clientes. El sistema puede avanzar más rápido — validar si hay CPF real antes de construir más."

En todos estos casos, el onboarding no saltea etapas — el state.yaml se inicializa igual. Pero el contexto adicional permite que las skills posteriores adapten sus preguntas a la evidencia existente.

---

## 4. Evaluación de dedicación semanal

La respuesta a "¿cuántas horas por semana?" informa el ritmo esperado del sistema. No afecta el método, pero permite que las skills sean más realistas con los compromisos que sugieren.

| Dedicación | Señal | Qué ajustar |
|---|---|---|
| < 3 horas/semana | Startup secundario o muy temprano | Priorizar las etapas de mayor impacto; no presionar con timelines cortos |
| 3–10 horas/semana | Dedicación parcial razonable | Ritmo estándar del método |
| > 10 horas/semana | Founder comprometido o full-time | Ritmo acelerado posible; combinar etapas cuando tenga sentido |

Si el fundador dice "no sé" o "depende", registrar "variable" y no insistir.
