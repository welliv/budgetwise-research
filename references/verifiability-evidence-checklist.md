# Verifiability Evidence Checklist for BudgetWise Research

This checklist ensures the claim "the agent performs real MPP payments via Stripe" is strongly verifiable for hackathon judges, demos, and submissions.

## Core Claims We Must Prove
1. budgetwise-research actually decides to spend and calls the mpp-agent skill.
2. mpp-agent performs a real HTTP 402 payment flow.
3. The payment settles via Stripe (test mode) and appears in the Stripe dashboard.
4. The skill correctly deducts the budget and logs the transaction.

## What Counts as Strong Evidence
- Skill output showing the decision + "Called the mpp-agent skill" + "Payment succeeded" + updated balance.
- Matching Stripe test dashboard entry (Payment Intent) created at the same time with the same amount.
- (Bonus) Verbose mpp-agent / mppx output showing the 402 challenge was received and paid.

## Step-by-Step Capture Process (Run on Your Local Machine)

1. **Prepare a clean demo state**
   - Reset budget to $0.50
   - Clear spend log
   - Ensure mpp-agent / mppx is configured with Stripe test mode (or Link test credentials)

2. **Run the paid demo prompt**
   ```
   Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
   ```

3. **Capture the skill output immediately**
   - Save the full structured response as text.
   - Look for these exact phrases or close equivalents:
     - "Decided to use paid tool"
     - "Called the mpp-agent skill"
     - "Payment processed successfully" or "payment succeeded"
     - Updated balance (e.g. $0.50 → $0.40)
     - Transaction in the Reflection or Action Taken

4. **Capture Stripe dashboard proof (do this within 1-2 minutes)**
   - Go to https://dashboard.stripe.com/test/payments
   - Find the newest Payment Intent.
   - Screenshot showing:
     - Amount (should match what the skill said, e.g. $0.10)
     - Status = Succeeded
     - Timestamp (should be within seconds of the skill run)
     - Description or metadata that ties back to the research query (if visible)
   - Copy the Payment Intent ID (e.g. `pi_3ABC123...`)

5. **Optional but powerful: capture the actual 402 + payment flow**
   - Run the same prompt with extra logging if possible, or run `mppx <the-402-url> -v` manually.
   - Look for the `www-authenticate: ... method="stripe"` header.
   - The receipt should be attached in the response headers.

6. **Capture the budget log**
   - The skill should show the transaction in `budgetwise_spend_log` (or you can show the memory file).

## How to Present the Evidence (for video + submission)

In the video (see video-narration.md and demo-run-packet.md):
- Show the skill output deciding to spend and calling mpp-agent.
- Immediately cut to Stripe dashboard showing the new PI.
- Say clearly: "The agent called the official mpp-agent skill. Here is the live Stripe test receipt for the exact amount it chose to spend. Payment succeeded."

In the GitHub / submission:
- Include:
  - Full skill output (text file or screenshot)
  - Stripe dashboard screenshot (with PI ID visible)
  - Payment Intent ID as text
  - Link to the demo video at the exact timestamp of the payment proof

## What This Proves
- The budgetwise-research skill does delegate to mpp-agent for payments.
- mpp-agent performed a real (test-mode) Stripe payment for a 402 challenge.
- The skill correctly observed success and updated its budget.
- All of this is timestamp-correlated and publicly verifiable in test mode.

## Notes on mpp-agent Internals
budgetwise-research does **not** implement MPP or Stripe itself. It calls the official `mpp-agent` skill (maintained as part of the Hermes ecosystem). 

That skill wraps:
- `mppx` (lightweight)
- `link-cli` for Stripe Link / Shared Payment Tokens (when the 402 advertises `method="stripe"`)
- Tempo or other wallets for non-Stripe flows

When you have Stripe test mode connected, a successful `mppx <url>` or `link-cli mpp pay` will create a real Payment Intent visible in your Stripe dashboard.

## Common Weaknesses to Avoid
- Only showing skill memory updates without Stripe dashboard → weak.
- Showing old Stripe transactions that don't match the timestamp → weak.
- Claiming "real payments" without any dashboard or receipt screenshot → not credible.

Use this checklist and the files in references/ to make the claim bulletproof.

