# Task 1: independent bug hunt

Read `AGENTS.md`, `codex/CONTEXT.md` and `codex/KNOWN.md` first. Do not change any code in this task: the only file you write is `codex/out/findings.md`.

Find correctness bugs a player would hit, or that break a rule in CONTEXT.md, in `src/java/fr/testudo/spacecorsair/mod/*.java` and `server/rendezvous/src/index.js`. Hooks in the closed game call the mod's static methods (for example `ModPrologue.damage` runs at the top of `PlayerShip.applyDamage`). Priority, in order:
1. Internet and LAN multiplayer (`ModNet`, `ModLan`, `ModLanUi`, `ModLobby`, `ModLanCheck`, the service): thread races (game thread vs network threads vs UI thread), state not reset between sessions, lost or duplicated messages, host/guest desync, punch/relay fallbacks that stall, service limits that can be bypassed or that lock honest players out.
2. Anti-cheat and DEV rules: a public-build player must never bring DEV ships or DEV gear into an internet game; the test profile must never reach multiplayer.
3. Save and progress (`ModQol`, `ModIntro`, `ModSaveSig`, `ModV35`): anything that can wipe, duplicate or corrupt progress.
4. Combat (`ModWarpOut`, `ModCaps`, `ModPolice`, `ModCapitals`, `ModEnemyGuns`, `ModStationGuns`, `ModShips`, `ModV34`): pooled objects that keep state, NaN/Infinity, division by zero, lists changed while iterated.

Rules:
- Trace the code; do not guess. Quote the exact lines and give a concrete sequence of events that produces the wrong result.
- Mark each finding CONFIRMED (every step traced in this repo) or SUSPECTED (depends on closed game code or timing you cannot see; say which part).
- Where you can, prove it: run `node server/rendezvous/test/registry.test.mjs`-style snippets for the service, or compile the mod (command in AGENTS.md) and write a small throwaway JVM check. Say what you ran and what it printed.
- No style comments, refactors or "add logging". Only wrong behaviour. Ten real bugs beat fifty maybes.

Output `codex/out/findings.md`: a table `ID | severity (high/medium/low) | CONFIRMED/SUSPECTED | file:line | defect | failure scenario | suggested fix`, then one section per finding with the quoted code and any proof you ran. Open a PR with only that file.
