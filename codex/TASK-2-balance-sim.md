# Task 2: combat balance simulator

Read `AGENTS.md` and `codex/CONTEXT.md` first. Build a Python 3 simulator (standard library only) in `tools/balance_sim/`, derived from the real code. Do not change any Java.

Sources of truth:
- Formulas in `src/java/fr/testudo/spacecorsair/mod/`: `ModShips` (player hull factors: damage, reload, shield, missile reload, hull regen, doomsday), `ModV35` (refits: 10 levels; a pick +3%/level on the hull's strengths; faction trait +2%/level), `ModV34` (enemy class factors, elites, weapon fit -40% off-faction / -15% neutral, faction counters), `ModWeapons` (families: rail, autocannon, artillery, blaster, disintegrator ramp to +100%, arc), `ModEnemyGuns`, `ModPolice` (escalation, police titan overshield), `ModCapitals` (flagships, titans, 3x damage), `ModCaps` (damage caps, doomsday per-shot caps).
- `codex/data/stock_tables.json`: every stock gear spec of the closed game (lasers, missiles, shields, player ship specs) and `XpBuilder` (`PLAYER_SHIP_LIFE` per level).
- `codex/data/hulls.tsv`: the mod's player hulls as built.
- `codex/data/enemy-calc-out.txt`, `codex/data/enemy-stats.md`, `codex/data/EnemyCalc.java.txt`: enemy DPS / hull / shield per level, computed by calling the mod's own Java. Ground truth for the enemy side.
- `codex/data/emulator-dmgtest-RESULTS.md`: kill times measured on an emulator (titans, flagships). A check.

Deliverables:
1. `tools/balance_sim/`: `data.py` (loaders), `player.py` (fitted ship: hull + laser + missile + shield + refit + stage + faction fit to DPS, burst, hull, shield, regen; cite the Java method above each formula), `enemy.py` (normal, elite, police, flagship, titan), `fight.py` (0.05 s time-step duel: shields first, regen delays, reloads, disintegrator ramp, doomsday caps, 3x titan/flagship damage, police overshield), `cli.py` (`killtime --hull Leviathan --laser <type> --refit 10 --vs "alien titan" --level 40`; `table --level 40` = Markdown table of kill and survive time for every hull at its best same-level gear, refit 0 and 10, vs every enemy class).
2. `tools/balance_sim/validate.py`: enemy numbers vs `enemy-calc-out.txt` (within 2%), titan/flagship kill times vs the emulator results (report the gap; explain any over 25%).
3. `tools/balance_sim/tests/test_sim.py`: at least 15 unittest cases hand-computed from the Java.
4. `codex/out/balance-report.md`: tables at levels 10, 20, 30, 40; the five worst outliers (fights under 2 s or over 120 s, ships dying in under 5 s) with the formula behind each; `ASSUMPTIONS` section listing every place the Java calls closed game code you could not see and what you assumed.

Never invent a stat; where the code is ambiguous pick one reading, record it in ASSUMPTIONS, keep going. Run the tests and validate.py and paste their output into the PR description. Open a PR.
