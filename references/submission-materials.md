# BudgetWise Research – Submission Materials (X Post + Blurb)

## Recommended Defaults Used
- **Primary post**: Short & punchy (under 280 chars)
- **Focus**: Real MPP/Stripe payments + budget intelligence + safety
- **Tone**: Clean, confident, builder-oriented

---

## 1. Primary X Post (Copy-Paste Ready)

```
I built a research agent that actually manages money.

BudgetWise Research:
- Always tries free tools first
- Only spends via real MPP (Stripe test) when value is clear
- Enforces strict policies + low-balance safety
- Logs every decision + self-reflects

Real payment proof in the demo:

[attach 1-3min video + Stripe dashboard screenshot]

#HermesAgent #AI #MPP #Agents
```

**Character count**: ~240

**Attachments**: 
- 1-3 minute demo video
- Screenshot of Stripe test receipt (Payment Intent visible)

---

## 2. Short Thread Version (3 tweets)

**Tweet 1** (main):
```
Most research agents either burn money or refuse to spend.

I built BudgetWise Research — a reusable Hermes skill that treats money as a real resource.

It always starts with free tools, only spends via real MPP when justified, and maintains full transparency + safety rails.

Demo + Stripe proof:
[video link]
```

**Tweet 2**:
```
Key behaviors demonstrated:

• Free-first reasoning (no unnecessary spend)
• Real payment via official mpp-agent + Stripe test mode
• Policy enforcement (max $0.30/task, reserve last $0.10)
• Low-balance protocol (refuses below $0.15 without confirmation)
• Every run ends with reflection + improvement suggestion

All logged in persistent memory.
```

**Tweet 3**:
```
Built as a proper Hermes skill so any agent can load it.

Full code, evidence, and demo run packet here:
[link to repo or skill folder]

The goal: autonomous agents that can earn, spend, and be held accountable.

Feedback welcome.
```

---

## 3. Typeform / Submission Blurb (Short & Professional)

**Title suggestion**: BudgetWise Research – Accountable Agent Spending with Real MPP

**Blurb** (use as-is or trim):

"BudgetWise Research is a financially responsible research skill for Hermes agents. 

It enforces deliberate spending: free tools first, only use paid tools (via official mpp-agent + Stripe) when the expected value clearly justifies the cost. Strict policies, low-balance safety, full transparency, and mandatory self-reflection on every task.

All decisions and real MPP payments are logged and verifiable.

Demo includes live Stripe test receipt as proof of actual economic action."

**Tags / categories** (suggested):
- Research
- Payments / MPP
- Safety & Accountability
- Autonomous Agents
- Hermes Skills

---

## 4. Key Claims / Highlights (for video description, README, or posts)

- Real MPP payments executed via the official `mpp-agent` skill using Stripe test mode (verifiable Payment Intent).
- Policy-enforced spending: max $0.30 per task, never spend the last $0.10 without confirmation.
- Low-balance protocol: automatically warns and blocks spending below $0.15.
- Free tools first by default — only escalates to paid when value is clear.
- Every task ends with structured reflection and a suggested improvement.
- Persistent memory for budget state and full audit log.
- Designed as a reusable, loadable Hermes skill (not a one-off script).
- Transparent by design: every response follows a strict structure showing balance, approach, reasoning, action, and reflection.

---

## 5. Optional Stronger Hook Versions

**Punchier primary**:
```
Built an agent that won’t waste your money.

BudgetWise Research does real research, spends real money via MPP only when it makes sense, and proves it with live Stripe receipts.

Free tools first. Safety rails included.

[video]

```

**More technical**:
```
New Hermes skill: budgetwise-research

- Free tools first
- Real MPP spend only when value > cost (via mpp-agent)
- Policy + low-balance enforcement
- Full audit + self-reflection

Live Stripe proof in the demo.

[video + link]

```

---

Use the files in `references/` (demo-run-packet.md, video-narration.md, evidence-capture-helper.md) together with this package for a complete submission.

Let me know if you want variations (different tone, longer thread, video description text, etc.).
## Verifiability Note (Add This to Your X Post / Submission)

budgetwise-research does not implement payments itself — it delegates to the official mpp-agent skill (the standard Hermes component for HTTP 402 / MPP flows).

When the skill decides to spend, it calls mpp-agent, which handles the real 402 challenge and creates a Stripe Payment Intent (in test mode during demos).

**Strong evidence we capture:**
- Structured skill output explicitly stating it called mpp-agent and the payment succeeded.
- Matching entry in the Stripe test dashboard (Payment Intent) created at the same time with the same amount.
- Budget correctly deducted and transaction logged.

This combination proves real economic action through the MPP protocol.

