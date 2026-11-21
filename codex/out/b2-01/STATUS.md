# Task 01 status

Implementation and verification are complete on `codex/b2-01-netsim`, based on `claude/project-thread-kci9au` at `a02248c`.

- All ten focused findings reproduced on the baseline and passed with their fixes enabled. BH10 uses an expiring simulated TURN allocation.
- Seeds 1–10000 ran with fixes off and on. The baseline recorded a stripped sector in 10,000 sessions, lost XP in 9,896, and reader-thread game-table access in one cold-start session (NS01). The enabled run recorded zero invariant breaks. A repeated sweep produced identical per-seed files.
- Java compiled with `--release 8`. The existing suites ended with `V49 VALUES-OK` and `REGISTRY OK`.
- Review destination: `sc-mod-workspace`. The two branches have overlapping changes in four files. Integration remains with the reviewers.

[Report](report.md) · [All seed outcomes](seed-ranges.tsv) · [Reader access sites](reader-access.tsv)
