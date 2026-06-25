# Evidence Capture Helper – BudgetWise Research

Use this prompt + output template when you want clean, submission-ready evidence of a real MPP payment.

## Recommended Starting State (for clean demo)
- Reset balance to **$0.50**
- Clear spend log

## Exact Prompt to Run
```
Use budgetwise-research to research: "Top 3 most interesting new developments in autonomous AI agents from the last 30 days, with sources." Use paid tools via mpp-agent if they would meaningfully improve quality or recency.
```

## Expected Clean Output Format (copy this structure)

**Budget Status**: Current balance = $0.50

**Approach**: Decided to use paid tool

**Reasoning**: [2 sentences max]

**Action Taken**: [1-2 sentences: free attempt → decided to spend $0.10 → called mpp-agent → payment succeeded]

**Updated Budget**: $0.40

**Result**: 
- Item 1...
- Item 2...
- Item 3...
  (Explicitly state what the paid tools added, e.g. "The paid layer added two additional verified sources and confirmation of recency from premium dataset X.")

**Reflection**: [Value vs cost insight + one concrete improvement]

## After the Run – Evidence Checklist

1. Save the full structured skill output (text).
2. Go to Stripe test dashboard → Payments.
3. Screenshot the new transaction:
   - Amount ($0.10)
   - Status: Succeeded
   - Timestamp (should match the run)
   - Payment Intent ID visible
4. (Optional but strong) Copy the Payment Intent ID and the receipt URL if available.

## Quick One-Liner for Recording
"Agent evaluated free results, decided paid data would add verifiable sources, spent $0.10 through mpp-agent using Stripe. Here is the live test receipt."

## Files to Attach in Submission / README
- `skill-output-paid-run.txt`
- `stripe-test-receipt-screenshot.png`
- Payment Intent ID (text)

This package, combined with the video narration, makes the real economic behavior undeniable.