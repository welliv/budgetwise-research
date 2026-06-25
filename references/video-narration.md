# Video Narration Script – BudgetWise Research Skill Demo

**Target length**: 90–120 seconds (1.5–2 min)  
**Style**: Calm, confident, professional. Show the screen clearly.  
**Key moments to highlight**: Free tools first → Decision to spend → Real MPP payment → Stripe receipt proof → Low balance safety.

---

### [0:00 – 0:08] Opening + Problem
**Visuals**: Hermes session open. Skill list showing `budgetwise-research` loaded. Current balance visible as $0.50.

**Narration**:
"Most research agents either spend blindly or refuse to spend at all. BudgetWise Research is different. It treats money as a real, limited resource. It always tries free tools first, only spends when the value is clear, and maintains full transparency and an audit trail."

---

### [0:08 – 0:25] Free Tools Path (No Spend)
**Visuals**: Run the research query. Show the full structured output with $0.50 balance, "Free tools first" approach, and the three developments listed.

**Narration**:
"Here’s the agent researching recent developments in autonomous AI agents. It starts with free tools. It returns solid, sourced results. Notice the exact structure: it always states the current budget, its approach, reasoning, and a reflection at the end."

---

### [0:25 – 0:45] Decision to Spend + Real Payment
**Visuals**: Run the same query but with the explicit permission to use paid tools if helpful. Show the skill output deciding to spend $0.10, calling mpp-agent, and updating the balance to $0.40.

**Narration**:
"Now we give it permission to use paid tools when they would meaningfully improve quality. It evaluates the free results, decides the incremental value justifies a small spend, and calls the official mpp-agent skill. The payment goes through MPP using Stripe."

---

### [0:45 – 1:05] Verifiable Stripe Proof (Most Important Moment)
**Visuals**: Switch immediately to Stripe test dashboard. Show the new Payment Intent (amount ~$0.10, status Succeeded, timestamp matching the run). Zoom in on the Payment Intent ID. Then switch back to the skill output showing the updated balance and log.

**Narration**:
"This is the key proof. Here’s the live Stripe test receipt. Payment Intent created, succeeded, for exactly the amount the agent decided to spend. The skill output and the Stripe dashboard match. This is not simulated — this is a real, recorded MPP transaction."

*(Hold on the Stripe screen for 6–8 seconds. Optionally read the Payment Intent ID aloud.)*

---

### [1:05 – 1:25] Low Balance Safety
**Visuals**: Set or show balance at $0.10. Run another paid-eligible query. Show the skill correctly refusing to spend and asking for top-up.

**Narration**:
"It also knows when to stop. When the balance drops below fifteen cents, it refuses to spend, clearly warns the user, and asks for confirmation before touching the last of the budget. Safety is built in."

---

### [1:25 – 1:40] Summary + Call to Action
**Visuals**: Final clean run or split screen of structured output + Stripe receipt.

**Narration**:
"BudgetWise Research gives agents real financial responsibility: free-first reasoning, deliberate spending through mpp-agent, full transparency, and proper safety rails. Every decision is logged, every payment is verifiable."

---

### Timing & Production Notes
- Total target: ~90 seconds of talking + natural pauses.
- Show the **exact** structured output on screen during narration.
- When showing Stripe, keep the timestamp visible so it matches the skill run.
- End with a clean freeze on the final Result + Reflection sections.
- Optional: overlay the Payment Intent ID on screen when you show the dashboard.

---

### Suggested On-Screen Text Overlays (optional)
- "Free tools first — $0.50 balance"
- "Decided to spend $0.10"
- "Real Stripe test payment via mpp-agent"
- "Balance now $0.40 + logged"
- "Low balance protocol triggered at $0.10"

Use this script directly for recording or as the base for your 1–3 minute video.