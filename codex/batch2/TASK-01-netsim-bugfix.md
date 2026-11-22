# Task 01: build a network simulator, then reproduce and fix the bug-hunt findings

Branch `codex/task-1-bug-hunt` holds `codex/out/findings.md` with 10 findings BH01-BH10 (co-op, duel, internet lobby). None has been verified. Do all of this:

1. **Simulator.** Build an in-JVM test harness under `work/dtest/fr/testudo/spacecorsair/mod/netsim/` that runs one host and up to 3 guests of the mod's network layer (`ModNet`, `ModLan`, `ModLanSync`, `ModLanCheck`, `ModLobby`) in one process, with a fake transport you control: delay, jitter, loss, duplication, reordering, one-way partitions, peer crash, peer restart, clock skew. Stub only what needs Android or the closed game; stub the lobby service with the real `server/rendezvous/src/index.js` run in Node if feasible, otherwise a faithful Java fake (say which). Deterministic seeds; every run prints its seed.
2. **Reproduce.** For each BH finding write a test that fails on the current code (or prove it cannot happen: then mark it REJECTED with the reason). Also run 10,000 random-schedule sessions (join, play, leave, reconnect, duel rounds, host level-up) and report every invariant break: desync of hull/XP/loot, stuck lobby, messages handled twice, guest left in an empty world, thread misuse (record which thread touches game objects).
3. **Fix.** Fix every CONFIRMED bug in `src/java/.../mod/` (and the service if needed). Each fix behind a flag `ModNet.FIX_BHNN` default OFF, with the test passing when ON. Keep owner rules in `codex/CONTEXT.md` exactly.
4. **Report** `codex/out/b2-01/report.md`: per finding CONFIRMED/REJECTED, test name, fix summary, before/after test output; plus new bugs found by the random sessions (numbered NS01...).

Run `cd server/rendezvous && node test/registry.test.mjs` at the end; it must still print `REGISTRY OK`.
