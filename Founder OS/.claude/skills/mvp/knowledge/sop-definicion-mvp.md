# SOP — Definición del MVP
**Novolabs | Etapa 7 — Construcción del MVP**

---

## Qué es este archivo

La referencia metodológica completa para guiar al fundador a través de la definición técnica del MVP. Contiene la filosofía del MVP según el SVP™, los 4 tipos canónicos, la matriz de decisión, los 7 pasos del proceso y los 5 entregables.

Este SOP es el complemento del SKILL.md — el SKILL.md define el flujo de conversación, este SOP define la profundidad metodológica.

---

## La filosofía del MVP en el SVP™

### Marco canónico: MDVFP (Ash Maurya)

El programa adopta el MDVFP como definición operativa:

- **M** — Mínimo (el conjunto de características más pequeño)
- **D** — Deseable (que los clientes quieren)
- **V** — Viable (que hace que el modelo de negocio funcione)
- **F** — Factible (que puedas construir en tiempo prudente: 1–3 meses)
- **P** — Producto (empaquetado como versión 1.0, no como beta)

> "Un MDVFP es la solución más pequeña que logra crear, entregar y capturar valor monetizable de tus clientes."

### Los otros 3 marcos (contexto)

| Marco | Autor | Énfasis | Relación con MDVFP |
|---|---|---|---|
| **MVP** (Minimum Viable Product) | Eric Ries | Aprendizaje validado con el menor esfuerzo | Base conceptual |
| **MLP** (Minimum Lovable Product) | Jin Zhang | No solo viable — tiene que encantar | Agrega la dimensión UX |
| **SLC** (Simple, Lovable, Complete) | Jason Cohen | Simple y completo, nunca vergonzante | Refuerza la "P" de MDVFP |

La frase de Reid Hoffman ("si no te avergonzó, lanzaste tarde") **no es el marco del programa**. Se cita pero no se adopta.

### El triple test del MVP

A diferencia de experimentos previos (que validaban una dimensión), el MVP valida tres simultáneamente:

1. **Deseabilidad** — ¿La gente quiere y usa el producto?
2. **Factibilidad** — ¿Podemos construirlo con los recursos disponibles en 1–3 meses?
3. **Viabilidad** — ¿Los usuarios pagan y los podemos retener?

### Qué NO es un MVP

| Cosa | Por qué no es MVP |
|---|---|
| Una landing page | Solo promete valor, no lo entrega |
| Un prototipo en Figma | No es funcional, la gente no lo puede usar en un escenario real |
| Una campaña de crowdfunding | Es experimento de validación de demanda |
| Un video de demostración | Prueba interés, no entrega valor |
| Una "beta" fea y rápida | Los clientes de hoy tienen muchas opciones — no quieren ser conejillos de indias |

> Distinción canónica: experimento ≠ oferta ≠ MVP. Un MVP es la solución más pequeña que **crea, entrega y captura valor monetizable**. Hoy, no mañana.

---

## Los 4 tipos de MVP

### Tipo 1 — Concierge MVP

**Esencia:** el fundador ES el producto. Hace manualmente lo que el software haría. El usuario recibe el valor prometido con personas, no máquinas. Se usan herramientas existentes (WhatsApp, email, Sheets, Notion, Calendly) como infraestructura.

**Ejemplo Novolabs:** servicio de nutrición personalizada donde el nutricionista arma los planes en una planilla y los manda por WhatsApp, en vez de construir una app con algoritmo.

**Pros:**
- Costo prácticamente cero.
- Máximo aprendizaje — contacto directo con el usuario.
- Iteración instantánea: cambiar el "producto" es cambiar un proceso, no reescribir código.
- Ideal para validar si la propuesta de valor funciona antes de invertir en tecnología.

**Contras:**
- No escala — el fundador se convierte en cuello de botella.
- El usuario puede sospechar que es manual → puede sesgar la percepción.
- No genera datos de uso automatizados.
- Agotamiento del fundador si se extiende demasiado.

**Cuándo:** servicios, consultoría, formación — cualquier producto donde el valor es conocimiento o acción personalizada.
**Presupuesto:** $0–$100. **Tiempo de setup:** 1–3 días.
**Pregunta que valida:** "¿Mi solución funciona?" (no "¿Mi producto funciona?")

---

### Tipo 2 — Mago de Oz MVP

**Esencia:** el usuario interactúa con lo que parece un producto automatizado, pero detrás hay una persona haciendo el trabajo manualmente. El usuario NO sabe que hay una persona detrás. Se construye un frontend (landing, app, chatbot) que se ve como un producto real.

