# Task 05: fuzz saves, config files and network messages

Targets: every reader of player data and every reader of bytes from the network.
- Saves and config: `ModSave`, `ModSaveSig`, `ModIntro`, `ModQol`, `ModV35`, `ModTestMode`, `ModDev`, `ModLang`, anything else that reads files (grep for file and stream reads).
- Network: every message parser in `ModNet`, `ModLan`, `ModLanSync`, `ModLanCheck`, `ModLobby`; service request parsing in `server/rendezvous/src/index.js`.

1. List every reader (file:line), its format, and what a corrupt input does today.
2. Build fuzzers: JVM harness in `work/dtest/` (mutation fuzzing from valid seed inputs you generate with the mod's own writers: bit flips, truncation, huge lengths, negative counts, NaN/Infinity floats, duplicate keys, wrong versions, unicode). Node fuzzer for the service under `server/rendezvous/test/fuzz.test.mjs`. Run at least 1,000,000 JVM cases and 200,000 service requests in total. Log seeds.
3. Classify every failure: crash, hang, wipes progress, duplicates items/credits, bypasses DEV/test-profile rules (codex/CONTEXT.md), accepted invalid state. Minimise each to the smallest input.
4. Fix each real problem behind a flag default OFF (or in the service if it is a pure input check), with a regression test.
Skip what `codex/KNOWN.md` lists. Output `codex/out/b2-05/report.md` with the failure table and minimal inputs (hex).
