#!/usr/bin/env bash
# Demo: full reconcile loop against MOCKED inbox data.
# No real mailbox, no real funds, no network calls.
set -euo pipefail
cd "$(dirname "$0")"
echo "=== mermail-crypto-payout-reconciler — DEMO (mock data) ==="
echo ""
echo "[1/4] Intake (MOCK): 5 payout-claim emails found in fixtures/claims.json"
echo "[2/4] Extract: parsing claim records as UNTRUSTED data..."
echo "[3/4] Validate: sender_auth + wallet format + idempotency checks..."
echo "[4/4] Reconcile: matching against fixtures/expected.csv"
echo ""
node ../skills/mermail-crypto-payout-reconciler/scripts/reconcile.js \
  --claims fixtures/claims.json \
  --expected fixtures/expected.csv \
  --out reports/report.json
echo "Demo complete. Report: demo/reports/report.json"