**Ejemplo Novolabs:** chatbot de asesoría legal donde el usuario escribe su consulta en un formulario web, pero las respuestas las escribe un abogado detrás, no una IA.

**Pros:**
- Valida la experiencia del producto sin construir el motor real.
- El usuario percibe un producto real → feedback más auténtico.
- Más barato que construir el backend completo.

**Contras:**
- Requiere construir al menos el frontend — más esfuerzo que Concierge.
- El fundador sigue siendo cuello de botella operativo.
- No valida la factibilidad técnica del producto real.

**Cuándo:** productos donde la experiencia de usuario es lo que se quiere validar, pero el backend es demasiado complejo o costoso de construir ahora.
**Presupuesto:** $50–$500. **Tiempo:** 1–2 semanas.
**Pregunta que valida:** "¿La experiencia del producto funciona?"

---

### Tipo 3 — Single Feature MVP

**Esencia:** se construye UNA SOLA funcionalidad clave del producto completo. La feature que genera el mayor valor — normalmente la must-have principal del Kano. El usuario usa un producto funcional pero limitado a una sola capacidad central.

**Ejemplo Novolabs:** app de gestión de proyectos que SOLO tiene tablero Kanban. Sin chat, sin reportes, sin calendario, sin integraciones. Solo el tablero.

**Ejemplo canónico del programa:** Instagram (2010) — se lanzó como app para compartir fotos con ubicación. No tenía nada de lo que conocemos hoy. Recibió miles de usuarios inmediatamente.

**Pros:**
- Máxima profundidad en la feature principal.
- Producto real, funcional, desplegable.
- Genera datos de uso reales.

**Contras:**
- Requiere desarrollo real — código, deploy, infraestructura.
- Si la feature elegida es la incorrecta, se pierde tiempo.
- El usuario puede frustrarse por la falta de features complementarias.

**Cuándo:** SaaS, apps, herramientas donde hay UNA funcionalidad que define el producto.
**Presupuesto:** $200–$2.000. **Tiempo:** 2–4 semanas.
**Pregunta que valida:** "¿La funcionalidad central resuelve el problema?"

---

### Tipo 4 — Piecemeal MVP

**Esencia:** construir el producto ensamblando herramientas y servicios existentes — no-code, integraciones, APIs. Sin escribir código (o muy poco). El usuario interactúa con un producto funcional construido sobre infraestructura de terceros.

**Ejemplo Novolabs:** plataforma de cursos online construida con Notion (contenido) + Stripe (pagos) + Mailchimp (emails) + Zapier (automatización) + Softr (portal).

**Ejemplo canónico del programa:** Groupon — empezó como un blog en Wordpress que ofrecía el "cupón del día". Les permitió validar el modelo de negocio antes de construir tecnología compleja.

**Pros:**
- Muy rápido — días, no semanas.
- Costo bajo a medio (suscripciones de herramientas).
- Producto funcional end-to-end — el usuario completa el journey completo.

**Contras:**
- Dependencia de terceros — si una herramienta falla, el MVP se rompe.
- Experiencia del usuario puede ser "rústica".
- Difícil de escalar o personalizar más allá de lo que las herramientas permiten.

**Cuándo:** marketplaces, plataformas, servicios con flujo multi-paso, formación/educación.
**Presupuesto:** $50–$500/mes. **Tiempo:** 1–2 semanas.
**Pregunta que valida:** "¿El flujo completo del negocio funciona?"

---

### Matriz de decisión

| Criterio | Concierge | Mago de Oz | Single Feature | Piecemeal |
|---|---|---|---|---|
| ¿Qué valida? | Propuesta de valor | Experiencia/UX | Feature central | Flujo completo |
| Costo | $0–$100 | $50–$500 | $200–$2.000 | $50–$500/mes |
| Tiempo de setup | 1–3 días | 1–2 semanas | 2–4 semanas | 1–2 semanas |
| Requiere código | No | Poco (frontend) | Sí | No/Poco |
| Escalabilidad | Nula | Baja | Media-Alta | Baja-Media |
| Perfil del fundador | Cualquiera | Básico técnico | Técnico o builder | Básico técnico |

---

## Los 7 pasos de la Definición del MVP

### Paso 1 — Elegir el tipo de MVP

