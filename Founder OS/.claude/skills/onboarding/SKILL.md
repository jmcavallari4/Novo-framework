# Skill: onboarding — v2

## Qué es esta skill

Inicializa un nuevo startup en el sistema Founder OS. Crea `<STARTUP_BASE>/startup-context.md` y `<STARTUP_BASE>/.founder-os/state.yaml` a partir de una entrevista estructurada con el usuario.

---

## Trigger

Esta skill se activa cuando:
1. El usuario invoca `/onboarding`
2. El sistema detecta que `<STARTUP_BASE>/startup-context.md` no existe o está vacío
3. El hook `on-session-start` imprime el mensaje de bienvenida y el usuario dice "empecemos"

---

## Archivos que esta skill lee

- `.claude/skills/onboarding/templates/startup-context.template.md` — estructura del contexto del startup
- `.claude/skills/onboarding/templates/state.template.yaml` — schema completo de progreso A01–A19
- `.claude/skills/onboarding/knowledge/sop-onboarding-v2.md` — criterios de calidad para segmento, dolor y casos especiales
- `startups/.active` — startup activo (para modo detección)
- `<STARTUP_BASE>/.founder-os/state.yaml` — verificar si ya existe (para evitar sobreescribir)

---

## Paso 0 — Modo detección (NUEVO en v2)

**Antes de hacer cualquier pregunta**, ejecutar esta lógica:

1. Leer `startups/.active`.
2. Si el archivo **no existe o está vacío**: el sistema no tiene startup activo. Ir al Paso 2 (flujo de creación normal).
3. Si existe y tiene contenido:
   - Leer `startups/<nombre>/.founder-os/state.yaml`
   - Obtener el nombre del startup y la etapa activa
   - Mostrar al usuario:

```
Encontré el startup "[nombre]" en etapa [X] — [nombre de etapa].
¿Querés continuar con ese o crear uno nuevo?

(1) Continuar con [nombre]
(2) Crear un startup nuevo
```

   - Si el usuario elige **continuar**: invocar `/status` y salir del onboarding
   - Si el usuario elige **crear uno nuevo**: ir al Paso 1 del flujo de creación

---

## Paso 1 — Determinar el path base del startup

1. Leer `startups/.active`.
2. Si existe y no está vacío: el startup activo ya fue creado por `/new-startup`. El path base es `startups/<contenido de .active>/`. Usar este path para todos los archivos que esta skill crea.
3. Si no existe o está vacío: el sistema está en modo legado (carpeta raíz como startup). Avisar al usuario que la estructura multi-startup no está inicializada y sugerir `/new-startup`.

---

## Paso 2 — Entrevista estructurada

Hacer las siguientes preguntas de forma conversacional, una o dos a la vez. No mostrar todas juntas como formulario.

**Bloque A — Identidad del startup:**

1. ¿Cuál es el nombre de tu startup o proyecto? (puede ser provisional)
2. En una sola oración: ¿qué problema resuelve?

**Bloque B — Mercado:**

3. ¿Quién sufre ese problema? Describe al cliente ideal: quién es, qué hace, qué le frustra.
4. ¿Por qué ese segmento específico? ¿Qué sabes de ellos que otros no saben?

**Bloque C — Segmento específico (NUEVO en v2):**

5. ¿Quién es el cliente más específico que podés imaginar para este problema? No "emprendedores" — sino algo como "fundadores de SaaS B2B en Latam de 25–35 años que están intentando conseguir sus primeros 10 clientes". Cuanto más preciso, mejor.

   → Aplicar los criterios de `.claude/skills/onboarding/knowledge/sop-onboarding-v2.md` para evaluar si la respuesta es suficientemente específica. Si es vaga, ayudar al fundador a precisar antes de continuar.

6. ¿Cuál es el mayor dolor de ese cliente hoy, expresado en sus propias palabras? (no cómo lo describirías vos, sino cómo lo diría alguien que lo está viviendo)

   → Si el fundador lo expresa en términos técnicos o abstractos, aplicar el SOP de reformulación del knowledge.

**Bloque D — Solución:**

