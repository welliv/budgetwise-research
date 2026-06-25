# budgetwise-research — Getting Started

## Purpose
A controlled research skill that enforces deliberate spending using a virtual budget and the `mpp-agent` skill for paid tool calls (MPP / HTTP 402).

## Quick Invocation
- CLI: `hermes --skills budgetwise-research chat -q "your research query"`
- In session: Mention "use budgetwise-research" or load explicitly.
- Telegram / gateway: The skill loads when referenced or preloaded in profile.

## Initial Budget
- Starts at **$0.50 USD**
- Managed via persistent Hermes memory (keys: `budgetwise_balance`, `budgetwise_spend_log`)
- The skill will automatically retrieve and report balance before decisions.

## Core Flow (enforced by skill)
1. Free tools + knowledge first.
2. Evaluate if paid step (via mpp-agent) is justified.
3. State balance, cost estimate, reasoning.
4. Only spend if policy allows.
5. Log every transaction.
6. Warn at low balance (< $0.15).

## Recommended Usage with mpp-agent
Ensure `mpp-agent` is available and you have a funded wallet / account for real payments when the research truly benefits.

Example research triggers:
- Up-to-date pricing, benchmarks, or market data not reliably in training data.
- Specific API-backed facts where free web search is insufficient.

## Transparency
Every response from this skill follows the exact **Response Structure** defined in SKILL.md.

## Topping Up
When low balance: the skill will ask. Use real-world top-up flows (Stripe Link, Tempo, etc.) or reset via memory tool if testing.

## Self-Improvement
The skill includes light reflection after paid actions to evolve decision rules over time.

## Related Skills
- `mpp-agent` (required for actual payments)
- Other research skills (arxiv, etc.) as free fallbacks

For full logic, see the main SKILL.md.
