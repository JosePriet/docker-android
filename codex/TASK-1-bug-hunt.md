# Task 1: find gameplay bugs

Read `AGENTS.md`, `codex/CONTEXT.md` and `codex/KNOWN.md` first. Do not change any code in this task: the only file you write is `codex/out/findings.md`.

This is a code review of a hobby game mod. Find correctness bugs a player would run into, or places where the code does not do what CONTEXT.md says it should, in `src/java/fr/testudo/spacecorsair/mod/*.java` and `server/rendezvous/src/index.js`. Hooks in the base game call the mod's static methods (for example `ModPrologue.damage` runs at the top of `PlayerShip.applyDamage`). Priority, in order:
1. Co-op and online play (`ModNet`, `ModLan`, `ModLanUi`, `ModLobby`, `ModLanCheck`, the lobby service): threading problems between the game thread, the network threads and the UI thread; state not reset between sessions; messages lost or handled twice; host and guest getting out of sync; connection fallbacks that hang; lobby limits that stop normal players from playing.
2. Game rules from CONTEXT.md: developer-only ships and items must stay out of online games; the test profile must never reach multiplayer.
3. Save and progress (`ModQol`, `ModIntro`, `ModSaveSig`, `ModV35`): anything that can wipe, duplicate or corrupt progress.
4. Combat (`ModWarpOut`, `ModCaps`, `ModPolice`, `ModCapitals`, `ModEnemyGuns`, `ModStationGuns`, `ModShips`, `ModV34`): reused objects that keep old state, NaN/Infinity, division by zero, lists changed while being looped over.

How to work:
- Follow the code; do not guess. Quote the exact lines and give the sequence of events that leads to the wrong result.
- Mark each finding CONFIRMED (every step followed in this repo) or SUSPECTED (depends on base game code or timing you cannot see; say which part).
- Where you can, show it: run small Node snippets against the service like `server/rendezvous/test/registry.test.mjs` does, or compile the mod (command in AGENTS.md) and write a small throwaway Java check. Say what you ran and what it printed.
- No style comments, refactors or "add logging". Only wrong behaviour. Ten real bugs beat fifty maybes.

Output `codex/out/findings.md`: a table `ID | severity (high/medium/low) | CONFIRMED/SUSPECTED | file:line | bug | what the player sees | suggested fix`, then one section per finding with the quoted code and anything you ran. Open a PR with only that file.
