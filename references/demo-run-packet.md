# BudgetWise Research – Demo Run Packet (Combined)

**Purpose**: One clean, copy-paste-ready document to keep open while recording the 1–3 minute demo video.  
**Target runtime**: 90–120 seconds of narration + natural pauses.  
**Starting balance for demo**: $0.50 (clean state).  
**Main focus**: One clear paid transaction + Stripe proof (recommended for simplicity).  
**Bonus segment**: Short low-balance safety demo (optional, 15–20 seconds).

---

## 1. Pre-Demo Setup (Do This First)

1. Reset to clean demo state:
   - Balance = **$0.50**
   - Spend log = empty

2. Confirm `mpp-agent` is ready with Stripe test mode (or Tempo testnet) on your local machine.

3. Have Stripe test dashboard open in a second tab/window: https://dashboard.stripe.com/test/payments

---

## 2. Main Paid Demo Prompt (Use Exactly)

```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
```

**Expected Output Structure** (copy this template for reference):

**Budget Status**: Current balance = $0.50

**Approach**: Decided to use paid tool

**Reasoning**: [Maximum 2 sentences. Clear and concise.]

**Action Taken**: [1-2 precise sentences: free attempt → decided to spend ~$0.10 → called mpp-agent → payment succeeded → balance updated.]

**Updated Budget**: $0.40

**Result**:
- [Concise bullet list of the 3 developments]
- Explicitly note what paid tools added (e.g. "The paid layer added 2 new verified sources from premium dataset X and confirmed recency on Project Y.")

**Reflection**: [Specific insight on value delivered vs cost + one concrete improvement]

---

## 3. Timed Narration Script (90–120 seconds)

**[0:00 – 0:10] Opening**  
*Visuals*: Clean Hermes session. Skill loaded. Balance shown as $0.50.  
"Nearly all research agents either spend money blindly or refuse to spend at all. BudgetWise Research treats money as a scarce resource. It always tries free tools first, only spends when the expected value justifies the cost, and keeps a full audit trail."

**[0:10 – 0:25] Free Tools First (Baseline)**  
*Visuals*: Run the prompt. Show full structured output with $0.50 balance and "Free tools first".  
"Here the agent runs the same query using only free tools. It returns solid, sourced results on recent autonomous AI agent developments. Notice it always states the current budget, its reasoning, and ends with a reflection."

**[0:25 – 0:45] Decision to Spend + Real Payment**  
*Visuals*: Run the prompt again (with the paid permission line). Show the skill output deciding to spend, calling mpp-agent, and updating balance to $0.40.  
"Now we allow it to use paid tools if they meaningfully improve quality. It evaluates the free results, determines that additional verified sources are worth the cost, and calls the official mpp-agent skill. The payment is executed via MPP."

**[0:45 – 1:05] Verifiable Stripe Proof (Critical Moment)**  
*Visuals*: Immediately switch to Stripe test dashboard. Show the new Payment Intent (~$0.10, Succeeded, matching timestamp). Zoom on the Payment Intent ID. Switch back to skill output.  
"This is the real proof. Here is the live Stripe test receipt for the exact amount the agent decided to spend. Payment succeeded. The skill output and the Stripe dashboard match. This is not simulated — this is an actual recorded MPP transaction through the mpp-agent skill."

*(Hold on Stripe dashboard for 6–8 seconds. Optionally read the Payment Intent ID.)*

**[1:05 – 1:20] Low Balance Safety (Short Segment)**  
*Visuals*: Show balance at $0.10 (or quickly reset). Run a paid-eligible query. Show the skill refusing and warning.  
"The skill also knows when to stop. When balance drops below fifteen cents, it refuses to spend, clearly warns the user, and requires explicit top-up confirmation before touching the reserve."

**[1:20 – 1:35] Summary**  
*Visuals*: Final clean structured output + Stripe screenshot side-by-side or freeze.  
"BudgetWise Research gives agents real financial responsibility: free-first reasoning, deliberate spending via mpp-agent, full transparency, and built-in safety. Every decision is logged and every payment is verifiable."

---

## 4. Evidence Checklist (Capture Immediately After Run)

- [ ] Full structured skill output saved (text file or screenshot of terminal)
- [ ] Stripe test dashboard screenshot showing:
  - Amount (~$0.10)
  - Status: Succeeded
  - Timestamp matching the skill run
  - Payment Intent ID visible
- [ ] Payment Intent ID copied as text (e.g. `pi_3...`)
- [ ] (Optional) Receipt URL from Stripe

**Files to prepare for submission/video**:
- `skill-output-paid-demo.txt`
- `stripe-test-receipt.png`
- Payment Intent ID (text)

---

## 5. Suggested On-Screen Text Overlays

- "Starting balance: $0.50"
- "Free tools first"
- "Decided to spend $0.10 via mpp-agent"
- "Real Stripe test payment – Payment succeeded"
- "Balance now $0.40 + fully logged"
- "Low balance protocol triggered (< $0.15)"

---

## 6. Recording Tips

- Keep the Hermes window and Stripe dashboard ready to switch.
- Run the main paid prompt once cleanly for the video.
- If needed, run a second time off-camera to get the perfect Stripe screenshot.
- Speak the key line when showing the dashboard:  
  *"This is the live Stripe test receipt for the exact amount the agent chose to spend."*

---

**This packet is self-contained.** Open this file, run the prompt on your machine with real mpp-agent + Stripe test mode, capture the evidence, and record against the timed script.

You are ready to produce a strong, verifiable 1–3 minute demo.
---

## Stronger Verifiability Section (Add This to Your Recording / Submission)

To prove the payments are real MPP via Stripe (not simulated):

1. Run the paid prompt on your local machine with mpp-agent configured for Stripe test mode.
2. In the video:
   - Show the skill output saying it called mpp-agent and "Payment succeeded".
   - Immediately switch to Stripe test dashboard (https://dashboard.stripe.com/test/payments).
   - Show the new Payment Intent created at the exact same time, same amount, status = Succeeded.
3. Capture:
   - Full structured skill output (text).
   - Screenshot of the Stripe PI with timestamp and amount visible.
   - Payment Intent ID as text.

This combination (skill decision + official mpp-agent call + real Stripe record) is the strongest evidence.

Note: budgetwise-research itself does not speak MPP. It delegates to the official mpp-agent skill (which wraps mppx / link-cli and handles the actual 402 challenge + Stripe payment creation).

