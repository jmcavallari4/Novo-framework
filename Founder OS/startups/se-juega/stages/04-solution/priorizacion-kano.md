# Priorización Kano — Alcance del MVP
**Startup:** Se Juega
**Fecha:** 2026-05-28
**Inputs:** consolidado.md (matriz de oportunidades) + customer-journey-map.md (CJM Futuro)

---

## Clasificación de funcionalidades

| Funcionalidad | Tipo Kano | Origen en matriz | Evidencia | Decisión MVP |
|---|---|---|---|---|
| Perfil de equipo (nombre, zona, nivel, disponibilidad horaria) | Imprescindible | Despido + base del sistema | Sin perfil no hay matching posible — condición de entrada al sistema | **Entra** |
| Matchmaking por nivel ELO + zona + horario | Rendimiento | Trade-off (N=10) + Contratación | *"Si es muy fácil o muy difícil, la paso mal"* (Mariano); *"me gusta jugar con gente que juega mejor"* (Milton) | **Entra** |
| Sistema de reputación de comportamiento (deportividad + compromiso post-partido) | Atractiva | Trade-off (N=9) | *"Caigo a un partido nuevo y muchas veces es medio una sorpresa"* (Milton); *"no quiero ir a un partido donde van con mala gana a pegarse"* (Alex) | **Entra** |
| Confirmación bilateral vinculante (cancelar tarde afecta reputación) | Imprescindible | Despido (N=9) | *"De 11 que son el grupo, 9 dijeron que no"* (Mauro); *"perdía tiempo, perdía plata"* (Saúl) | **Entra** |
| Carga de resultado + actualización automática de ELO | Rendimiento | Trade-off (N=5) + habilita matchmaking | Sin resultados el ELO no se actualiza — el matching pierde precisión con el tiempo | **Entra** |
| Notificaciones de estado del partido (confirmación, recordatorio, cancelación) | Imprescindible | Despido (incertidumbre previa) | Sin notificaciones el usuario tiene que abrir la app para saber si el partido se juega — destruye el valor de la confirmación bilateral | **Entra** |
| Cobertura de ausencias con jugadores sueltos | Rendimiento | Despido (N=5) | *"el que falló nunca más lo llamo"* (Milton) | **V2** — requiere masa crítica de jugadores sueltos registrados; no funciona en los primeros meses |
| Hub de partidos disponibles (vista tipo "feed" por zona) | Rendimiento | Trade-off (N=2, intenso) | *"con una aplicación se resuelve el toque"* (Rafa) | **V2** — la Etapa 2 del CJM Futuro cubre búsqueda activa; el feed pasivo es mejora UX, no diferenciador |
| Reserva de cancha integrada | Indiferente | Sin evidencia directa | No mencionada como driver de cambio en entrevistas; requiere alianzas con canchas | **No entra** |
| Gestión de pagos internos del equipo | Indiferente | Sin evidencia directa | El problema de recaudar plata es mencionado pero nadie busca resolverlo con una app | **No entra** |
| Stats avanzadas / fotos / highlights | Indiferente | Sin evidencia suficiente | J8 (profesionalización) aparece solo en 3 entrevistas, importancia baja | **No entra** |
| Sistema de arbitraje | Indiferente | Sin evidencia directa | El mal arbitraje se menciona como criterio de despido del torneo pero no como deseo activo de solución | **No entra** |

---

## Definición del MVP

### Funcionalidades Atractivas (diferenciación — WOW)

- **Sistema de reputación de comportamiento** — cada equipo tiene un perfil público con historial de deportividad (1–5, calificado por el rival después de cada partido) y ratio de confirmación vs cancelaciones. El capitán puede ver este perfil antes de aceptar un desafío.
  - *Por qué genera WOW:* nadie en las alternativas actuales (torneo, WhatsApp, boca a boca) tiene esto. Resuelve el dolor más explícito del J3: "no sé contra quién voy a jugar hasta que estoy en la cancha." El dato existe en el sistema porque la propia dinámica de uso lo genera.

---

### Funcionalidades de Rendimiento (mejora cuantificable vs alternativas)

