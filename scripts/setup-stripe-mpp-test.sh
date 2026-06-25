#!/bin/bash
# setup-stripe-mpp-test.sh
# Run this on YOUR LOCAL MACHINE (not this server)
# Sets up mppx with your Stripe test keys for real test payments via budgetwise-research

set -e

echo "=== BudgetWise Research - Stripe Test + mppx Setup ==="
echo "This will allow the skill to make real test payments visible in your Stripe dashboard."
echo ""

# 1. Install mppx
echo "1. Installing mppx..."
npm install -g mppx

# 2. Set your Stripe test secret key
# ===> PASTE YOUR sk_test_ KEY HERE <===
export MPPX_STRIPE_SECRET_KEY=YOUR_SK_TEST_KEY_HERE

# Persist it
echo 'export MPPX_STRIPE_SECRET_KEY=YOUR_SK_TEST_KEY_HERE' >> ~/.bashrc
source ~/.bashrc

echo "✅ Stripe secret key set (test mode only)"

# 3. Create mppx account (best on desktop with keyring)
echo ""
echo "2. Creating mppx account..."
mppx account create

# 4. Verify
echo ""
echo "3. Verification:"
mppx --version
mppx account list

# 5. Test payment (will appear in Stripe Test mode dashboard)
echo ""
echo "4. Testing a payment..."
mppx https://mpp.dev/api/ping/paid --verbose

echo ""
echo "✅ Done!"
echo "Check your Stripe Test Dashboard: https://dashboard.stripe.com/test/payments"
echo "You should see a new successful Payment Intent."
echo ""
echo "Now run the skill locally with real test payments enabled."