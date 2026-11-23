# Rules for every batch-2 task (read after AGENTS.md)

- Branch: create your own branch `codex/b2-<NN>-<name>` from `claude/project-thread-kci9au`. Commit only there.
- NEVER merge anything. NEVER push to `sc-mod-workspace`, `releases`, `emulator-tests`, `emulator-results`, `master`, or any `claude/*` branch. Open one PR against `sc-mod-workspace` and leave it open (draft is fine). A human and a second AI review every line before anything merges.
- These are big tasks on purpose. Do not stop at a summary or a plan: do the work, run it, fix what fails, run it again. If you run out of turn time, commit what you have, write `codex/out/b2-<NN>/STATUS.md` (done / not done / next step) and continue in the next turn from that file.
- Every claim about the game code cites `file:line` and is marked CONFIRMED (you followed or ran it) or SUSPECTED (depends on closed base-game code or timing you cannot see).
- Put reports and data under `codex/out/b2-<NN>/`. Put new tests under `work/dtest/` (Java, repo style) or `server/rendezvous/test/` (Node). Put standalone tools under `codex/tools/b2-<NN>/`.
- Game code changes only where your task says so, and only in `src/java/fr/testudo/spacecorsair/mod/` or `server/rendezvous/src/`. Every new gameplay behaviour must sit behind a static flag that defaults OFF, so merging the PR changes nothing until the owner turns it on.
- Do not change balance numbers, owner decisions (codex/CONTEXT.md) or Spanish text. Do not translate anything.
- Java must compile with the javac line in AGENTS.md. Paste the exact commands you ran and their output into the report.
- No secrets, keys, tokens, IPs or personal data.