Analizar el caso específico y recomendar el tipo más adecuado considerando:
- La naturaleza del producto (servicio, SaaS, marketplace, app, plataforma).
- El perfil técnico del fundador (¿puede construir o necesita no-code?).
- El presupuesto y tiempo disponibles.
- La hipótesis principal a validar.
- La cantidad y tipo de features must-have del Kano.
- El Customer Journey — ¿cuántos pasos tiene? ¿se puede simplificar?

Para cada tipo generar: "Si eligieras [tipo], tu MVP se vería así: [descripción concreta del startup]."

Si el fundador elige Concierge o Mago de Oz: los pasos siguientes se adaptan — menos enfoque en stack y data model, más en proceso operativo y herramientas.

---

### Paso 2 — Scope Cutting (alcance del MVP)

**Features IN:**
- Todas las must-have del Kano entran siempre. Sin ellas, el producto no tiene razón de existir.
- Implementar de la forma más simple posible — sin pulir, sin edge cases.
- Máximo 2–3 features performance si el impacto en satisfacción del usuario lo justifica.

**Features OUT:**
- Features performance descartadas → V2.
- Features delight → V2. Excepción: si es trivial de implementar (menos de 2 horas) y genera efecto "wow" desproporcionado.
- Features indiferentes → nunca.
- Features inversas → nunca.

**Triple test de validación del scope — aplicar a cada feature IN:**
1. **Test de coherencia:** ¿las features IN son suficientes para que el usuario complete el JTBD principal?
2. **Test de minimalidad:** ¿se puede eliminar alguna feature IN sin romper la propuesta de valor?
3. **Test de hipótesis:** ¿las features IN permiten validar la hipótesis del experimento (A13)?

Si alguna feature IN no pasa los 3 tests, eliminarla. Para cualquier feature que el fundador quiera agregar: "¿Esto valida tu hipótesis? Si no, V2."

---

### Paso 3 — User Flow

Convertir el Customer Journey Map en un flujo concreto de pantallas o pasos.

**Formato del flujo principal:**
```
[1] Landing → El usuario ve la propuesta de valor → Hace clic en "Empezar" → Va a [2]
[2] Registro → Completa nombre + email → Confirma → Va a [3]
[3] Dashboard → Ve sus datos → Realiza [acción principal] → Va a [4]
...
```

Para cada paso: número, nombre de la pantalla, qué ve el usuario, qué acción realiza, a dónde va después.

**Flujos secundarios** (si aplican): registro/login, onboarding primera vez, error handling, flujo de pago.

**Inventario de pantallas:** lista de todas las pantallas únicas con nombre, propósito, elementos principales y acciones disponibles.

**Regla crítica:** máximo 5–7 pantallas. Si tiene más, simplificar antes de avanzar. El over-engineering en el flujo es tan peligroso como el over-engineering en el código.

Para Concierge o Mago de Oz: el "flujo" es un proceso operativo — qué hace el fundador, con qué herramientas, en qué secuencia.

---

### Paso 4 — Data Model

Solo para Single Feature o Piecemeal que requieran base de datos.

**Para cada entidad:**
```
USUARIO
- id: UUID (PK)
- email: string (requerido, único)
- nombre: string (requerido)
- creado_en: timestamp

PROYECTO
- id: UUID (PK)
- usuario_id: UUID (FK → USUARIO)
- nombre: string (requerido)
- estado: enum [activo, archivado]
- creado_en: timestamp

Relaciones: USUARIO 1:N PROYECTO
```

También definir reglas de negocio: validaciones, reglas de acceso, estados y transiciones.

**Regla crítica:** solo modelar las entidades necesarias para el MVP. No modelar el futuro. No agregar entidades "por si acaso." La BD es lo más costoso de cambiar después.

Para Concierge o Mago de Oz: documentar herramientas y procesos operativos — qué herramienta cumple cada función, qué datos se guardan dónde, cómo se conectan.

---

### Paso 5 — Stack tecnológico

**Si usa v0 (perfil no técnico):**
Stack fijo: Next.js + Tailwind CSS + shadcn/ui + Supabase (Postgres) + Vercel. No dar opciones — v0 funciona mejor con su stack por defecto.

**Si usa Claude Code (perfil técnico):**
Adaptar al stack que el fundador conozca. Opciones comunes:
- Next.js + Supabase + Vercel
- React + Node/Express + PostgreSQL + Railway o Render
- Python (Django/FastAPI) + PostgreSQL + Railway

Elegir el stack que el fundador conozca o que sea más rápido de implementar.

**Si es Concierge o Mago de Oz:**
Listar herramientas no-code necesarias. Para cada herramienta: función + alternativas + costo.

