# Recording Session Checklist – BudgetWise Research

**Goal**: Produce a clean 1–3 minute video with verifiable real MPP/Stripe proof.  
**Focus**: One strong paid transaction + short low-balance segment.  
**Target runtime**: 90–120 seconds of narration.

---

## Pre-Recording Setup (Do This First)

- [ ] Reset balance to exactly **$0.50** and clear spend log (clean state).
- [ ] Confirm `mpp-agent` is configured on your local machine with Stripe test mode ready.
- [ ] Open Stripe test dashboard in a separate tab/window: https://dashboard.stripe.com/test/payments
- [ ] Have these files open:
  - `final-demo-transcript.md`
  - `demo-run-packet.md`
  - `evidence-summary-template.md`
- [ ] Test screen recording setup (clear Hermes window + easy switch to Stripe dashboard).
- [ ] Prepare on-screen overlay text if desired (e.g., "Starting balance: $0.50").

---

## Recording Order of Operations

### 1. Free Tools Path (Baseline)
- **Prompt**:
  ```
  Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources."
  ```
- **What to capture**:
  - Full structured skill output.
- **What to show on screen**:
  - Budget Status $0.50
  - Approach: "Free tools first"
  - Result section + Reflection
- **Timing cue**: ~15–20 seconds.
- **Narration reminder**: "First run with only free tools. No money spent. Notice the structure and Reflection."

### 2. Paid Path (Main Demo – Core Moment)
- **Prompt**:
  ```
  Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
  ```
- **What to capture immediately**:
  - Full structured skill output (save as text).
  - **Immediately switch to Stripe test dashboard** and capture the new Payment Intent.
- **What to show on screen**:
  - Skill output: Decision to spend + "Called the mpp-agent skill" + "Payment succeeded".
  - Updated balance ($0.50 → $0.40).
  - Stripe dashboard: New PI with matching amount + timestamp.
- **Critical moment**: Hold on Stripe dashboard for 6–8 seconds. Zoom on PI ID if possible.
- **Timing cue**: ~55–65 seconds.
- **Narration reminder**: "Agent evaluated free results... decided paid tools would improve quality... real payment via mpp-agent... here is the live Stripe test receipt."

### 3. Low Balance Safety (Short Segment)
- **Pre-step**: Set balance to **$0.10** (or use a saved low state).
- **Prompt** (same as paid version):
  ```
  Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
  ```
- **What to capture**:
  - Skill output showing low-balance warning + refusal to spend.
- **What to show on screen**:
  - Budget Status = $0.10
  - Warning message
  - Still delivers free-tool result
- **Timing cue**: ~15–20 seconds.
- **Narration reminder**: "Below $0.15 the skill refuses to spend without confirmation — safety is automatic."

---

## Common Pitfalls to Avoid

- Running the paid prompt without resetting to $0.50 first.
- Forgetting to capture the Stripe dashboard **immediately** after the paid run (timestamps must match).
- Speaking too fast during the Stripe dashboard moment — pause and let the proof breathe.
- Not saving the full structured output as text (screenshots alone can be hard to read).
- Using old or mismatched Stripe transactions.

---

## Post-Recording Organization

- [ ] Save full structured outputs as:
  - `skill-output-free.txt`
  - `skill-output-paid.txt`
  - `skill-output-low-balance.txt`
- [ ] Save Stripe screenshot(s) as `stripe-test-receipt-paid.png` (include PI ID in filename if possible).
- [ ] Fill in the **evidence-summary-template.md** with actual IDs, timestamps, and screenshots.
- [ ] Update `verifiability-evidence-checklist.md` with your real data.
- [ ] Note the exact Payment Intent ID for the X post / submission blurb.

---

## Quick On-Camera Reminders

- "The agent always states the current budget at the top."
- "Free tools first — only spends when value is clear."
- "Real payment via the official mpp-agent skill — here’s the live Stripe receipt."
- "When balance drops below fifteen cents, it refuses to spend without confirmation."

---

**Ready when you are.** Run the steps in order, capture the evidence immediately, and you’ll have everything needed for a strong, verifiable demo.
