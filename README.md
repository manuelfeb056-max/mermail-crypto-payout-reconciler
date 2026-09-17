# 🧾 mermail-crypto-payout-reconciler

**Bounty:** Superteam Earn — "Build and Demo a Mermail Agent Skill" (500 USDC)
**Status:** built, demo passing, ready to submit — only the Superteam Earn account step (human) remains.

A Mermail agent skill that reconciles crypto payout claims arriving by email (bounties, contractor pay, contributor rewards) against the owner's expected payout list. Email is treated as untrusted data; the skill ends at the triage report and **never auto-pays or auto-sends**.

## Layout

```
bounties/mermail/
├── SUBMISSION.md                          # Superteam Earn submission writeup
├── README.md                              # this file
├── skills/mermail-crypto-payout-reconciler/
│   ├── SKILL.md                           # skill spec (AUTHORING.md-compliant)
│   ├── agents/openai.yaml                 # OpenAI metadata, hosted MCP
│   ├── references/tools.md                # exact MCP tool names, owns none
│   ├── references/security.md             # 10-rule security contract
│   └── scripts/reconcile.js               # deterministic reconciler (Node, 0 deps)
├── demo/
│   ├── run.sh                             # end-to-end demo (mock data)
│   ├── fixtures/claims.json               # 5 mock claim emails
│   ├── fixtures/expected.csv              # owner payout list
│   └── reports/                           # run.log + report.json (generated)
├── tests/scenarios.json                   # 7 scenarios (happy path + 6 security)
└── ledger/                                # append-only claims ledger (runtime)
```

## Quick demo (no credentials needed)

```bash
bash demo/run.sh
```

Expected: 1 matched, 1 amount mismatch, 1 duplicate, 1 unverifiable sender, 1 injection attempt — 0 auto-actions taken, by design.

## Submit checklist (for Mannuel)

- [ ] Create account at earn.superteam.fun (email + login, ~5 min)
- [ ] Set payout wallet in profile: `9XcJk1iugDhMxLRYHPGbJbDAWTLCJhdVGqyoDTyKyzBt`
- [ ] Open the "Build and Demo a Mermail Agent Skill" bounty → submit:
  - Link to this repo (push to GitHub first)
  - Paste `SUBMISSION.md` (or link it)
  - Attach `demo/reports/run.log` as demo evidence
