# budgetwise-research

**Repository**: https://github.com/welliv/budgetwise-research

A financially responsible research skill for Hermes agents.

**BudgetWise** forces real financial discipline on research tasks:
- Always tries free tools first
- Only spends via real MPP (official `mpp-agent` + Stripe) when the value is clear
- Enforces strict policies and low-balance safety
- Logs every decision with full transparency
- Requires self-reflection after every task

## Key Features

- **Budget-aware spending** — Virtual budget with configurable limits
- **Real MPP payments** — Delegates to the official `mpp-agent` skill (Stripe test mode supported)
- **Safety-first design** — Low-balance protocol, max spend per task, confirmation requirements
- **Verifiable actions** — Every payment produces observable evidence (skill output + Stripe Payment Intent)
- **Self-improving** — Mandatory reflection + improvement suggestion after each run

## Demo

Watch the demo video showing:
- Free tools path
- Real paid transaction via MPP + Stripe
- Low-balance safety warning

[Link to video will go here]

**Real payment proof**: The demo includes a live Stripe test dashboard screenshot showing the actual Payment Intent created during the run.

## Quick Start

1. Install the skill in Hermes:
   ```bash
   hermes skills install research/budgetwise-research
   ```

2. Use it:
   ```
   Use budgetwise-research to research: "Your query here"
   ```

## Evidence & Verifiability

This skill was built with verifiability in mind. See:
- evidence/ folder for real run outputs and Stripe Payment Intent screenshots
- references/verifiability-evidence-checklist.md for how to reproduce

## Links

- **GitHub**: https://github.com/welliv/budgetwise-research
- Demo Video: [To be added after recording]
- Full Evidence Package: [To be added]
- X Post: [To be added]

## Built With

- Hermes Agent
- Official mpp-agent skill (MPP + Stripe)
- Strong focus on accountability and safety

## License

MIT
