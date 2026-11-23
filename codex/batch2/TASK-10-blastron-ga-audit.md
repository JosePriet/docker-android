# Task 10: audit the Blastron and Global Assault offline patches

Two other restored games in separate repos (open each repo in Codex separately; this file is the brief for both):
- `JosePriet/blastron-offline`: Unity game made to work offline (local endpoint/catalog replacing the dead server, C# patcher, native lib patch). Release on its `releases` branch.
- `JosePriet/global-assault-offline`: Unity game (Kongregate) made to work offline; releases via `.github/workflows/release.yml` on its `releases` branch.

For each repo, on your own branch `codex/b2-10-audit` in that repo:
1. Map how the offline layer works: what server calls the game made, what replaces each one, where data comes from.
2. Find player-facing bugs: server calls with no local answer (find them by reading the decompiled call sites or catalog), progress that does not save or saves wrong, currency/item duplication, crashes on first launch or after update, content locked behind the dead server (store, events, PvP, leaderboards), anything that differs from the original game data in the repo.
3. Where you can, prove it with a small runnable check (C#/Python/Node) and say what it printed.
4. Write `audit/findings.md` (table: ID, severity, CONFIRMED/SUSPECTED, file:line, bug, what the player sees, suggested fix), then fix the top 5 on the same branch.
Rules: never merge, never push to `releases` or the default branch, no keys or signing material, do not touch release/VERSION. Open one PR per repo and leave it open.