**Regla anti-over-engineering — aplicar siempre:**
- Monolito > microservicios.
- SQL > NoSQL para la mayoría de los casos.
- Auth simple (email/password) > OAuth complejo.
- Deploy manual > CI/CD sofisticado.
- Sin feature flags, A/B testing, GraphQL, Kubernetes ni arquitecturas distribuidas.

#### Herramientas no-code recomendadas por el programa

| Herramienta | Para qué | Costo aprox. |
|---|---|---|
| **Bubble** | Apps web complejas, SaaS, marketplaces, CRMs | Desde $29/mes (gratis disponible) |
| **FlutterFlow** | Apps móviles multiplataforma (iOS + Android) y web | Desde $30/mes (gratis disponible) |
| **Softr** | Apps web para principiantes/no técnicos | Desde $49/mes (gratis disponible) |
| **Adalo** | PWAs y apps web/móviles nativas | Desde $36/mes (versión gratis generosa) |

---

### Paso 6 — Criterios de aceptación

Para cada feature IN, definir criterios en formato BDD (Behavior-Driven Development):

*"Dado [contexto/precondición], cuando [acción del usuario], entonces [resultado esperado]."*

Para cada feature incluir:
- **Happy path:** el flujo normal que funciona.
- **1–2 edge cases críticos:** qué pasa si falla, si no hay datos, si el input es inválido.
- **Criterios de UI/UX mínimos:** mensajes de error, estados vacíos, loading states.

**No incluir para MVP:**
- Performance benchmarks.
- Tests de carga.
- Edge cases exóticos ("qué pasa si el usuario tiene 10.000 proyectos").

---

### Paso 7 — Specs de implementación

Descomponer todo en specs de 1–4 horas cada una.

**Cada spec tiene:**
- **ID:** `SPEC-001`, `SPEC-002`, etc.
- **Nombre:** título corto y descriptivo.
- **Objetivo:** qué se logra cuando esta spec se completa.
- **Dependencias:** qué specs deben completarse antes (por ID).
- **Scope:** qué incluye y qué NO incluye esta spec.
- **Criterios de aceptación:** los del Paso 6 que aplican a esta spec.
- **Notas técnicas:** data model involucrado, endpoints, integraciones, decisiones relevantes.
- **Estimación:** tiempo aproximado (1–4 horas).

**Regla crítica:** si una spec toma más de 4 horas, dividirla.

**Presentar como tabla de roadmap:**

| ID | Nombre | Dependencias | Estimación | Estado |
|---|---|---|---|---|
| SPEC-001 | Setup del proyecto | — | 1h | Por hacer |
| SPEC-002 | Schema de BD | SPEC-001 | 2h | Por hacer |
| ... | ... | ... | ... | ... |

**Orden de implementación estándar:**
1. SPEC-001 — Setup del proyecto + configuración inicial.
2. SPEC-002 — Data model / schema de base de datos.
3. SPEC-003 — Autenticación (versión mínima, si aplica).
4. SPEC-004 a SPEC-N — Features en orden de prioridad (must-have primero).
5. SPEC-N+1 — Deployment + QA básico.

---

## Los 5 entregables del proceso

Al completar los 7 pasos, el proceso genera 5 documentos que van en `<STARTUP_BASE>/stages/07-mvp/definicion-mvp.md`:

**1. PRD (Product Requirements Document):**
- Visión y contexto del startup.
- Tipo de MVP elegido y justificación.
- Alcance: features IN y features OUT.
- Supuestos críticos.
- Hipótesis a validar.
- Métrica de éxito principal.

**2. User Flow:**
- Flujo principal paso a paso.
- Flujos secundarios (si aplican).
- Inventario de pantallas con propósito y acciones.

**3. Data Model:**
- Entidades, atributos, relaciones y reglas de negocio.
- Para Concierge/Mago de Oz: herramientas y procesos operativos.

**4. Stack y Criterios de Aceptación:**
- Stack tecnológico elegido con justificación por pieza.
- Criterios de aceptación en formato BDD para cada feature.

**5. Specs de Implementación:**
- Tabla de roadmap.
- Cada spec detallada con ID, nombre, objetivo, dependencias, scope, criterios, notas técnicas y estimación.

---

## Story Mapping y MoSCoW (contexto ampliado)

El Paso 2 (Scope Cutting) se enriquece con la metodología de Story Mapping del programa:

