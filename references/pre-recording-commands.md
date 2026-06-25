# Pre-Recording Commands & Checklist – BudgetWise Research

**Goal**: Get to a clean $0.50 state and be ready to record in under 60 seconds.

## 1. One-Command Reset (Recommended)

Run this in your terminal before recording:

```bash
# Reset to clean demo state
printf 'budgetwise_balance: 0.50\n§\nbudgetwise_spend_log: []\n' > ~/.hermes/memories/MEMORY.md

# Verify
cat ~/.hermes/memories/MEMORY.md | grep -E 'budgetwise_balance|budgetwise_spend_log'
```

Expected output:
```
budgetwise_balance: 0.50
budgetwise_spend_log: []
```

## 2. Quick Pre-Recording Checklist (30-60 seconds)

- [ ] Run the reset command above
- [ ] Confirm mpp-agent is ready:
  ```bash
  mppx --version
  mppx account list
  ```
- [ ] Open these in tabs/windows:
  - Final demo transcript (final-demo-transcript.md)
  - Stripe test dashboard: https://dashboard.stripe.com/test/payments
  - This checklist
- [ ] Have the two exact prompts ready (copy below)
- [ ] Test that Hermes can load the skill:
  ```bash
  hermes --skills budgetwise-research chat -q "Use budgetwise-research to check current balance. Do not research anything."
  ```

## 3. Exact Prompts to Copy-Paste

### Free Tools Baseline
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources."
```

### Main Paid Demo (Core of the video)
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
```

## 4. Sanity Checks Before Hitting Record

- Current balance shows **$0.50**
- No old transactions in spend_log
- Stripe test dashboard is open and you can see recent payments
- You know the exact moment in the transcript to switch to Stripe (after the paid run)

## 5. Recording Flow Reminder

1. Free path prompt → show output quickly
2. Paid path prompt → show full output → immediately switch to Stripe dashboard
3. (Optional) Low balance segment

**Pro tip**: Run the paid prompt once *off-camera* first to warm up the Stripe flow, then do the final clean run on camera.

## 6. After Recording

- Immediately save:
  - Full skill output (text)
  - Stripe Payment Intent screenshot (with timestamp)
- Fill in `evidence-summary-template.md` and `compact-evidence-block.md`
- Verify timestamps roughly match

## Quick On-Camera Lines (Copy These)

- "First, the agent runs the query using only free tools. No money spent."
- "Now with permission to use paid tools when they add value. It calls mpp-agent..."
- "Here is the live Stripe test receipt for the exact amount it chose to spend."
- "When balance drops below fifteen cents, the skill refuses to spend without confirmation."

