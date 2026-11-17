# Task 3: robustness tests for the lobby service and the network message readers

Read `AGENTS.md` and `codex/CONTEXT.md` first. Write tests only; do not change service or mod code. A test that fails because of a real bug is useful: list it at the top of `codex/out/test-notes.md` with the input that triggers it, and keep that test in (marked `KNOWN-BUG`).

Part A: `server/rendezvous/test/stress.test.mjs`, same style as `server/rendezvous/test/registry.test.mjs` (same mock storage, same `call()` helper, prints `STRESS OK` or `STRESS FAILED n`), Node 18+, no npm packages. At least 40 cases:
- unusual input on every route: very long fields, unicode, NUL bytes, `%` sequences, repeated keys, wrong HTTP methods, oversized bodies, negative/NaN numbers; every one must get a clean 4xx reply, never a 5xx;
- heavy use: one caller sending many requests, many callers behind one address, wrong lobby codes and wrong tokens, joining a lobby you were removed from or that is full, many reports about the same player, a stats sample sent without a joined guest (must be refused), more than one sample per guest session (must be refused);
- privacy: no stored record ever holds an IP address, a nickname inside a sample, or an install id in what a host sees;
- life cycle: lobbies expire; after a restart (new `Registry` on the same storage) the service keeps what it must and forgets network addresses; removal records go after a day;
- `/admin/data` refuses wrong keys and the DEV key.
Run it and paste the output in the PR description.

Part B: `work/dtest/fr/testudo/spacecorsair/mod/V52F.java`, plain `main`, Java 8, in the style of `V49.java`, printing `V52F VALUES-OK` when all pass. Feed `ModLanCheck.decode(byte[])` and the `ModNet` frame/packet readers (find them in `ModNet.java`) with: 20 000 random byte arrays (fixed seed), every truncation of a valid message, single-bit changes, length fields 0 / -1 / Integer.MAX_VALUE, NaN/Infinity floats. Expected: only `IOException` (or null where the code says so), never another exception, never more than 1 MB allocated per call, never a hang (give each call a time limit). Compile the mod (AGENTS.md) and run it with the classpath from AGENTS.md; paste the output in the PR description.

Also write `codex/out/test-notes.md`: what each group of cases checks, results, bugs found. Open a PR with these three files.
