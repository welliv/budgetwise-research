# Pre-Recording Reset Commands

Run these on your local machine before recording to ensure a clean $0.50 starting state.

## Reset budgetwise-research memory

```bash
# Option 1: Using the memory tool in Hermes (if available in your session)
# Or directly edit the memory file if you know the location:

# Typical location (adjust for your profile)
echo 'budgetwise_balance: 0.50
§
budgetwise_spend_log: []' > ~/.hermes/memories/MEMORY.md   # or the correct path for your setup

# Verify
cat ~/.hermes/memories/MEMORY.md | grep -E "(budgetwise_balance|budgetwise_spend_log)"
```

## Verify mpp-agent is ready

```bash
mppx --version
mppx account list
```

If no accounts:
```bash
mppx account create --network testnet
```

## Quick test that the skill loads

```bash
hermes --skills budgetwise-research chat -q "Use budgetwise-research to check current balance only. Do not research."
```

## Before each recording run

```bash
# 1. Reset memory to $0.50
# 2. Confirm Stripe test dashboard is open
# 3. Have final-demo-transcript.md open
```

Run the reset right before you start the video.
