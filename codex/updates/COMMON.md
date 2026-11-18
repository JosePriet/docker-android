# Rules for every content-updates task (read after AGENTS.md)
- Design: space-corsair content-updates plan, copied here as codex/updates/PLAN.md. Follow it; where it is silent, choose the simplest option and say so in your report.
- Branch: create `codex/upd-<NN>-<name>` from `claude/project-thread-p6fdqj`. Commit only there. Open one draft PR against `sc-mod-workspace`. NEVER merge. NEVER push to sc-mod-workspace, releases, emulator-tests, emulator-results, master or any claude/* branch.
- No game behaviour changes: tools, tests and reports only. Do not wire anything into the game hooks. Do not change balance numbers or Spanish text.
- Java: Java 8, android-free where possible (plain java.util.zip, java.security). Must compile with the javac line in AGENTS.md. Python: stdlib only, run with `python3 -I`.
- Put tools under `codex/tools/upd-<NN>/`, reports under `codex/out/upd-<NN>/`, Java tests under `work/dtest/`.
- Every claim about the game code cites file:line and is marked CONFIRMED or SUSPECTED.
- Paste the exact commands you ran and their output into the report. If you run out of time, write codex/out/upd-<NN>/STATUS.md (done / not done / next) and continue from it.
- No secrets, keys, tokens, IPs or personal data. Test keys are generated inside the test and never committed.