7. ¿Qué solución tienes en mente? (aunque sea hipotética o vaga — no necesita ser definitiva)
8. ¿Qué te hace creer que esa solución funciona? ¿Qué evidencia, intuición o experiencia te respalda?

**Bloque E — Estado actual:**

9. ¿En qué etapa estás hoy? Elige la más honesta:
   - (a) Solo tengo la idea, nada más
   - (b) Ya hablé con algunos potenciales clientes
   - (c) Tengo un prototipo o algo funcionando
   - (d) Ya tengo clientes o ventas

   → Si el usuario elige (b), (c) o (d): aplicar el caso especial del SOP (fundador con evidencia previa).

10. ¿Cuánto tiempo podés dedicarle a este proyecto por semana? (horas aproximadas)

11. ¿Hay algo más que quieras que el sistema recuerde sobre tu startup? (contexto de industria, restricciones, socios, etc.)

---

## Paso 3 — Sección de expectativas (NUEVO en v2)

Antes de mostrar el resumen de confirmación, explicar al fundador qué puede esperar del sistema:

```
Antes de empezar, tres cosas importantes:

1. Este sistema te guía a través del método — las respuestas tienen que venir de vos.
   No hay atajos: el valor está en el proceso de pensar, no en el output final.

2. Cada etapa requiere trabajo real fuera del chat: hablar con clientes,
   experimentar, iterar. El sistema organiza y da sentido a ese trabajo.

3. El progreso se guarda automáticamente. Podés retomar en cualquier momento
   exactamente donde lo dejaste. No pierdas el contexto — el sistema lo guarda por vos.

¿Listo para empezar?
```

---

## Paso 4 — Confirmar antes de escribir

Antes de crear los archivos, mostrar un resumen en este formato:

```
Nombre: [nombre]
Problema: [problema en 1 oración]
Segmento: [quién sufre el problema]
Cliente específico: [descripción precisa del cliente]
Dolor en sus palabras: [cómo lo diría el cliente]
Hipótesis de solución: [solución propuesta]
Dedicación semanal: [horas]
Etapa actual: [etapa elegida]
Contexto adicional: [si lo hubo]
```

Preguntar: "¿Está bien esto o quieres ajustar algo?"

Esperar confirmación antes de continuar.

---

## Paso 5 — Crear <STARTUP_BASE>/startup-context.md

Usar el template `.claude/skills/onboarding/templates/startup-context.template.md` y rellenarlo con las respuestas del usuario.

Guardar en: `<STARTUP_BASE>/startup-context.md`

---

## Paso 6 — Crear state.yaml

Usar el template `.claude/skills/onboarding/templates/state.template.yaml`.

Reemplazar:
- `{{STARTUP_NAME}}` → nombre del startup ingresado por el usuario
- `{{CREATED_AT}}` → timestamp actual en formato ISO 8601 (YYYY-MM-DDTHH:MM:SSZ)

Guardar en: `<STARTUP_BASE>/.founder-os/state.yaml`

Si ya existe ese archivo, no sobreescribirlo. Avisar al usuario y detener.

---

## Paso 7 — Confirmación final

Imprimir este mensaje:

```
✓ startup-context.md creado en startups/[nombre]/
✓ .founder-os/state.yaml inicializado

El sistema está listo para [nombre del startup].

Próximo paso: /mindset — trabaja los marcos mentales del SVP™ antes de entrar al método.
O si preferís ir directo al modelo de negocio: /business-model
```

---

## Lo que esta skill NO hace

- No actualiza `state.yaml` al completar agentes (eso lo hacen las otras skills)
- No genera ningún análisis ni output de negocio
- No corre SOPs del método SVP™
- No sobreescribe archivos existentes sin confirmación explícita

---

## Criterio de done

La skill está completa cuando:
1. `<STARTUP_BASE>/startup-context.md` existe con contenido real (incluyendo los 3 campos nuevos: cliente específico, dolor en palabras del cliente, dedicación semanal)
2. `<STARTUP_BASE>/.founder-os/state.yaml` existe con `startup.name` no vacío y todos los agentes en `status: pending`
3. El hook `on-session-start.sh` puede leer el `state.yaml` y mostrar el contexto correctamente
4. Si existía un startup previo, el onboarding lo detectó y preguntó antes de sobreescribir
