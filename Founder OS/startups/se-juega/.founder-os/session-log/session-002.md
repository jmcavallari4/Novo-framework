# Sesión 002 — Priorización Kano (A10)
**Startup:** Se Juega
**Fecha:** 2026-05-28
**Etapa SVP™:** 4 — Definición de la Solución
**Agente completado:** A10 — Priorización Kano

---

## Qué se hizo

Se clasificaron todas las funcionalidades candidatas de Se Juega usando el Modelo Kano, conectando cada una con evidencia del consolidado de entrevistas y del CJM. Se definió el alcance concreto del MVP: 6 funcionalidades.

---

## Las 6 funcionalidades del MVP

**Atractiva (diferenciadora — el WOW):**
- **Sistema de reputación de comportamiento:** cada equipo tiene un perfil público con calificación de deportividad y ratio de confirmaciones. Se puede ver antes de aceptar un rival. Nadie tiene esto hoy.

**Rendimiento (mejora cuantificable):**
- **Matchmaking por nivel ELO + zona + horario:** de 2–5 días en WhatsApp a 15–30 minutos en una pantalla.
- **Carga de resultado + actualización de ELO:** cada partido queda en el historial, el ranking crece con el uso.

**Imprescindibles (condiciones de entrada):**
- **Perfil de equipo:** nombre, zona, nivel inicial, disponibilidad.
- **Confirmación bilateral vinculante:** cancelar tarde penaliza la reputación.
- **Notificaciones de estado del partido:** confirmación, recordatorios, cancelaciones.

---

## Lo que queda afuera del MVP (y por qué)

- **Jugadores sueltos para cubrir ausencias:** V2, necesita masa crítica que no va a existir en los primeros meses.
- **Feed pasivo de partidos disponibles:** V2, el matchmaking activo ya cubre el caso de uso.
- **Reserva de cancha integrada, pagos internos, stats:** sin evidencia suficiente para el MVP.

---

## Esfuerzo estimado

- Núcleo diferenciador (matchmaking + reputación + confirmación): construir desde cero.
- Infraestructura base: Supabase (auth + DB, free), Firebase FCM (notificaciones, free), librería ELO open source.
- Estimación: construible por un desarrollador en 4–8 semanas si el alcance no se expande.

---

## Próximo paso

Construir la **Propuesta de Valor (A11)** usando las 6 funcionalidades del MVP como base para los diferenciadores, beneficios y headline.

---

*Founder OS — Session Log | SVP™ Etapa 4*
