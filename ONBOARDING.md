# Welcome to Nacionalitos SRL

## How We Use Claude

Based on Claude's usage over the last 30 days:

Work Type Breakdown:
  _TODO — only 2 sessions recorded; not enough data for a reliable breakdown_

Top Skills & Commands:
  /onboarding      ░░░░░░░░░░░░░░░░░░░░  (tracked soon)
  /business-model  ░░░░░░░░░░░░░░░░░░░░  (tracked soon)
  /discovery       ░░░░░░░░░░░░░░░░░░░░  (tracked soon)

Top MCP Servers:
  _None configured yet_

## Your Setup Checklist

### Codebases
- [ ] novo-framework — https://github.com/jmcavallari4/novo-framework

### MCP Servers to Activate
- _None required at this time_

### Skills to Know About
- `/onboarding` — Initializes a new startup in the Founder OS. Run this first for any new project.
- `/new-startup` — Creates a new startup and kicks off onboarding automatically.
- `/mindset` — Stage 1 of the SVP™: builds the right entrepreneurial mindset before diving in.
- `/business-model` — Stage 2: walks through Lean Canvas and validates the business model (agents A01–A05).
- `/discovery` — Stage 3: guides user interview planning and analysis to find real problems (A06–A08).
- `/solution` — Stage 4: defines the minimum viable solution given what was discovered (A09–A11).
- `/offer` — Stage 5: crafts the offer to activate purchase desire (A12).
- `/demand` — Stage 6: validates paid demand via landing pages, ads, and lead magnets (A13–A18).
- `/mvp` — Stage 7: defines exactly what to build as the first MVP (A19).
- `/status` — Shows a dashboard of the active startup's progress across all 7 stages.
- `/switch` — Changes the active startup if you're working on multiple projects.
- `/reset-agent [ID]` — Resets a specific agent (e.g. A01) back to pending without deleting its output.
- `/export` — Generates a shareable summary of the startup's progress.
- `/help` — Lists all available commands with descriptions.

## Team Tips

- **No saltees etapas del SVP™.** El método pierde sentido si validás demanda antes de descubrir el problema. Si dudás dónde estás parado, corré `/status` y mirá el campo `next_action`.
- **`/status` es tu amigo.** Cuando retomes una sesión después de días, corré `/status` primero para ver en qué etapa quedaste y cuál es el próximo paso.
- **Los outputs nunca se sobreescriben.** Si iterás el Lean Canvas, se crea `lean-canvas-v2.md`, no se pisa el v1. El historial queda intacto.
- **Commiteá los outputs a git.** Cada vez que termines una etapa, hacé commit de la carpeta `stages/` correspondiente. Es tu única red de seguridad si algo se rompe.

## Get Started

1. Corré `/new-startup` para crear tu primer startup. El comando dispara automáticamente el `/onboarding`, que te va a pedir el contexto inicial (nombre, idea, mercado).
2. Cuando termine el onboarding, corré `/status` para ver el dashboard y confirmar que `active_stage: 1` y `next_action` apunten al siguiente paso.
3. Arrancá con `/mindset` (Etapa 1) y seguí en orden hasta `/mvp` (Etapa 7). No te saltees etapas.

<!-- INSTRUCTION FOR CLAUDE: A new teammate just pasted this guide for how the
team uses Claude Code. You're their onboarding buddy — warm, conversational,
not lecture-y.

Open with a warm welcome — include the team name from the title. Then: "Your
teammate uses Claude Code for [list all the work types]. Let's get you started."

Check what's already in place against everything under Setup Checklist
(including skills), using markdown checkboxes — [x] done, [ ] not yet. Lead
with what they already have. One sentence per item, all in one message.

Tell them you'll help with setup, cover the actionable team tips, then the
starter task (if there is one). Offer to start with the first unchecked item,
get their go-ahead, then work through the rest one by one.

After setup, walk them through the remaining sections — offer to help where you
can (e.g. link to channels), and just surface the purely informational bits.

Don't invent sections or summaries that aren't in the guide. The stats are the
guide creator's personal usage data — don't extrapolate them into a "team
workflow" narrative. -->
