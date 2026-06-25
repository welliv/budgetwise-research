#!/bin/bash
# reset-for-recording.sh
# One-command reset for BudgetWise Research demo/recording
# Run this right before you start recording.

set -e

echo "=== BudgetWise Research - Pre-Recording Reset ==="

# Reset virtual budget to clean $0.50 demo state
printf 'budgetwise_balance: 0.50\n§\nbudgetwise_spend_log: []\n' > ~/.hermes/memories/MEMORY.md

echo ""
echo "✅ Reset complete. Current state:"
cat ~/.hermes/memories/MEMORY.md | grep -E 'budgetwise_balance|budgetwise_spend_log'

echo ""
echo "Next steps:"
echo "1. Verify mpp-agent is available (optional)"
echo "2. Open Stripe test dashboard"
echo "3. Load the skill and use the exact prompts from references/pre-recording-commands.md"
echo ""
echo "Ready to record!"