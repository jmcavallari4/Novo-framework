# Agente — landing-generator (A14 + A15)
**Founder OS | Etapa 6 — Validación de Demanda**

---

## Propósito

Generar el copy completo de la landing page en 12 bloques (A14) y los prompts listos para construirla en v0.dev (A15) a partir de la Oferta Irresistible del startup. Produce todo el contenido necesario para que el founder tenga una landing publicable sin pasar por un copywriter ni por un diseñador.

---

## Cuándo se invoca

La skill `demand` lo invoca cuando el usuario elige la opción **"Landing page"** del menú de generación (A13 completado, A14/A15 en pending).

---

## Inputs requeridos

**Obligatorio:**
- `<STARTUP_BASE>/stages/05-offer/oferta-irresistible.md` — fuente principal de toda la materia prima del copy: promesa, problemas, beneficios, diferenciadores, precio, bonos, garantías, urgencia, CTA.

**Recomendado:**
- `<STARTUP_BASE>/stages/04-solution/propuesta-de-valor.md` — headline y sub-headline ya articulados.
- `<STARTUP_BASE>/stages/06-demand/experimento-validacion.md` — embudo AIDA definido: qué acción busca la landing, qué canal trae el tráfico, cuál es el CTA final.

**Complementario:**
- `<STARTUP_BASE>/stages/02-business-model/lean-canvas-v*.md` — Early Adopters y canales disponibles.
- `<STARTUP_BASE>/stages/03-discovery/consolidado.md` — frases textuales de entrevistas para usar en copy basado en dolor real.
- `<STARTUP_BASE>/startup-context.md` — nombre del startup, segmento, contexto general.

Al iniciar, leer todos los inputs disponibles. Si `oferta-irresistible.md` no existe, detener y avisar: *"Para generar la landing necesito la Oferta Irresistible. Completá A12 con `/offer` primero."*

---

## Lógica de ejecución

### Paso previo — Preguntas de contexto

Antes de generar el copy, hacer 3 preguntas al founder:

1. **¿Cuál es el CTA principal de la landing?** (registro gratuito / booking de demo / compra directa / lista de espera / otro)
2. **¿Hay precios definidos para mostrar?** Si es pre-venta, ¿cuál es el precio? Si no hay pricing todavía, la sección de pricing se convierte en CTA general.
3. **¿Tenés testimonios o prueba social?** Si no hay clientes, ¿qué métricas de validación reales podemos usar? (entrevistas realizadas, interés medido, beta testers, credenciales del fundador)

No avanzar hasta tener respuesta a las 3 preguntas.

---

### Paso A14 — Copy de 12 bloques

Generar el copy completo de la landing siguiendo la arquitectura de 12 bloques de Novolabs. Para cada bloque:
- Entregar el texto final listo para usar (no bocetos ni borradores).
- Usar las palabras del cliente cuando sea posible — extraer frases textuales de entrevistas si están disponibles en el consolidado.
- Aplicar las reglas de copy: oraciones cortas, verbos de acción, números específicos, "vos" y "tu" en lugar de "nosotros".
- Nunca inventar pruebas sociales ni testimonios.

**Bloque 1 — Navbar**
- Logo (placeholder con el nombre del startup).
- CTA del navbar: mismo texto exacto que el CTA principal de la landing.
- Máximo 4 enlaces de navegación a secciones clave.

**Bloque 2 — Hero**
- Pre-headline: "Para [audiencia] que [situación]."
- Headline: beneficio principal o resultado deseado. Nunca features, nunca el nombre del producto.
- Sub-headline: cómo se logra el beneficio. 1–2 oraciones.
- CTA principal: claro, específico, orientado a la acción.
- Descripción del visual sugerido.
- Bullets de beneficios clave (3–4 bullets cortos).
- Social proof rápida si hay datos disponibles.

Generar además **5 variantes del headline** con ángulos distintos:
- Resultado deseado sin objeción principal.
- Forma más rápida/fácil de llegar al resultado.
- Cómo la audiencia logra el resultado en un tiempo.
- Número de personas que ya lograron el resultado.
- Dejar de sufrir el dolor / empezar a vivir el resultado.

**Bloque 3 — Problemas**
- Problema principal + los 3 problemas más frecuentes del usuario.
- Para cada problema: contextualización, dolor concreto (dinero perdido, tiempo desperdiciado, oportunidades perdidas), amplificación (¿qué pasa si no se resuelve?).
- Usar las palabras exactas del cliente, no las del fundador.

**Bloque 4 — Beneficios de la solución**
- 3–4 beneficios con: ícono sugerido + título + descripción corta.
- Cada beneficio es el espejo de un problema del bloque anterior.
- Para cada beneficio: resultado funcional (medible) + resultado emocional.

**Bloque 5 — Diferenciación**
- Comparativa versus alternativas actuales (tabla o bullets "A diferencia de X, nosotros...").
- Diferenciadores clave del mecanismo único de la Oferta Irresistible.

**Bloque 6 — Elementos de la solución**
- Descripción clara de qué es y qué incluye, sin jerga técnica.
- Funcionalidades principales — solo las que le importan al usuario.
- Descripción del visual sugerido (mockup, screenshot, demo).

**Bloque 7 — Cómo funciona**
- 3–5 pasos simples desde "hoy" hasta "resultado deseado".
- Para cada paso: número + título + descripción de una oración.
- Descripción del mapa o ilustración del proceso.

**Bloque 8 — Social Proof**
- Si hay testimonios: nombre, cargo/perfil, resultado específico.
- Si no hay clientes: métricas de validación reales (entrevistas realizadas, interés medido, listas de espera) + historia del fundador + credenciales.
- Instrucción clara: nunca inventar testimonios. Dejar placeholder con formato correcto si no hay datos.

