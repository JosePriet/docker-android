# Task 3: attack tests for the lobby service and the network message readers

Read `AGENTS.md` and `codex/CONTEXT.md` first. Write tests only; do not change service or mod code. A test that fails because of a real bug is a success: list it at the top of `codex/out/attack-notes.md` with the input that triggers it, and leave that test in (marked `KNOWN-BUG`).

Part A: `server/rendezvous/test/attack.test.mjs`, same style as `server/rendezvous/test/registry.test.mjs` (same mock storage, same `call()` helper, prints `ATTACK OK` or `ATTACK FAILED n`), Node 18+, no npm packages. At least 40 cases:
- hostile input on every route: very long fields, unicode, NUL bytes, `%` sequences, repeated keys, wrong methods, huge bodies, negative/NaN numbers;
- abuse: one caller flooding, many callers from one address, lobby code guessing, token guessing, joining a kicked or full lobby, reporting the same player many times, samples without a joined guest (must be refused), more than one sample per guest session;
- privacy: no stored record ever holds an IP address, a nickname in a sample, or an install id in what a host sees;
- life cycle: lobbies expire; a Durable Object sleep (new `Registry` on the same storage) keeps what it must and forgets addresses; kick/ban records go after a day;
- `/admin/data` refuses wrong keys and the DEV key.
Run it and paste the output in the PR description.

Part B: `work/dtest/fr/testudo/spacecorsair/mod/V52F.java`, plain `main`, Java 8, in the style of `V49.java`, printing `V52F VALUES-OK` when all pass. Feed `ModLanCheck.decode(byte[])` and the `ModNet` frame/packet readers (find them in `ModNet.java`) with: 20 000 random byte arrays (fixed seed), every truncation of a valid message, bit flips, length fields 0 / -1 / Integer.MAX_VALUE, NaN/Infinity floats. Expect: only `IOException` (or null where the code says so), never another exception, never more than 1 MB allocated per call, never a hang (run each call with a time limit). Compile the mod (AGENTS.md) and run it with the classpath from AGENTS.md; paste the output in the PR description.

Also write `codex/out/attack-notes.md`: what each group of cases checks, results, bugs found. Open a PR with these three files.
