# budgetwise-research

**A financially responsible research skill for Hermes agents.**

BudgetWise Research gives agents the ability to do high-quality research while treating money as a scarce, limited resource. It always attempts free tools first, only escalates to paid tools (via the official `mpp-agent` skill) when the expected value clearly justifies the cost, and maintains strict transparency, policy enforcement, and safety rails.

## Key Features

- **Free tools first** — Never spends unless free results are clearly inadequate.
- **Real MPP payments** — Uses the official `mpp-agent` skill for actual payments (Stripe test mode supported with verifiable receipts).
- **Policy-enforced spending**:
  - Max $0.30 per task
  - Never spends the last $0.10 without explicit user confirmation
- **Low-balance safety** — Automatically warns and blocks spending below $0.15.
- **Full audit trail** — Persists budget state and transaction logs via Hermes memory.
- **Mandatory self-improvement** — Every task (paid or free) ends with structured reflection and a concrete improvement suggestion.
- **Strict output discipline** — Always follows a clean, scannable response structure.

## Demo & Real Payment Proof

The skill has been tested end-to-end with real MPP flows:

- One clean paid research transaction (~$0.10) executed via `mpp-agent` + Stripe.
- Live Stripe test dashboard proof (Payment Intent visible).
- Low-balance protocol correctly triggers warnings and blocks spending.

**Evidence package** (included in this repo):
- `references/demo-run-packet.md` — Complete recording guide with exact prompts and timing.
- `references/video-narration.md` — Timed script with "show Stripe receipt" moment.
- `references/evidence-capture-helper.md` — Prompt + checklist for generating verifiable receipts.
- `references/submission-materials.md` — X post, thread, Typeform blurb, and key claims.
- `references/video-description.md` — Ready-to-use video description + pinned comment.

See the demo video for the full flow (free → paid decision → real payment → safety behavior).

## Quick Start

```bash
# Load the skill
hermes --skills budgetwise-research chat

# Or in an existing session
/skill budgetwise-research
```

Then simply ask research questions:

```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources."
```

The skill will automatically:
1. Check current budget.
2. Attempt free tools first.
3. Decide whether paid tools are justified.
4. If spending, call `mpp-agent` and log the transaction.
5. Return results in the required structured format.

## Response Structure

The skill **always** outputs in this exact format:

**Budget Status**: Current balance = $X.XX

**Approach**: [Free tools first / Decided to use paid tool]

**Reasoning**: [Maximum 2 sentences]

**Action Taken**: [1-2 precise sentences]

**Updated Budget**: $X.XX

**Result**: [Final research output — with explicit note on what paid tools added when applicable]

**Reflection**: [Value delivered vs cost + one concrete improvement]

## Low Balance Protocol

When balance drops below $0.15:
- The skill clearly warns the user.
- It refuses to spend without explicit confirmation.
- It continues to deliver the best possible free-tool result.

## Architecture & Design

- **Virtual budget** managed via Hermes persistent memory (`budgetwise_balance` + `budgetwise_spend_log`).
- **Decision framework** follows a strict order: understand → free tools → evaluate → decide → execute (if approved) → reflect.
- **Payment execution** delegated to the official `mpp-agent` skill (supports Stripe Link and Tempo).
- **Self-improvement** is mandatory on every run, creating a lightweight learning loop.

The design prioritizes:
- Transparency (every response shows balance and reasoning)
- Safety (hard limits + confirmation gates)
- Verifiability (real payments + logs)
- Reusability (standard Hermes skill format)

## Future Work / Extensions

- Configurable policies per user (max spend, reserve amounts, allowed categories)
- Cost/quality tracking across multiple paid sources
- Integration with SkillPay-style guarded capabilities for higher-value paid modules
- Automatic top-up prompts when balance is low

## References

- `references/demo-run-packet.md` — Full demo recording packet
- `references/video-narration.md` — Timed narration script
- `references/evidence-capture-helper.md` — How to generate real Stripe receipts
- `references/submission-materials.md` — X posts, thread, and submission blurb
- `references/video-description.md` — Video description + pinned comment
- `references/demo-evidence.md` — Detailed steps for capturing verifiable MPP proof

---

Built as a reusable Hermes skill for accountable autonomous research. 

Real payments. Real accountability. No hand-waving.