**Los 3 niveles del Story Mapping:**
| Nivel | Qué es |
|---|---|
| **Épicas** | Categorías de alto nivel que engloban funcionalidades (ej: "Autenticación") |
| **Funcionalidades** | Acciones de alto nivel del usuario (ej: "Ingresar a mi cuenta") |
| **Historias de usuario** | "Como usuario quiero [tarea] para poder [objetivo]" |

**MoSCoW conectado al Kano:**
- Must-Be del Kano = Must have del MoSCoW → entran al MVP.
- Performance del Kano → Should have o Could have según impacto.
- WOW (Delight) del Kano → Could have o Won't have en el MVP.

---

## Qué sí y qué no

### Sí
- Aplicar el triple test (coherencia, minimalidad, hipótesis) a cada feature antes de confirmar que entra.
- Máximo 2–3 features performance en el MVP.
- User flow de máximo 5–7 pantallas. Si tiene más, simplificar.
- Specs de 1–4 horas cada una. Si toman más, dividirlas.
- Modelar solo las entidades necesarias para el MVP.
- Stack simple y conocido por el fundador.
- Para cualquier feature que el fundador quiera agregar: "¿Esto valida tu hipótesis? Si no, V2."

### No
- Features delight en el MVP (salvo triviales).
- Features indiferentes o inversas — nunca.
- User flows de más de 7 pantallas sin justificación fuerte.
- Specs de más de 4 horas — siempre dividir.
- Modelar entidades futuras en el data model.
- Microservicios, Kubernetes, GraphQL, arquitecturas distribuidas.
- Auth complejo (OAuth, SSO, 2FA, roles y permisos) en el primer MVP.
- CI/CD sofisticado, feature flags, A/B testing.

---

## Errores frecuentes del fundador en esta etapa

1. Confundir MVP con landing, prototipo Figma, crowdfunding o video demo.
2. Tomar literalmente a Reid Hoffman y lanzar algo "vergonzoso". El programa adopta MDVFP/SLC, no la versión beta-vergonzante.
3. Saltarse el triple test — validar solo deseabilidad sin viabilidad o factibilidad.
4. Elegir Single Feature sin tener idea clara de cuál es la funcionalidad principal.
5. Priorizar todo como Must-have — el MoSCoW pierde sentido.
6. Diseñar la base de datos solo para el MVP sin pensar en evolución futura.
7. Buscar perfección en testing y no lanzar nunca.
8. No diferenciar bugs críticos de bugs menores.
9. Persistir cuando hay que pivotar ("ya invertí mucho").
10. Pivotar al primer "no" sin agotar las iteraciones razonables.

---

## Conexión con otras etapas

| Etapa | Qué aporta al MVP |
|---|---|
| **Etapa 2 — Lean Canvas** | Actualizar antes de definir el experimento. El Traction Roadmap define métricas para pivotar o perseverar. |
| **Etapa 3 — Discovery** | Los Early Adopters identificados allá son los primeros usuarios del MVP. |
| **Etapa 4 — Solution** | CJM → input directo del User Flow. Must-Be del Kano → Must-have del MoSCoW. La PV define qué tiene que cumplir el MVP. |
| **Etapa 5 — Offer** | La oferta validada define exactamente qué tiene que hacer el MVP. Los límites y garantías definidos en la oferta se implementan en el producto. |
| **Etapa 6 — Demand** | Los compromisos de cartas de intención y preventas definen el alcance. La hipótesis del experimento (A13) define qué tiene que validar el MVP. |

> Si las etapas anteriores se hicieron bien, el MVP debería ser **directamente derivable**: el problema dice qué resolver, la solución dice cómo, la oferta dice qué prometés, la validación dice que la gente paga. El MVP es la materialización honesta de todo eso.

---

## Frases centrales del programa

> "Construir algo pequeño, llevarlo al mercado rápido, pivotar o seguir."

> "Un MVP es la solución más pequeña que crea, entrega y captura valor monetizable." *(MDVFP, Ash Maurya)*

> "Tu landing no es un MVP. Tu Figma no es un MVP. Tu video tampoco."

> "El cliente no paga por el esfuerzo realizado, sino por la solución que atienda sus necesidades."

> "Estimá un poco por demás. Siempre vamos a pecar de optimistas."

> "Bugs van a existir siempre. No busques la perfección."

> "La visión se mantiene constante. La estrategia se cambia. El producto es solo manifestación."

> "Lo peor no es el fracaso. Son los falsos positivos."

> "Tus primeros clientes no son clientes. Son co-creadores."

---

*Novolabs — Etapa 7: Construcción del MVP | SOP v1.0*
