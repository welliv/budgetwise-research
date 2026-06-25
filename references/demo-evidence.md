# Capturing Real MPP / Stripe Evidence for Demos & Submissions

This document gives the exact, minimal steps to generate verifiable Stripe test receipts when using `budgetwise-research` + `mpp-agent`.

## Why This Matters
- Judges want proof that the agent performed **real economic actions** (not just simulated memory updates).
- A Stripe test Payment Intent ID + dashboard screenshot is credible and safe.
- Live mode is unnecessary and risky for hackathons.

## Prerequisites (on your local machine)
- Hermes with `mpp-agent` skill installed.
- Stripe test mode connected (via Stripe Link or Tempo testnet for mpp-agent).
- `mppx` available (the skill uses it under the hood).
- A small test 402 endpoint that accepts Stripe method (you can use a self-hosted test merchant or public demo merchants during the hackathon).

## Step-by-Step: Generate a Real Receipt

1. **Ensure a funded test account**
   ```bash
   mppx account list
   mppx account create --network testnet   # if none exists
   ```

2. **Run a paid research query with budgetwise-research**
   Use this exact prompt (or similar):

   ```
   Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
   ```

   The skill should:
   - Detect low/available budget
   - Decide to spend (e.g. $0.10)
   - Call the `mpp-agent` / mppx under the hood
   - Show successful payment + updated balance in its structured output

3. **Capture the skill output**
   Save the full structured response. It will contain something like:
   - "Called the mpp-agent skill for premium research data access. Payment processed successfully."
   - Updated balance (e.g. $0.40 → $0.30)
   - Transaction logged in `budgetwise_spend_log`

4. **Capture Stripe evidence**
   - Go to https://dashboard.stripe.com/test/payments
   - Find the newest Payment Intent (filter by recent time or description containing your query keywords).
   - Copy the Payment Intent ID (e.g. `pi_1234...`).
   - Take a clear screenshot showing:
     - Amount (e.g. $0.10)
     - Status: Succeeded
     - Description or metadata that ties it to the research query
     - Timestamp

   Optional but strong: the receipt URL (Stripe test receipts are shareable).

5. **(Optional) Extract PI directly from mppx**
   Run with verbose output if needed:
   ```bash
   mppx <your-402-url> -v
   ```
   Look for `payment_intent` or `receipt` in the headers/response.

## Recommended Evidence Package for Submission / Video
- Skill output (full structured text)
- Stripe test dashboard screenshot (with PI visible)
- Payment Intent ID (text)
- Short note: "All payments executed via official mpp-agent skill using Stripe test mode. No real funds were used."

## For Video Recording
1. Run the paid query in your Hermes session.
2. Immediately switch to Stripe test dashboard and show the new transaction.
3. Narrate: "The agent decided the free results were insufficient, called mpp-agent, paid $0.10 via Stripe, and the transaction is now visible in the dashboard."

## Tips for Strong Proof
- Use consistent query text in the prompt so the PI description/metadata matches.
- Keep amounts small ($0.05–$0.15) so it looks deliberate.
- If using Tempo instead of Stripe Link, note the method in the video.
- Never show real customer data or live-mode keys.

This setup has been used successfully in previous Hermes + MPP demos to prove autonomous spending.