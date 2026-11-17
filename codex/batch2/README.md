# Codex batch 2 (2026-11-17)

Ten large tasks, heaviest first. Rules for all of them: `AGENTS.md`, then `codex/batch2/COMMON.md`.
Codex setup: repo JosePriet/docker-android, branch `claude/project-thread-kci9au`. Prompt for task NN:
"Do codex/batch2/TASK-NN-*.md. Read AGENTS.md and codex/batch2/COMMON.md first. Never merge."

| # | Task | Output |
|---|---|---|
| 01 | Network simulator + fix the 10 Codex bug-hunt findings | fixes behind flags, sim harness, per-bug repro tests |
| 02 | Calibrate the balance sim against emulator damage data | sim within 25% of emulator, full tuning tables |
| 03 | Enemy AI behaviour overhaul prototype | headless arena sim, new AI behind flag, A/B numbers |
| 04 | Procedural mission and event generator prototype | generator + 1,000-seed validation, game hook behind flag |
| 05 | Save and network-message fuzzing | fuzz harness, crash list, fixes |
| 06 | Whole-codebase map, dead code and refactor report | hook map, call graph, dead code list, refactor plan |
| 07 | Test harness expansion (pure-logic unit tests for every mod class) | 300+ tests, one-command runner |
| 08 | Performance profiling of per-frame code | hot-path report, allocation fixes behind flags, benchmarks |
| 09 | Text and Spanish coverage linter (no translating) | linter script, gap report |
| 10 | Blastron and Global Assault offline-patch audits | findings per repo (other repos, own PRs) |

Inputs added for this batch: `codex/batch2/data/dmgtest/` (emulator damage logs, RESULTS.md).
