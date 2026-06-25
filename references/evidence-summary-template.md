# Evidence Summary Template – Real MPP Payments

**Project:** budgetwise-research  
**Date of run:** [YYYY-MM-DD]  
**Environment:** Local Hermes + mpp-agent (Stripe test mode)

## Claim
budgetwise-research performs real economic actions. When free tools are insufficient, it delegates to the official `mpp-agent` skill to execute a real HTTP 402 / Machine Payments Protocol (MPP) transaction, including payments settled via Stripe (test mode).

## Evidence Captured

| Item | Description | Location |
|------|-------------|----------|
| Skill decision | Structured output showing "Decided to use paid tool" + reasoning | [paste or link to output] |
| mpp-agent call | Explicit mention: "Called the mpp-agent skill for [reason]" | [paste or link to output] |
| Payment result | "Payment succeeded" / "payment processed successfully" | [paste or link to output] |
| Budget update | Balance deducted (e.g. $0.50 → $0.40) + entry in spend log | [paste or link to output] |
| Stripe Payment Intent | Real PI created via Stripe test mode, matching amount and timestamp | Screenshot + PI ID below |
| Payment Intent ID | `pi_XXXXXXXXXXXXXXXX` | [paste ID] |

### Screenshots
- Skill output (full structured response)
- Stripe test dashboard showing the new Payment Intent (amount, status = Succeeded, timestamp)

## How to Reproduce

1. Ensure `mpp-agent` is configured on your machine with Stripe test mode (or Link test credentials).
2. Reset budgetwise-research to a clean state ($0.50 balance, empty log).
3. Run this exact prompt:
   ```
   Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
   ```
4. Immediately capture:
   - The full structured skill output.
   - The corresponding entry in your Stripe test dashboard (`https://dashboard.stripe.com/test/payments`).
5. Verify timestamps and amounts match between the skill output and the Payment Intent.

## Notes on the Payment Flow
- `budgetwise-research` does **not** implement MPP or Stripe logic itself.
- It delegates payment decisions and execution to the official `mpp-agent` skill.
- `mpp-agent` handles the real HTTP 402 challenge and creates the Stripe Payment Intent (when the merchant advertises Stripe or when using the Link client).
- The receipt / Payment Intent is visible in the Stripe dashboard and is the primary verifiable artifact.

## Supporting Files
- [Verifiability Evidence Checklist](verifiability-evidence-checklist.md)
- [Demo Run Packet](demo-run-packet.md)
- [Evidence Capture Helper](evidence-capture-helper.md)

---

**This template can be copied into GitHub issues, READMEs, or submission documents alongside your screenshots.**
