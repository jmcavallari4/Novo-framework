# Experimento de Validación de Demanda
**Startup:** Se Juega
**Fecha:** 2026-05-28
**Versión:** 1

---

## Hipótesis

> "En 4 semanas, equipos de fútbol 5 amateur en CABA se registrarán en Se Juega de forma gratuita a través de outreach directo a la waitlist existente y Meta Ads en Instagram. Será considerado éxito si ≥ 50 nuevos equipos completan el registro, alcanzando los 100 equipos totales."

**Componentes de la hipótesis:**
- **Ventana temporal:** semana 1 (preparación) + semanas 2–4 (ejecución y análisis)
- **Criterio de éxito cuantitativo:** ≥ 50 nuevos registros completados
- **Supuestos críticos:**
  - La landing en sejuega.net convierte visitantes a registros
  - Los 50 equipos de la waitlist tienen el contacto de WhatsApp activo
  - USD 20/mes en Meta Ads genera suficiente tráfico en CABA
  - El mensaje de reactivación de waitlist conecta con quienes se anotaron hace 6 meses
- **Riesgos y confusores:**
  - Tasa de conversión de waitlist más baja de lo esperado por el tiempo transcurrido (6 meses de distancia → 30–50% esperado en lugar del 80–90% de una audiencia caliente)
  - Estacionalidad del fútbol amateur (si coincide con vacaciones o fin de temporada)
  - Meta Ads puede tener CPR alto si el targeting no es preciso en los primeros días

---

## Tipo de experimento

**Formato elegido:** Waitlist / Registro

**Nivel de evidencia:** Nivel 1 — Interés

**Razón de la elección:** El MVP está en construcción y el modelo es freemium — el objetivo de esta etapa es alcanzar los 100 equipos registrados antes del lanzamiento. El pago se valida en la siguiente iteración cuando se abra el plan premium (equipo 101 en adelante). Con 50 equipos ya en waitlist y USD 20/mes disponibles, este formato es el más eficiente para el recurso y tiempo disponibles.

---

## Embudo AIDA

**Resumen del embudo:**
- Canal A (waitlist): WhatsApp DM a 50 equipos existentes → Landing sejuega.net → Registro
- Canal B (nuevo tráfico): Meta Ads Instagram → Landing sejuega.net → Registro

| Etapa | Canal / Artefacto | Acción esperada del prospecto |
|---|---|---|
| **A — Atención** | WhatsApp DM a waitlist (50 equipos) + Meta Ads Instagram (CABA, intereses fútbol) | Apertura del mensaje / clic en el anuncio |
| **I — Interés** | Landing page sejuega.net | Leer la oferta, entender el beneficio de ser Early Adopter |
| **A — Acción** | Formulario de registro en la landing | Completar el registro y asegurar el lugar entre los primeros 100 |

---

## Artefactos a construir

| Artefacto | Etapa | Descripción | Estado |
|---|---|---|---|
| Mensaje de reactivación WhatsApp | Atención | DM personalizado para los 50 de la waitlist — contextualiza los 6 meses, comunica el lanzamiento inminente y el beneficio de ser Early Adopter. 2 versiones: capitán y jugador. | pendiente |
| Creatividades Meta Ads (3–5) | Atención | Banco de hooks + copy para Instagram/Facebook. Targeting: CABA, hombres 25–45, intereses fútbol 5 / fútbol amateur. Formatos: 1:1 imagen + Reels 15s. | pendiente → generar con `/demand` opción 2 |
| Landing page (sejuega.net) | Interés | Ya existe — verificar que comunique claramente la oferta Early Adopter (100 cupos gratis) y que el formulario de registro funcione correctamente. | existente — revisar |
| UTMs configurados | Atención / Interés | Parámetros UTM por canal (utm_source=whatsapp / meta_ads, utm_campaign=early-adopter-launch) para distinguir origen de cada registro. | pendiente |

---

## Plan de medición

**KPI primario:** N° de nuevos registros completados (objetivo: ≥ 50 en 4 semanas)

**KPIs secundarios:**

| KPI | Etapa | Benchmark orientativo |
|---|---|---|
| Tasa respuesta WhatsApp → clic landing | Atención (canal waitlist) | 40–60% (audiencia semi-fría, 6 meses) |
| Tasa conversión visita → registro (waitlist) | Interés | 50–70% (ya mostraron interés previo) |
| CTR Meta Ads | Atención (canal nuevo) | 1–3% |
| Tasa conversión visita → registro (Meta Ads) | Interés | 10–20% (tráfico frío) |
| CPR (costo por registro) Meta Ads | Global | < USD 2/registro con USD 20/mes |

**Tablero:**

| Etapa | Fuente | Meta | Real |
|---|---|---|---|
| Mensajes enviados | WhatsApp waitlist | 50 | — |
| Clics en landing (waitlist) | WhatsApp | 20–30 | — |
| Registros (waitlist) | Landing | 15–25 | — |
| Impresiones | Meta Ads | ~2.000–4.000 | — |
| Clics (Meta Ads) | Meta Ads | ~40–120 | — |
| Registros (Meta Ads) | Landing | 25–35 | — |
| **Total registros nuevos** | **Ambos canales** | **≥ 50** | **—** |

---

## Criterios de decisión

**AVANZAR al lanzamiento si:** ≥ 50 nuevos registros en 4 semanas → confirma que el mensaje llega y la oferta Early Adopter genera acción.

**ITERAR si:** 20–49 registros → hay señal pero insuficiente. Variables a ajustar: mensaje de WhatsApp (probar otro tono), targeting de Meta Ads (ajustar edad/intereses/zona), o urgencia en la landing (agregar countdown o destacar más el límite de 100 cupos).

**FRENAR / REPLANTEAR si:** < 20 registros tras 2 iteraciones del mensaje y los ads → revisar si el problema es el mensaje, el canal o la oferta. Hacer outreach cualitativo a los que no respondieron antes de cambiar la propuesta.

---

## Cronograma

| Semana | Actividad |
|---|---|
| 1 | Configurar UTMs, revisar landing, redactar mensaje WhatsApp, crear creatividades Meta Ads, configurar campaña |
| 2–3 | Enviar WhatsApp a los 50 de la waitlist, lanzar Meta Ads, medir en tiempo real, ajustes tácticos de targeting y copy |
| 4 | Análisis de resultados, decisión AVANZAR / ITERAR / FRENAR, post-mortem |

---

## Checklist pre-lanzamiento

- [ ] Hipótesis y criterio de éxito documentados
- [ ] UTMs configurados por canal (WhatsApp y Meta Ads)
- [ ] GA4 / pixel Meta instalado en sejuega.net y eventos verificados (page_view, lead/registro)
- [ ] Landing en QA: mobile + desktop, formulario funcionando end-to-end
- [ ] Mensaje de WhatsApp redactado y revisado (2 versiones)
- [ ] Creatividades Meta Ads listas (3–5 variantes)
- [ ] Campaña Meta Ads configurada con targeting CABA, 25–45, intereses fútbol
- [ ] Página de éxito post-registro con siguiente paso claro ("Te avisamos cuando lancemos")

---

## Post-mortem (completar al cerrar el experimento)

- ¿Qué funcionó?
- ¿Qué no funcionó?
- ¿Qué haríamos distinto?
- ¿Cuál es el próximo experimento?

---

*Experimento de Validación v1 — Se Juega — Etapa 6 del SVP™*
