# Balance calibration against emulator runs 112 and 113

The stock guardian level explains why the old simulator made flagship hulls much harder to kill while making their guns much more lethal. Correcting that mechanic and fitting three shared exposure parameters reproduces all 28 measured Leviathan event clocks within 25%. Before the simulator sees any geometry or opening damage from the fight, that falls to 20/28. Use the latter figure to judge a prediction for a new encounter.

The model evaluates the requested starting branch at `a02248ca`. The emulator evidence comes from the supplied historical runs. The Python baseline and oracle inputs come from `90acce6a` on `codex/task-2-balance-sim`. The half-second combat loop, stock-rack extraction, updated roster, calibration and matchup tables are local to this analysis.

<!-- BEGIN GENERATED RESULTS -->
<!-- END GENERATED RESULTS -->

## What the harness actually measured

**CONFIRMED** — A run forces L40, refit 10 and Siege Railgun, restores the player’s hull and shield and starts the target 1,700 units ahead. The harness points the turrets and holds the primary trigger. It has no missile or manual-doomsday trigger. The Warlord rail fit is a harness override. The dodge switch shifts position tangentially at 300 units/s without updating velocity. Anchor plants were logged while circling. The simulator enables the wall in both Leviathan setups. [Harness patch at 7a650933, lines 83–99](https://github.com/JosePriet/docker-android/blob/7a650933/tests/dmgtest-harness.patch#L83) · [Setup, lines 133–169](https://github.com/JosePriet/docker-android/blob/7a650933/tests/dmgtest-harness.patch#L133) · [Runner, line 267](https://github.com/JosePriet/docker-android/blob/7a650933/tests/run.sh#L267) · [Run 113 caveat](../../batch2/data/dmgtest/RESULTS.md#L38)

**CONFIRMED** — The harness counts cumulative player hull drops and target hull drops every frame, then samples roughly once per second. The target shield field reports the big shield. Target overshield absorption is invisible to the damage counter. A new player object, sector change or dead ship counts as player death first. The 180 s timeout is a censored observation. The comparisons use the exact terminal timestamps from all seven raw files. [Harness patch, lines 70–82 and 101–117](https://github.com/JosePriet/docker-android/blob/7a650933/tests/dmgtest-harness.patch#L70) · [Per-fight log and line references](comparisons.csv)

## Source audit

Java filenames below are under `src/java/fr/testudo/spacecorsair/mod/`. Smali paths start at `work/smali/fr/testudo/spacecorsair/business/`. CONFIRMED labels describe source paths or runtime checks. SUSPECTED labels identify how the simulator estimates unobserved contacts and timing.

| Mechanic | Evidence and implementation |
| --- | --- |
| Guardian body vs configured level | **CONFIRMED** — `ModCapitals.java:222,240,256,257` constructs a stock guardian, sets its large hull and saves the requested level separately. `world/civil/CivilFactory.smali:17` clamps the request to the last of 21 Albatros rows (`ennemis/EnnemisSpecByLevel.smali:4612`). `world/civil/GuardianCivilShip.smali:1112` and `world/civil/CivilShip.smali:2133` pass and store the clamped body level. `projectiles/Projectile.smali:309` copies the sender level. `Element.smali:1488` and `player/XpBuilder.smali:183` apply 1 + 0.16 × max(−6, attacker level − defender level). Against an L40 player, a guardian body at L20 gives 4.2× on inbound player projectiles and 0.04× on outbound guardian projectiles. `ModV34.java:271,285,894` also applies pilot stats. The JVM independently checks both level factors and the 1.59975 player-to-body pilot multiplier. |
| Flagship battery and faction titan identity | **CONFIRMED** — `ModFactionData.java:10`, `ModCapitals.java:58,91,164,179,255,274` and `ModPoliceTitan.java:75` identify seven faction flagships, their matching police copies and the High Council variant. The number and families of mounts vary. The stock guns are silenced. The L40 shot base is 2,931 rounded, including the 3× exactly once. Police multiply shot and firing rate by 1.2 separately. **SUSPECTED** — Range-gated sustained mount DPS approximates turret slew, salvo spacing, disintegrator ramp and faction impact effects. |
| Faction skills | **CONFIRMED** — `ModTitanAI.java:236,251,290,330,370,397` covers the Spartan directional wall, Reaver ram/fire, Kre’tari swarm, Varn cloak/mines, Ironclad artillery/plates, Helion lance and Warden snipe. **SUSPECTED** — The simulation uses range and dodge gates for contact, a random facing for the frontal shield, and a mean duration/contribution for multi-hit skills. It does not know which skill hit in a given log frame. |
| Drone rails, wings and player bay | **CONFIRMED** — `ModAegisDrones.java:27,54,64,100,133` and `ModCapitals.java:274` launch 2–5 chasing drones on the Spartan flagship and all police titans. Each rail uses 0.6 of the parent’s three-weight battery shot, with a 2.2 s reload. The child carries its own level. The L40 parent shot is 3,517 for police, giving an equal-level rail around 7,597 after pilot scaling. `ModWings.java:9,109` draws articulated parts. Actual faction wing ships are built in `ModSector.java:395,413`. `ModLock.java:22,33`, `Mod.java:561,568,614,624,708,725` and `ModSpecs.java:21,159` cover the player bay’s UFO/Rat pair, carrier bonus, engagement stances and lifetime. **SUSPECTED** — The duel targets the carrier, so launched hostile drones remain in contact at the fitted landed fraction. Hive scenarios use child DPS during a range-gated lifetime, with renewal while ammunition is available. Child deaths, player retargeting and individual drone orbits are unobserved. [Player bay scenarios](hive.csv) |
| Stinger | **CONFIRMED** — `ModHornet.java:34,43,93,205,254,310,347` enables stage-five Hornet wings, projectile mitigation/heat and the periodic dart. The dart reaches 1,500 units and can build a 3 s DoT capped at 35% of turret DPS. **SUSPECTED** — The half-second loop aggregates heat across wings and uses continuous damage during the DoT. Individual crystal angles, dart launches and maintenance of the stack depend on geometry. |
| Missiles | **CONFIRMED** — `ModMissile.java:41,85,124,145,175` handles lock selection, reacquisition and fast police missiles. `world/civil/GuardianCivilShip.smali:343,445,825,1151` supplies stock salvo, ammo, distance and reload. `projectiles/Missile.smali:710,732,1316,1339` splits the direct hit from radial damage, with a separate radial hull call. `ModPolice.java:318,424` and `ModTitan.java:54,185` provide police armor/fast missiles and the player titan siege bonus. The grid uses direct and center splash, separates NPC rack ammo from the fast stream, and suppresses player missiles in harness comparisons. **SUSPECTED** — Hit probability, center splash, unlimited player resupply in grid fights and the representative missile-lock envelope approximate trajectory, ammunition economy and impact offset. |
| Shields and recovery | **CONFIRMED** — `ModShield.java:78,88,111,166` shapes player recharge, reboot and native shield behavior. `ModV34.java:469,481,502` gives the distinct big shield and its under-fire regeneration. `ModPoliceTitan.java:26,33,46,169,186` and `ModLive.java:505–515` give shield break, armor, the 40%-of-hull overshield, 20 s quiet delay and six-second refill. The sim tracks each pool, hull repair and shield drain separately. The stock-shield harness Leviathan starts with 234 shield, the upgraded one with 11,700. **SUSPECTED** — Drain and repair timing share a half-second step. [Run 112/113 setups](../../batch2/data/dmgtest/RESULTS.md#L1) |
| Leviathan anchor wall | **CONFIRMED** — `ModAnchor.java:28,95,107,218,281,289,313` and `ModAnchorData.java:10` specify stage/planting, a ±120° arc, charge consumption before body-level mitigation, absorption of the shot that breaks the wall, 2.5 s stationary replant and recharge while down. Partial charge suffices to plant. **SUSPECTED** — The model samples arc coverage and resolves drone rails individually against remaining charge. It batches minor battery hits and cannot recover actual crossing angles from centre distance. |
| Station guns | **CONFIRMED** — `ModStationGuns.java:57,70,150,160,277,311,325` sets mount counts, hostility, the average destroyer baseline, per-mount 1.5× outpost/mining or 2.5× base rate, range, lead and facing. Station projectiles take the target level at `ModStationGuns.java:377`. **SUSPECTED** — Separate scenarios apply raw gun DPS, without a faction/pilot adjustment, and sample anchor interception. They hold 2–4 mounts in range and on target, against a wanted player or a hostile flagship. No supplied log records a station position or hit, so station DPS enters the dedicated scenarios only. [Station sensitivity](stations.csv) |
| Doomsday | **CONFIRMED** — `ModLevDoom.java:26` and `ModTitan.java:302,370,399,560,567,599` define charge, beam/pulse, recovery and a per-target budget shared across the activation. Leviathan caps are 10% on titan-class and 15% on other large targets, with other titan weapons at 7%/10%. Small targets take fixed 100,000/s before the regular damage path. The grid can activate the weapon on cooldown. The laser-only replay never triggers it. **SUSPECTED** — Contact uses a range gate during the firing window. |
| Faction resistance and level/refit factors | **CONFIRMED** — `ModCounterData.java:11,13`, `ModV34.java:844,897–912` and `ModV35.java:773,837` layer faction wheel and weapon-family resistances, exempt police, and limit the extra kill-time factor to eligible normal enemies. `ModV35.java:49,348,410`, `ModShips.java:57,764` and `ModV38.java:70` give all 11 refits, the original hulls, fitting multipliers and stage hardpoints. The simulation uses single-precision rounding and application order for integer weapon stats. |
| Elites, patrols and bosses | **CONFIRMED** — `ModV34.java:392,413,526,540,576,586,606` handles tier/class and strips duplicate stock elite factors, with exceptions for police. `ModSector.java:373,395`, `ModFleet.java:49`, `ModPolice.java:143,669,684` and `ModBoss.java:291,434,501` supply patrol/fleet variants, police hulls and mission-specific attacks, healing and defenses. **SUSPECTED** — Ordinary NPC output averages eligible tiers. Mission geometry, escort survival and proximity damage are approximations. Seven police class entries represent the patrol and the six escalating ship classes. Sector paint, individual standing and squad formations are scenario context. |

## Method and interpretation

- **Calibration.** Only the 28 Leviathan fights enter fitting. The corrected source baseline uses the observed range trace and the opening wing estimate, with no empirical aim cap and unit landed fractions. The fitter scans 225 shared combinations with 64 seeded fights per candidate. It first minimizes the number exceeding 25%, then the excess median over 10%, then a balanced log loss. This loss weights death clocks by ½, kill clocks by ¼ and flagship damage throughput by ¼. Throughput uses hull drops and visible shield depletion with an allowance for regen and plates. Police overshields make that estimate unavailable. Each reported median uses 1,000 seeds.
- **One constant at a time.** A 3,100-unit effective rail range reduces the balanced loss from 0.23454 to 0.15176 (35%). A 0.75 rail landed fraction alone gives 0.18814. A 0.85 drone landed fraction alone gives 0.20497. The jointly selected values are 3,200 units, 0.85 and 0.85. These are effective parameters of the simulator. The range caps hit opportunity after the weapon’s physical range check. The rail fraction is the central value around which per-fight landed output varies. [Complete single-parameter scan](single_constant_fit.csv)
- **Replay vs prediction.** A replay uses its own nonterminal distance samples, reflected at the ends for longer exposure. It estimates an opening wing size from the first 11 s of gross hull loss and shield movement when identifiable, otherwise draws uniformly from 2–5. The terminal time and remaining hull never drive individual simulated hits. The fitted scores use all 28 cases to choose parameters. Leave-one-out refits remove the assessed Leviathan case from the loss. The pre-fight result also withholds its entire trace and opening damage, drawing routes from other Leviathan encounters with the faction or police type. It still assumes the known hull, gear and dodge setting. The ten Warlord fights supply only external checks.
- **Matchup policy.** Each hull gets the highest sustained direct-weapon DPS fit within level and slot, with the highest-capacity shield. Missile selection includes center splash. DEV gear, hull-locked alien weapons, beams, the channelled Phoenix Lance and the Hive Bay are outside the common direct-fire ranking. The Hive Bay has a separate comparison. The legal grid uses missiles and eligible manual doomsdays, unlike the rail harness. Rarity, price, cargo utility and player skill have no weight in the combat ranking.
- **Geometry and clocks.** Each row samples 1,000 independent pseudorandom streams. Stable row seeds pair refits of the same hull/foe. Distance, aim variation, wing size and individual contacts vary by seed. Capital routes are sampled from the Leviathan library, with noncapital ranges sampled from 300/650/1,000/1,400/1,700 units. These routes, applied across hulls and levels, are a projection. The kernel advances in 0.5 s steps. A strict earlier kill wins, a strict earlier death loses, a simultaneous finite event ties, and neither event by 180 s times out. TTK and TTD are separate upper-median exposure clocks. The later one continues with the opponent’s offense available after the earlier event, allowing offense and survivability to be compared. Neither a tied clock nor a timeout counts as a win. `>180` in matchup tables means at least half of trials failed to reach that event by the horizon. The calibration CSV reports signed relative error of the clock for the event actually observed. All exact percentages in the report use absolute errors when evaluating tolerances.
- **Scope of extrapolation.** The 28 comparisons validate forced-rail capital encounters at L40. The matrix covers 56 hulls × 11 refits × 59/63/77/85 available opponent entries at L10/20/30/40. The level-dependent roster includes original enemies, elites, fleet unlocks, patrols and wings, mission bosses, seven faction titans and seven police variants. Each cell assumes a duel with its listed opponent. Individual turret tracking, hitboxes, movement AI, weapon-specific secondary impacts, neutral traffic and additional escort targets can change the result in play.

## Files and reproduction

- [L10 matchups](matchups-L10.csv.gz) · [L20](matchups-L20.csv.gz) · [L30](matchups-L30.csv.gz) · [L40](matchups-L40.csv.gz). Each compressed CSV records equipped items, enemy level/class, seed, both clocks, counts of all four outcomes and win rate.
- [All recorded fights](comparisons.csv) · [One-constant fits](single_constant_fit.csv) · [Capital multiplier experiment](threat.csv) · [Station guns](stations.csv) · [Hive Bay](hive.csv) · [Hull ranking](hull-ranking.csv).
- [One-command runner](../../tools/b2-02/run.py) · [Arena](../../tools/b2-02/arena.cpp) · [Stock table extractor](../../tools/b2-02/Stock.java) · [JVM assertions](../../../work/dtest/fr/testudo/spacecorsair/mod/B2Calibration.java).

The runner works from the repository checkout using Python 3.10+, NumPy, pandas, matplotlib and a C++17 compiler. It builds the native loop in a temporary directory. Rebuild everything from the root with the following command.

```sh
python codex/tools/b2-02/run.py
```

Runner output for this snapshot

```text
Fit: (3200, 0.85, 0.85)
Grid rows by level: 36344 38808 47432 52360
Oracle: 732 values (max error 0.00%), 84 capital checks
Verified 174,944 unique matchups, 174,944,000 fights, 38 emulator records
```

Run `python codex/tools/b2-02/run.py --check` to validate the committed tables. The oracle verifies the imported loader independently against 732 values and recomputes 84 capital hull/overshield values. The grid verifier checks the exact Cartesian product, stages, levels, seeds, clock ranges and outcome totals, and compares the paired 3× scenario to the corresponding grid rows.

Exact Java commands run from the repository root

```sh
export PATH=/workspace/setup/tools/jdk17/bin:$PATH
mkdir -p /tmp/mc && javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
javac --release 8 -cp /tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc work/dtest/fr/testudo/spacecorsair/mod/B2Calibration.java
java -cp /tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls fr.testudo.spacecorsair.mod.B2Calibration
javac --release 8 -cp work/game_v168.jar -d /tmp/mc codex/tools/b2-02/Stock.java
java -cp /tmp/mc:work/stubcls:work/game_v168.jar:tools/android-4.1.1.4.jar Stock > codex/tools/b2-02/data/racks.csv
```

Compiler and JVM output

```text
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
B2 CALIBRATION OK
```

The extractor writes 451 rows to the redirected CSV. The repository registry check, `cd server/rendezvous && node test/registry.test.mjs`, also completed with `REGISTRY OK`.
