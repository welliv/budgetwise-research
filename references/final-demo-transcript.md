# Final Demo Run Transcript – BudgetWise Research

**Target length**: 90–120 seconds of talking + screen actions  
**Focus**: One strong paid transaction + short low-balance safety segment  
**Starting balance for main run**: $0.50 (clean state)

---

## Pre-Recording Setup
- Reset budget to exactly $0.50, clear spend log
- Have Stripe test dashboard open in another tab: https://dashboard.stripe.com/test/payments
- Record with clear Hermes window + ability to switch to Stripe dashboard
- Keep this transcript + the Demo Run Packet open

---

## Segment 1: Free Tools Path (Baseline – ~15–20s)

**Exact prompt to run**:
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources."
```

**What to show on screen**:
- Full structured output
- Highlight **Budget Status**: Current balance = $0.50
- Highlight **Approach**: Free tools first
- Highlight the **Result** section (3 developments)
- Highlight **Reflection**

**Suggested narration**:
"First, the agent runs the query using only free tools. It returns solid, sourced results on recent autonomous AI agent developments. Notice it always states the current budget at the top and ends with a reflection. No money was spent."

**Timing**: 0:00 – 0:18

---

## Segment 2: Paid Path – Main Demo (Core – ~55–65s)

**Exact prompt to run**:
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
```

**What to show on screen**:
- The full structured output as it appears
- Highlight:
  - Budget Status $0.50
  - Approach: Decided to use paid tool
  - Reasoning (should be concise, max 2 sentences)
  - Action Taken: mentions calling mpp-agent and payment succeeded
  - Updated Budget: $0.40
  - Result section (especially the line about what the paid tools added)
- **Critical moment**: Immediately after the output appears, switch to the Stripe test dashboard and show the new Payment Intent.

**Suggested narration**:
"The agent evaluates the free results and decides that paid tools would meaningfully improve quality and recency. It calls the official mpp-agent skill and executes a real payment through MPP. Here is the live Stripe test receipt for the exact amount it chose to spend. Payment succeeded at the same time as the skill run."

**What to capture**:
- Pause on the Stripe dashboard for 6–8 seconds
- Show amount, status = Succeeded, and timestamp
- Optionally read the Payment Intent ID aloud

**Timing**: 0:18 – 1:20

---

## Segment 3: Low Balance Safety (Short – ~15–20s)

**Pre-step**: Set balance to $0.10 (or use a saved low-balance state)

**Exact prompt to run** (same as paid version):
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
```

**What to show on screen**:
- Budget Status showing $0.10
- The warning about low balance
- The skill still delivers a free-tool result but refuses to spend

**Suggested narration**:
"When the balance drops below fifteen cents, the skill correctly refuses to spend without confirmation. It warns the user and asks for a top-up before proceeding. Safety is enforced automatically."

**Timing**: 1:20 – 1:40 (or shorter if you want to keep the main video under 2 minutes)

---

## Post-Recording / Evidence Checklist

Immediately after the paid run, capture:
- Full structured skill output (save as text or screenshot)
- Stripe test dashboard screenshot showing the new Payment Intent (amount, timestamp, status)
- Payment Intent ID as text
- The low-balance warning output

Update the evidence summary template in references/ with the actual IDs and screenshots.

---

## Suggested On-Screen Overlays (optional but helpful)

- "Starting balance: $0.50"
- "Free tools first"
- "Decided to spend $0.10 via mpp-agent"
- "Real Stripe test payment succeeded"
- "Balance now $0.40 + fully logged"
- "Low balance protocol triggered (< $0.15)"

---

**This transcript is designed to be followed line-by-line while recording.**  
Run the prompts on your machine with real mpp-agent + Stripe test mode for authentic proof. The Stripe dashboard moment is the single most important visual for verifiability.

