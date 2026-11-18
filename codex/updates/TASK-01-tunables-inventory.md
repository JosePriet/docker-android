# UPD-01: tunables inventory
Goal: list every balance number in `src/java/fr/testudo/spacecorsair/mod/*.java` that the owner might tune by a content pack (plan section 5.3 step 3).
For each: file:line, field/expression, current value, what it controls (one line), proposed ModTune key (`area.thing`, e.g. `police.dmgMult`), safe min/max, and whether it is `static final` primitive (javac inlines it) or used inside the base-game smali hooks.
Cover at least: ModBal, ModV34, ModV35, ModV38, ModPolice*, ModPoliceTitan, ModAegisDrones, ModEvents, ModChain, ModLoot, ModBoss, ModCapitals, ModLevDoom, ModLance, ModHornet, ModShield, ModWreck, ModSector, ModStationGuns, ModRep, ModWeapons, ModEnemyGuns.
Skip: UI layout pixels, network/protocol constants, colours, test switches.
Output: `codex/out/upd-01/tune-keys.json` (array of objects with the fields above) and `codex/out/upd-01/REPORT.md` (counts per file, the 30 numbers the owner tuned most per git log -S / commit messages, anything ambiguous).
