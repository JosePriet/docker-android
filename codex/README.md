# Codex tasks (2026-11-17, from sc-mod-workspace f9f0a7b)

Three independent tasks. Run each as its own Codex task on this repository (branch `claude/project-thread-fuw6ke`, which is sc-mod-workspace plus this folder). Paste the line "Do the task in codex/TASK-N-....md. Follow AGENTS.md." as the prompt. Each task ends in a pull request against `sc-mod-workspace`; Claude reviews every claim against the code before anything is merged.

| Task | File | Output |
|---|---|---|
| 1 | TASK-1-bug-hunt.md (gameplay bugs) | `codex/out/findings.md` (no code changes) |
| 2 | TASK-2-balance-sim.md | `tools/balance_sim/` (Python) + `codex/out/balance-report.md` |
| 3 | TASK-3-robustness-tests.md | `server/rendezvous/test/stress.test.mjs`, `work/dtest/fr/testudo/spacecorsair/mod/V52F.java`, `codex/out/test-notes.md` |

Shared inputs: `CONTEXT.md` (design rules), `KNOWN.md` (findings already fixed: do not report again), `data/` (game tables for task 2).