- **Matchmaking por nivel ELO + zona + horario** — el capitán ve equipos disponibles en su zona y franja horaria, ordenados por proximidad de nivel (ELO similar primero). Manda desafío en 2 toques.
  - *Objetivo de mejora:* de 2–5 días buscando en N grupos de WhatsApp a 15–30 minutos en una sola pantalla. Mejora 5–10x en tiempo.

- **Carga de resultado + actualización automática de ELO** — ambos capitanes cargan el resultado al terminar. Si hay discrepancia, el sistema la flagea. El ELO de ambos se actualiza automáticamente.
  - *Objetivo de mejora:* cada partido "importa" — ya no es un evento aislado y olvidable. El ranking crece con el uso, haciendo el matching cada vez más preciso.

---

### Funcionalidades Imprescindibles (condiciones de entrada)

- **Perfil de equipo** (nombre, zona, nivel inicial auto-declarado, disponibilidad horaria) — sin perfil no hay matching, y sin matching el producto no existe. Es el "costo de entrada" que el capitán tiene que pagar una sola vez.
  - *Solución existente para implementar:* Supabase (auth + DB) — free tier hasta 50.000 MAU.

- **Confirmación bilateral vinculante** — cuando ambos capitanes aceptan el partido, la cancelación tardía (< 24h antes) queda registrada y penaliza el ratio de confirmación del equipo. No es un contrato legal — es reputación en el sistema.
  - *Solución existente para implementar:* lógica propia en la app (simple state machine); sin dependencias externas críticas.

- **Notificaciones de estado del partido** — push notification cuando: el rival acepta el desafío, el partido está confirmado, recordatorio 24h antes, recordatorio 2h antes, cancelación de último momento.
  - *Solución existente para implementar:* Firebase Cloud Messaging (FCM) — free, ilimitado para notificaciones básicas.

---

### Excluidas del MVP

| Funcionalidad | Motivo |
|---|---|
| Cobertura de ausencias con jugadores sueltos | V2 — requiere masa crítica de jugadores sueltos; los primeros 3–6 meses no habrá suficientes |
| Hub de partidos disponibles (feed pasivo) | V2 — mejora de UX, no diferenciador. El matchmaking activo ya cubre el caso de uso principal |
| Reserva de cancha integrada | No entra — requiere alianzas con canchas, sin evidencia de que sea un driver de adopción |
| Gestión de pagos internos del equipo | No entra — sin evidencia de que los jugadores quieran resolver esto con la app |
| Stats avanzadas / fotos | No entra — J8 tiene N bajo e importancia baja en las entrevistas |
| Sistema de arbitraje | No entra — sin evidencia directa de deseo de solución vía app |

---

## Verificaciones

- [x] Máximo 5–7 funcionalidades en el MVP → **6 funcionalidades** ✅
- [x] Al menos 1 funcionalidad atractiva → **Sistema de reputación de comportamiento** ✅
- [x] Todas las imprescindibles cubiertas → **Perfil + Confirmación + Notificaciones** ✅
- [x] Cada funcionalidad con evidencia → **Todas tienen origen en consolidado o CJM** ✅

---

## Esfuerzo estimado

### Construir desde cero (lógica propia)
- Matchmaking algorithm (cruce zona + ELO + horario)
- Sistema de reputación (calificación post-partido + ratio de confirmación)
- Confirmación bilateral y state machine del partido (propuesto → aceptado → confirmado → jugado / cancelado)
- Carga de resultado y resolución de discrepancias

### Apalancar con soluciones existentes
- **Supabase** — auth + base de datos + API → cubre perfil de equipo, ELO storage, historial de partidos (free hasta 50K MAU)
- **Firebase Cloud Messaging (FCM)** → cubre todas las notificaciones push (free, ilimitado para volúmenes de startup early stage)
- **ELO npm package** (elo-rating o similar) → cálculo de ELO sin escribir la fórmula desde cero (open source, MIT license)

**Síntesis del esfuerzo:** El núcleo diferenciador (matchmaking + reputación + confirmación vinculante) hay que construirlo. La infraestructura de base (auth, DB, notificaciones) se puede apalancar con soluciones existentes y free tiers. La lista de funcionalidades es construible por un solo desarrollador en 4–8 semanas si el alcance no se expande.

---

*Priorización Kano v1 — Se Juega — Etapa 4 del SVP™*
