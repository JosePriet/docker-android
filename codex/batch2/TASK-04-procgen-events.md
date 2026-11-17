# Task 04: procedural mission and event generator prototype

The game has fixed mission types (see `ModPoi`, `ModDerelict`, `ModClaim`, `ModComms`, `ModAlerts`, `ModSector`, `ModFaction*`, `ModRep*`, `ModLoot`, `ModWreck`). Goal: a data-driven generator that creates varied sector events from faction, reputation, sector ownership, police heat and player level.

1. **Inventory** every existing mission, event, POI and reward path (file:line), with its inputs and outputs.
2. **Design** a grammar of events: trigger (sector entry, time, rep threshold, kill count, police tier), actors (factions, pirates, police, derelicts, stations), objective (escort, defend, ambush, salvage, bounty, blockade run, faction war, rescue, timed race), twist (betrayal, reinforcements, rival corsair), reward (credits, parts, rep shifts, loot tier). Use only actors, art and items that exist in the repo today (`work/modart/`, data classes).
3. **Generator** as a standalone tool (Java or Python, `codex/tools/b2-04/`) with seeds. Run 1,000 seeds per player level band; validate: every event solvable, rewards within the economy curve (`tools/sim/econ_sim.py`), no reference to missing art or ships, difficulty tracks level. Report distributions.
4. **Text**: English templates only, short, in the game's tone (read existing English strings). Mark every new string so the owner's Spanish pass can find them. Do not translate.
5. **Game hook** prototype `ModEvents.java` that can spawn 3 of the generated event types using existing spawn calls the mod already uses, behind `ModEvents.ENABLED = false`. Compile it; JVM tests for the generator logic.
Output `codex/out/b2-04/report.md`, 50 sample events printed in full, distribution charts.