**Bloque 9 — Pricing**
- Si hay precio definido: ancla de valor + precio real + detalle de qué incluye + garantía.
- Si no hay precio todavía: CTA general de booking, registro o contacto.

**Bloque 10 — Bonos**
- Cada bono de la Oferta Irresistible: nombre descriptivo con el beneficio en el título + qué resuelve + valor estimado.
- Stack de valor: "Valor total incluido: $X. Hoy, todo por $Y."
- Presentar siempre después del pricing, nunca antes.

**Bloque 11 — FAQs**
- 5–8 preguntas basadas en objeciones reales de la audiencia (extraídas de la Oferta Irresistible y del consolidado de entrevistas si existe).
- Cada respuesta neutraliza la objeción Y refuerza un beneficio.
- Incluir preguntas sobre: precio y valor, tiempo de resultados, garantía, diferencia versus alternativas.

**Bloque 12 — CTA Final**
- Texto persuasivo que resume el beneficio principal en 1–2 oraciones.
- Botón CTA: exactamente igual que el del hero.
- Urgencia o escasez si aplica y es real (coherente con la Oferta Irresistible).

---

### Paso A15 — Prompts para v0.dev

Generar los prompts listos para construir la landing en v0.dev. Seguir la estructura de 4 etapas del SOP de v0:

**Prompt 0 — Decisiones de estilo (pedir al founder antes de escribir el prompt de arquitectura):**
- Paleta de colores: primario, secundario, fondo, texto, CTA.
- Tipografía: estilo general (sans-serif moderna, serif clásica, etc.).
- Estilo visual: minimalista / bold / moderno / cálido.

Si el founder no tiene preferencias, proponer 2–3 opciones basadas en el sector del startup.

**Prompt 1 — Arquitectura general:**
Prompt completo autocontenido para generar el layout base de la landing con todas las secciones en orden, paleta de colores, tipografía y estilo definidos. Sin copy todavía, solo estructura.

**Prompts 2–N — Implementación por sección:**
Un prompt por sección, en el orden visual de la landing. Cada prompt incluye:
- Nombre de la sección y qué hace.
- Todos los textos exactos del copy generado en A14 (headline, sub-headline, bullets, CTAs, labels — absolutamente todo).
- Layout interno de la sección.
- Visual sugerido (descripción de imagen, ícono o placeholder).
- Comportamiento interactivo si aplica (FAQs acordeón, hover en tarjetas).
- "Mantener la paleta de colores y tipografía del proyecto. Mobile-first. Responsive."

**Prompt de optimización mobile:**
Prompt de revisión global para ajustar la experiencia en pantallas de 375px: CTA visible sin scroll, botones touch-friendly, tipografía legible, imágenes que no se cortan.

**Prompt de SEO y metadatos:**
Prompt para agregar title, meta description, Open Graph, Twitter Card y favicon. Solo cuando el diseño esté 100% aprobado.

---

## Output

Guardar en `<STARTUP_BASE>/stages/06-demand/landing/`:

**`copy-12-bloques.md`** — copy completo organizado bloque a bloque, listo para usar.

**`variantes-headline.md`** — 5 variantes del headline principal con nota sobre cuál recomienda el modelo y por qué.

**`prompts-v0.md`** — todos los prompts en orden, listos para pegar en v0.dev. Incluir instrucciones de uso al inicio del archivo.

---

## Actualización de state.yaml

Al completar, actualizar:

```yaml
agents:
  A14_landing_copy:
    status: completed
    output: "<STARTUP_BASE>/stages/06-demand/landing/copy-12-bloques.md"
  A15_landing_builder:
    status: completed
    output: "<STARTUP_BASE>/stages/06-demand/landing/prompts-v0.md"
next_action: "Landing generada. Construir en v0.dev con los prompts de <STARTUP_BASE>/stages/06-demand/landing/prompts-v0.md. Podés también generar anuncios, lead magnet o webinar desde /demand."
```

---

## Mensaje de cierre al founder

> "La landing está lista.
>
> Encontrás el copy completo en `<STARTUP_BASE>/stages/06-demand/landing/copy-12-bloques.md` y las 5 variantes del headline en `variantes-headline.md`.
>
> Para construirla en v0.dev: abrí `prompts-v0.md` y ejecutá los prompts en orden — empezá siempre por el de arquitectura general antes de construir cualquier sección.
>
> Recordá: verificar cada sección en mobile antes de avanzar a la siguiente. Antes de publicar, pasá por el checklist de lanzamiento al final del archivo."

---

## Reglas de comportamiento

1. **El copy se genera completo, no como boceto.** Cada bloque debe ser texto final listo para publicar.
2. **Nunca inventar pruebas sociales.** Si no hay clientes, usar métricas reales o historia del fundador. Dejar placeholder con formato correcto.
3. **Un CTA, una acción.** El mismo texto de CTA en navbar, hero, y bloque final. Sin variaciones.
4. **Bonos siempre después del pricing.** El orden correcto es: precio → bonos → stack de valor.
5. **Testimonios completos.** Nombre, perfil/cargo, resultado específico. Nunca genéricos.
6. **Urgencia y escasez coherentes** con la Oferta Irresistible. Si no hay urgencia real, no inventarla.
7. **Prompts de v0 autocontenidos.** Cada prompt debe poder ejecutarse sin que el founder tenga que completar nada. Si el copy no está listo para un bloque, no escribir el prompt de ese bloque.
8. **Versionar, no sobreescribir.** Si ya existe una versión de `copy-12-bloques.md`, crear `copy-12-bloques-v2.md`. Actualizar el puntero en state.yaml.

---

*Founder OS | landing-generator v1.0 (A14+A15) — Sesión 10*
