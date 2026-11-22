# Task 03: enemy AI behaviour overhaul prototype

Enemy behaviour today comes from the closed game plus mod layers (`ModTitanAI`, `ModFleet`, `ModPolice*`, `ModCapitals`, `ModBoss`, `ModWings`, `ModAegisDrones`, `ModWarpOut`). Goal: a stronger, more varied AI the owner can switch on later.

1. **Map** what enemies do today: every decision point in mod code (file:line) and what you can infer about the base game from the hooks in `src/patch/hooks*.py` (read only, never run them). Write it as a state diagram per enemy class.
2. **Headless arena.** Build a 2D arena sim (Java under `codex/tools/b2-03/` or Python) using the mod's real data tables (hull stats, weapons, factions) and simple physics matching the game's units. It must reproduce today's behaviour first (show side-by-side traces).
3. **New behaviours** (each its own switch): focus fire on the weakest target, flanking and encircling, kiting by range band, retreat-and-repair under 25% hull, wing screening for capitals, police calling reinforcements by escalation tier, flagship telegraphed special attacks using the existing `tele_cap_` art, faction personalities (Reaver aggressive, Warden defensive, Kre'tari swarm, etc., from `ModFactionData`).
4. **A/B**: 1,000 seeded fights per behaviour vs today, player hulls at L10/L25/L40: player win rate, time to kill, damage taken. Report what makes fights harder in a fun way vs just longer.
5. **Port** the best 3-5 behaviours into mod Java behind flags `ModTitanAI.AI2_*` default OFF, compiling with AGENTS.md's javac line, with JVM tests for the decision functions.
Output `codex/out/b2-03/report.md` with diagrams, tables, and GIFs or PNG frames from the arena.
