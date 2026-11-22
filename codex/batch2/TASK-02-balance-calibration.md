# Task 02: calibrate the balance simulator against the emulator

Branch `codex/task-2-balance-sim` has a Python combat sim (`codex/out/` there). Its own oracle and formula checks pass, but all 28 comparisons with emulator measurements are off by more than 25%: flagships die 2-6x faster in the emulator. Missile damage is not modelled. Emulator data: `codex/batch2/data/dmgtest/` (RESULTS.md explains each run). The harness that produced it is branch `claude/project-thread-qs9twg` (`corsair_dmgtest`), read it to learn exactly what was measured.

Do all of this (bring the sim into your branch first):
1. Find every damage source the sim misses or gets wrong by reading the code: missiles (`ModMissile`), wings and drones (`ModWings`, `ModAegisDrones`), Stinger (`ModHornet`), station guns, doomsday caps (`ModLevDoom`), shields (`ModShield`), anchor wall, faction resist tables, elite factors, refit levels, 3x titan/flagship multiplier, police overshield. List each with file:line.
2. Model them. Re-run the 28 comparisons. Target: every one within 25%, median within 10%. If one cannot get there, explain the exact gap (for example timing the sim cannot see).
3. Add a fitting step: which single constants, if wrong in the sim, best explain the remaining error. Do not change game numbers.
4. With the calibrated sim, produce full tables: every player hull x refit stage x levels 10/20/30/40 vs every enemy class (incl. flagships, police titans, faction titans): time to kill, time to die, win rate over 1,000 seeded fights. Then answer, with numbers: (a) kill time today vs the 3-4 s target, (b) is 3x titan/flagship damage enough to threaten a L40 player, (c) police titans kill a L40 Leviathan in 33-58 s: what does the sim say and why, (d) the 5 most over- and under-powered hulls.
Output `codex/out/b2-02/report.md`, CSVs, the sim with a one-command runner, and plots (PNG).
