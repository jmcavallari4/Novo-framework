# Prueba de Factibilidad — Se Juega

Fecha: 2026-05-15

---

## Datos base

- CME: USD 25.000 ARR
- ARPA: USD 60/equipo/año (USD 5/mes × 12)
- Arquetipo: entre Ratón y Conejo
- Clientes necesarios (año 3): 417 equipos
- Tasa de crecimiento elegida: 10x anual

---

## Tabla de tracción

Fórmula: `ARR_mes = 25.000 ÷ 10^((36−mes)/12)`

| Mes | ARR proyectado | Equipos activos | Facturación mensual |
|-----|---------------|-----------------|---------------------|
| 3   | USD 45        | <1              | USD 4               |
| 6   | USD 79        | 1               | USD 7               |
| 9   | USD 141       | 2               | USD 12              |
| 12  | USD 250       | 4               | USD 21              |
| 18  | USD 791       | 13              | USD 66              |
| 24  | USD 2.500     | 42              | USD 208             |
| 36  | USD 25.000    | 417             | USD 2.083           |

Los primeros 6 meses dan menos de 1 cliente pago. Es la sección plana de la curva — el objetivo del AHORA no es cerrar ventas masivas, sino conseguir los primeros compromisos tangibles y aprender qué funciona.

---

## Roadmap AHORA–SIGUIENTE–MÁS TARDE

### AHORA (0–6 meses) — Problem/Solution Fit
**Objetivo:** 1–5 equipos activos usando la plataforma para coordinar partidos reales.
**Facturación esperada al mes 6:** USD 7/mes (referencial — el foco es aprendizaje, no ingresos).
**Foco:** lanzar con la waitlist, validar que el matchmaking funciona en la práctica, conseguir el primer equipo que pague.
**Proceso clave:** Demo-Build-Sell — invitar, mostrar, fogonear partidos, recoger feedback.

### SIGUIENTE (6–12 meses)
**Objetivo:** 4 equipos pagos activos al mes 12.
**Facturación mensual esperada:** USD 21/mes.
**Foco:** iterar el producto con lo aprendido, empezar a sistematizar la adquisición via Meta ads.

### MÁS TARDE (12–36 meses)
**Objetivo:** 42 equipos al mes 24, 417 equipos al mes 36.
**Foco:** escalar canales, expandir a GBA limítrofe, activar la segunda fuente de ingreso (fee a canchas).

---

## Evaluación de factibilidad

| Dimensión | Veredicto | Observaciones |
|-----------|-----------|---------------|
| Técnica | ✅ | MVP casi terminado, construido con Claude Code. Sin blockers técnicos conocidos. Solo resta testear que todo funcione. |
| Operativa | ✅ | Lista de actividades clara y manejable: testeo del MVP, publicidad en Meta, onboarding de capitanes vía WhatsApp, contenido, presencia en primeros partidos, fogón de desafíos. Las 5 horas semanales son un mínimo — las actividades presenciales requerirán más tiempo puntualmente. |
| Financiera | ✅ | Burn mensual ~USD 21 (hosting + Meta ads). Runway personal de USD 500/mes disponible. Break-even estimado en el mes 12 (~4 equipos pagos). Riesgo financiero prácticamente nulo. |
| Legal | ⚠️ | Riesgo de responsabilidad por daños físicos entre usuarios (peleas, lesiones). En Argentina, la jurisprudencia en materia de consumo es protectoria y los términos y condiciones tienen alcance limitado. Requiere asesoramiento legal antes de lanzar. Facturación informal al inicio — monotributo cuando los ingresos lo justifiquen. |
| Comercial | ✅ | 50 equipos en waitlist con CAC $0. Plan de lanzamiento claro: invitación 1:1 al grupo de WhatsApp + Meta ads ($20/mes) para llegar a 100 equipos. LTV >> CAC estimado. |

**Veredicto general: ✅ FACTIBLE CON CONDICIONES**

Una sola condición antes de lanzar: resolver la cobertura legal por responsabilidad civil.

---

## Plan de acción — AHORA

1. **Terminar de testear el MVP** — verificar que todas las funcionalidades principales funcionen correctamente antes de abrir el registro.
2. **Resolver la cobertura legal** — asesorarse sobre responsabilidad civil antes de abrir el registro a usuarios externos.
3. **Lanzar con la waitlist** — invitar uno a uno los 50 equipos a un grupo de WhatsApp, explicar cómo funciona Se Juega y fogonear los primeros desafíos con equipos conocidos.
4. **Activar publicidad en Meta** — $20/mes para llegar a 100 equipos registrados.
5. **Estar presente en los primeros partidos** — curaduría de equipos, contenido para redes, feedback directo de la experiencia.

---

## Hipótesis más riesgosas

1. *"El MVP funciona correctamente en condiciones reales de uso con equipos simultáneos coordinando partidos."* — técnica, no validada hasta el testeo.
2. *"Los 50 equipos de la waitlist se convierten en usuarios activos que coordinan al menos un partido en los primeros 30 días."* — comercial, es la métrica de activación crítica.
3. *"El presupuesto de Meta de USD 20/mes genera registro de equipos del perfil correcto a un CAC sostenible."* — comercial, sin datos aún.
