# Demo Run Transcript – BudgetWise Research (Ready-to-Record)

**Focus**: One strong paid transaction + short low-balance segment  
**Target length**: 90–120 seconds of narration + screen actions  
**Starting balance for main run**: $0.50 (clean state)

---

## Pre-Recording Checklist
- Reset balance to $0.50, clear spend log
- Have Stripe test dashboard ready (https://dashboard.stripe.com/test/payments)
- Have the Demo Run Packet open
- Record with clear screen (Hermes + Stripe side-by-side if possible)

---

## Segment 1: Free Tools Path (Baseline – ~15 seconds)

**Prompt to paste**:
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources."
```

**What to show on screen**:
- Full structured output
- Highlight: **Budget Status**: $0.50
- Highlight: **Approach**: Free tools first
- Highlight: **Reflection** section

**Narration beat**:
"First, the agent runs the query using only free tools. It returns solid results. Notice it always states the current budget and ends with a reflection. No money spent."

**Expected output highlights** (use real output from your run):
- Budget Status $0.50
- Approach: Free tools first
- Result with 3 developments (use data from recent search)
- Reflection present

**Timing**: ~0:00 – 0:15

---

## Segment 2: Paid Path – The Main Demo (Core – ~50 seconds)

**Prompt to paste**:
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
```

**What to show on screen**:
- Skill deciding to spend
- "Called the mpp-agent skill"
- Updated budget (e.g. $0.40)
- Then **immediately cut to Stripe test dashboard**

**Narration beat**:
"The agent evaluates the free results and decides paid tools would improve quality and recency. It calls the official mpp-agent skill and executes a real payment. Here is the live Stripe test receipt – proof of an actual MPP transaction."

**Key on-screen moment**:
- Hold on Stripe dashboard for 6–8 seconds
- Zoom on amount (~$0.10), status Succeeded, timestamp
- Optionally read Payment Intent ID

**Expected structure highlights**:
- Budget Status: $0.50
- Approach: Decided to use paid tool
- Reasoning (max 2 sentences)
- Action Taken: mentions mpp-agent + payment succeeded
- Updated Budget: $0.40
- Result: lists 3 items + explicit note on what paid added (e.g. "added 2 new verified sources and confirmed recency")
- Reflection: value vs cost + improvement

**Timing**: ~0:15 – 1:05

---

## Segment 3: Low Balance Safety (Short – ~15 seconds)

**Pre-step**: Temporarily set balance to $0.10 (or use a fresh low-balance state)

**Prompt to paste** (same as paid):
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
```

**What to show on screen**:
- Budget Status: $0.10
- Warning about low balance
- It still delivers free-tool result but refuses to spend

**Narration beat**:
"When the balance drops below fifteen cents, the skill refuses to spend, warns the user, and asks for top-up confirmation. Safety first."

**Timing**: ~1:05 – 1:20

---

## Post-Recording / Evidence Capture
- Save full structured outputs
- Screenshot Stripe dashboard with matching timestamp
- Update evidence checklist from references/evidence-capture-helper.md

**End screen suggestion**:
Split view of final skill output + Stripe receipt screenshot.

---

This transcript is designed to be followed while recording. Run the prompts on your machine with real mpp-agent + Stripe test mode for authentic proof.
