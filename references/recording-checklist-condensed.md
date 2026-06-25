# Condensed Recording Checklist – BudgetWise Research

**Goal**: Record 1-3 min video with real Stripe proof. Start with clean $0.50 balance.

## Pre-Recording (5 min)
- [ ] Reset: budgetwise_balance = 0.50, spend_log = []
- [ ] Confirm mpp-agent + Stripe test mode ready
- [ ] Open: Stripe test dashboard + final-demo-transcript.md + compact-evidence-block.md
- [ ] Test screen recording (Hermes + easy Stripe switch)

## Recording Order
1. **Free Path** (~15s)
   - Prompt: `Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources."`
   - Show: Full output, $0.50 balance, "Free tools first", Reflection
   - Capture: Skill output

2. **Paid Path** (Main, ~60s)
   - Prompt: Add `Use paid tools via mpp-agent if they would meaningfully improve quality or recency.`
   - Show: Decision + mpp-agent call + "Payment succeeded" + $0.40 balance
   - **Immediately** switch to Stripe dashboard
   - Capture: Skill output + Stripe screenshot (PI ID, amount, timestamp, Succeeded)
   - Narrate: "Real payment via mpp-agent + Stripe"

3. **Low Balance** (Short, ~15s)
   - Set balance to $0.10
   - Run paid prompt again
   - Show: Warning + refusal to spend
   - Capture: Output

## Post-Recording (10 min)
- [ ] Save: paid-run-output.txt + stripe-pi-screenshot.png + video
- [ ] Fill evidence-summary-template.md and compact-evidence-block.md with real data
- [ ] Verify timestamps match between skill output and Stripe

## Common Pitfalls
- Forgetting to capture Stripe dashboard immediately
- Using old/non-matching transactions
- Not saving full text output

**Files to attach to X post**: Video + Stripe screenshot + skill output snippet
