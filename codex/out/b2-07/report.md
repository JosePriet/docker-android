# TASK-07 JVM and registry test harness

Run `codex/tools/b2-07/run_tests.sh` from any directory. On Linux it needs a JDK (tested with OpenJDK 21), Node (tested with 24), Bash, Python 3, GNU coreutils and curl. First use downloads the JaCoCo 0.8.13 runtime agent and standalone CLI from Maven Central and verifies their pinned SHA-256 digests. For offline use, copy the verified `org.jacoco.agent.jar` and `org.jacoco.cli.jar` into `JACOCO_CACHE` before running. No third-party binary is added to the repository.

**CONFIRMED.** The runner compiles fresh production classes first and uses a private working directory for each Java entry point. Four historic inventory probes need items introduced after the compile jar. The runner assembles the checked-in smali read-only and uses that jar for those four processes. W18 alone gets a test implementation of the Android string join used by its description probe. The existing loopback tests and in-memory registry run locally. The two-party live-service E2E remains manual. See `build.sh:16`, `work/dtest/W18.java:8`, `tests/net/E2E.java:4` and `codex/tools/b2-07/suites.py:36`.

## Rules and findings

- **CONFIRMED.** All 294 attacker/defender/weapon combinations use an independent seven-faction expected matrix. Tests also cover all 41 XP entries, refit levels, parts, police heat thresholds and titan gates, reputation cutoffs, and six hull turret plans through all six forms. See `ModV34.java:29`, `ModCounterData.java:11`, `ModPolice.java:82`, `ModV35.java:39`, `ModV38.java:75` and `ModRep.java:89`.
- **CONFIRMED.** The four seeded loot scenarios compare each draw with a separately seeded oracle using explicit cumulative probabilities. The isolated test JVM opens the JDK Math RNG for seeding. The suite tests small-hull penalties, the elite rarity floor, wreck bonuses and upper class bounds. See `ModLoot.java:181` and `BatchLoot.java:10`.
- **CONFIRMED.** Session cases exercise the shield-aware one-hull duel floor, shot and burst budgets for both modes, HMAC changes for every bit of a fixture, save sanitization, and invincibility release across external removal, expiry and sector changes. Code generation checks all 32 characters, collisions and exhaustion after 50 attempts. See `codex/CONTEXT.md:10`, `ModLan.java:2640`, `ModLanCheck.java:277`, `ModWarpOut.java:61`, `ModSaveSig.java:129`, `ModSave.java:18` and `server/rendezvous/src/index.js:182`.
- **CONFIRMED rounding discrepancy.** With a 375-credit hull, refit 5 returns 37. The 2% × level rule gives 37.5 before rounding. The binary float multiplication lands below the half-credit boundary. The regression pins 37. Actual catalog impact depends on hull price. See `ModV35.java:38` and `BatchRules.java:35`.
- **CONFIRMED documentation drift.** The Hornet table comment describes a stern turret at form V. The pads and live spec update give three equipped turrets from form IV. The passive bow weapon is separate. The test expects 2/2/2/2/3/3. See `ModV38.java:44`, `ModV38.java:50` and `BatchRules.java:57`. The old V34 source-compilation warning in `HANDOFF.md:31` is historical. The current source compiles and prints VALUES-OK. The v33 push figures in `HANDOFF.md:19` are also historical. Current blast damping is 5%, while a ram retains 30%. See `ModWreck.java:44` and `ModWreck.java:55`.
- **SUSPECTED gameplay issue.** Warp expiry clears the tracker and invincibility before playing the final effect. If the effect throws, execution skips removal. The tests establish tracker and protection cleanup. A failing effect on a live frame and its impact on a pooled ship remain unverified. A testable seam would accept the effect and removal callbacks separately. See `ModWarpOut.java:63`, `ModWarpOut.java:67` and `ModWarpOut.java:106`.

## Measurement and remaining seams

**CONFIRMED.** JaCoCo source-file LINE counters include inner and anonymous classes once per source line. The smaller denominator includes every source with no direct bytecode dependency on Android, GLES or a non-mod game class, using JDK jdeps on all compiled classes. This is a reproducible proxy for standalone logic. Some methods in mixed classes also run on a JVM using the bundled game jar. Conversely, mod-to-mod calls can introduce transitive dependencies. The all-source total includes both groups. Data-only initializers can be covered by loading a class. A 0/0 source contains only inlined constants. See `codex/tools/b2-07/suites.py:61`.

**SUSPECTED remaining integration paths and smallest seams.** A class can contain both tested arithmetic and untested effects. These are boundaries for additional tests, not claims that every unhit line is unreachable.

| Boundary | Classes and proposed fixture |
|---|---|
| Android screens, GL and asset loading | Provide a UI dispatcher, resource lookup or recording draw queue for the uncovered screens and overlays. Ship-tree static initialization creates a ColorMatrix, which throws on the Android stub. See `ModShipTree.java:99`, `ModRefitPanel.java:20`, `ModComms.java:73`, `ModArt.java:16`, `ModPoi.java:63` and `ModFx.java:16`. |
| World, missions and pooled enemies | Supply a minimal level with stations, actors and a pool or reward recorder to exercise arrivals, claims, stock factories and combat ticks. Supply elapsed time for AI, notifications, warp and weapon cadence. See `ModAlerts.java:37`, `ModClaim.java:19`, `ModStockSpawn.java:23`, `ModPolice.java:28`, `ModPlace.java:54` and `ModShield.java:111`. |
| Save and OS services | Supply a preferences/files directory pair to drive signing on load and delayed writes. Provide an audio sink for playback and a UI scheduler for notifications. See `ModSaveSig.java:38`, `ModRep.java:53`, `ModSound.java:51` and `ModNotify.java:57`. |
| Network and clocks | Supply an in-memory lobby transport, relay and monotonic clock for NAT negotiation, session reconnect, retransmission and delayed delivery. Loopback exercises the real codecs and sockets. See `ModNet.java:13`, `ModLobby.java:20` and `work/dtest/fr/testudo/spacecorsair/mod/V49.java:12`. |
| Geometry and data tables | Generated arrays initialize on the JVM. Rendering their visual result requires a GL context. See `ModAnchorData.java:10`, `ModMonoFx.java:8` and `ModPoliceGen.java:15`. |

## Coverage by mod source

Java basenames in this report resolve under `src/java/fr/testudo/spacecorsair/mod/`, and Batch test basenames under `work/dtest/fr/testudo/spacecorsair/mod/`. The file and line in each row identify the top-level declaration.

| Source | Covered | Executable | Coverage | Direct dependency |
|---|---:|---:|---:|---|
| `Mod.java:34` | 21 | 659 | 3.2% | yes |
| `ModAegisDrones.java:24` | 4 | 91 | 4.4% | yes |
| `ModAlerts.java:16` | 0 | 67 | 0.0% | yes |
| `ModAnchor.java:25` | 15 | 336 | 4.5% | yes |
| `ModAnchorData.java:4` | 0 | 0 | — | no |
| `ModArt.java:43` | 44 | 577 | 7.6% | yes |
| `ModBoss.java:30` | 20 | 483 | 4.1% | yes |
| `ModCalm.java:14` | 3 | 16 | 18.8% | yes |
| `ModCapitalData.java:4` | 7 | 8 | 87.5% | no |
| `ModCapitals.java:27` | 20 | 388 | 5.2% | yes |
| `ModCaps.java:13` | 2 | 368 | 0.5% | yes |
| `ModClaim.java:15` | 0 | 37 | 0.0% | yes |
| `ModComms.java:33` | 0 | 301 | 0.0% | yes |
| `ModCounterData.java:7` | 10 | 10 | 100.0% | no |
| `ModDerelict.java:19` | 3 | 128 | 2.3% | yes |
| `ModDev.java:30` | 65 | 417 | 15.6% | yes |
| `ModEnemyGuns.java:32` | 21 | 320 | 6.6% | yes |
| `ModFaction.java:34` | 98 | 986 | 9.9% | yes |
| `ModFactionData.java:4` | 26 | 26 | 100.0% | no |
| `ModFitting.java:69` | 7 | 1065 | 0.7% | yes |
| `ModFlagData.java:4` | 3 | 3 | 100.0% | no |
| `ModFleet.java:32` | 15 | 147 | 10.2% | yes |
| `ModFx.java:18` | 31 | 273 | 11.4% | yes |
| `ModFxData.java:4` | 7 | 8 | 87.5% | no |
| `ModGameQueue.java:15` | 15 | 26 | 57.7% | yes |
| `ModHardpoints.java:4` | 3 | 3 | 100.0% | no |
| `ModHornet.java:30` | 20 | 322 | 6.2% | yes |
| `ModIcons.java:11` | 2 | 17 | 11.8% | yes |
| `ModIntro.java:11` | 5 | 14 | 35.7% | yes |
| `ModLan.java:87` | 623 | 1957 | 31.8% | yes |
| `ModLanCheck.java:31` | 124 | 153 | 81.0% | yes |
| `ModLanSync.java:22` | 187 | 193 | 96.9% | no |
| `ModLanUi.java:44` | 35 | 484 | 7.2% | yes |
| `ModLance.java:39` | 41 | 298 | 13.8% | yes |
| `ModLang.java:31` | 49 | 220 | 22.3% | yes |
| `ModLevData.java:4` | 4 | 4 | 100.0% | no |
| `ModLevDoom.java:23` | 5 | 211 | 2.4% | yes |
| `ModLevFx.java:18` | 13 | 95 | 13.7% | yes |
| `ModLive.java:31` | 24 | 327 | 7.3% | yes |
| `ModLobby.java:27` | 50 | 474 | 10.5% | yes |
| `ModLock.java:15` | 6 | 134 | 4.5% | yes |
| `ModLoot.java:25` | 22 | 158 | 13.9% | yes |
| `ModMap.java:15` | 28 | 99 | 28.3% | yes |
| `ModMissile.java:35` | 8 | 107 | 7.5% | yes |
| `ModMonoData.java:4` | 6 | 6 | 100.0% | no |
| `ModMonoFx.java:4` | 0 | 0 | — | no |
| `ModMonolith.java:26` | 16 | 310 | 5.2% | yes |
| `ModNet.java:37` | 297 | 718 | 41.4% | no |
| `ModNotify.java:23` | 7 | 109 | 6.4% | yes |
| `ModPlace.java:20` | 12 | 91 | 13.2% | yes |
| `ModPoi.java:28` | 0 | 39 | 0.0% | yes |
| `ModPolice.java:35` | 47 | 438 | 10.7% | yes |
| `ModPoliceAura.java:20` | 18 | 153 | 11.8% | yes |
| `ModPoliceData.java:17` | 12 | 48 | 25.0% | yes |
| `ModPoliceEdges.java:6` | 54 | 54 | 100.0% | no |
| `ModPoliceGen.java:15` | 270 | 277 | 97.5% | no |
| `ModPoliceTitan.java:22` | 5 | 201 | 2.5% | yes |
| `ModPrologue.java:44` | 4 | 261 | 1.5% | yes |
| `ModQol.java:54` | 19 | 547 | 3.5% | yes |
| `ModRefitPanel.java:16` | 0 | 39 | 0.0% | yes |
| `ModRefitScreen.java:34` | 9 | 677 | 1.3% | yes |
| `ModRep.java:28` | 57 | 193 | 29.5% | yes |
| `ModRepData.java:4` | 70 | 70 | 100.0% | no |
| `ModSave.java:17` | 22 | 37 | 59.5% | yes |
| `ModSaveSig.java:20` | 7 | 75 | 9.3% | yes |
| `ModScroll.java:26` | 2 | 98 | 2.0% | yes |
| `ModSector.java:30` | 10 | 425 | 2.4% | yes |
| `ModShield.java:25` | 18 | 202 | 8.9% | yes |
| `ModShipFlavour.java:4` | 3 | 3 | 100.0% | no |
| `ModShipStyle.java:4` | 4 | 4 | 100.0% | no |
| `ModShipTree.java:56` | 0 | 859 | 0.0% | yes |
| `ModShips.java:22` | 399 | 550 | 72.5% | yes |
| `ModSound.java:28` | 5 | 150 | 3.3% | yes |
| `ModSources.java:4` | 6 | 9 | 66.7% | yes |
| `ModSpecs.java:14` | 141 | 156 | 90.4% | yes |
| `ModStationGuns.java:52` | 37 | 223 | 16.6% | yes |
| `ModStockSpawn.java:22` | 0 | 17 | 0.0% | yes |
| `ModTestMode.java:48` | 5 | 281 | 1.8% | yes |
| `ModTitan.java:31` | 25 | 545 | 4.6% | yes |
| `ModTitanAI.java:33` | 4 | 359 | 1.1% | yes |
| `ModUi.java:43` | 4 | 350 | 1.1% | yes |
| `ModV30Data.java:4` | 11 | 11 | 100.0% | no |
| `ModV34.java:24` | 225 | 497 | 45.3% | yes |
| `ModV35.java:30` | 86 | 502 | 17.1% | yes |
| `ModV38.java:14` | 44 | 73 | 60.3% | yes |
| `ModWarpOut.java:20` | 39 | 58 | 67.2% | yes |
| `ModWeapons.java:28` | 91 | 272 | 33.5% | yes |
| `ModWings.java:17` | 12 | 133 | 9.0% | yes |
| `ModWreck.java:28` | 28 | 372 | 7.5% | yes |

## Recorded validation

The following commands ran at the branch root with the local JDK and verified JaCoCo cache. The transcript includes compiler diagnostics and every runner result.

```console
$ export PATH=/workspace/work/b207-jdk/jre/bin:$PATH JACOCO_CACHE=/workspace/work/b207-deps
$ mkdir -p /tmp/mc && javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
$ codex/tools/b2-07/run_tests.sh
/workspace/work/b207-deps/org.jacoco.agent.jar: OK
/workspace/work/b207-deps/org.jacoco.cli.jar: OK
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
work/dtest/V34.java:4: warning: Unsafe is internal proprietary API and may be removed in a future release
static Object mk(Class<?> c)throws Exception{java.lang.reflect.Field f=sun.misc.Unsafe.class.getDeclaredField("theUnsafe");f.setAccessible(true);return ((sun.misc.Unsafe)f.get(null)).allocateInstance(c);}
                                                                               ^
work/dtest/V34.java:4: warning: Unsafe is internal proprietary API and may be removed in a future release
static Object mk(Class<?> c)throws Exception{java.lang.reflect.Field f=sun.misc.Unsafe.class.getDeclaredField("theUnsafe");f.setAccessible(true);return ((sun.misc.Unsafe)f.get(null)).allocateInstance(c);}
                                                                                                                                                                  ^
work/dtest/fr/testudo/spacecorsair/mod/BatchSession.java:22: warning: Unsafe is internal proprietary API and may be removed in a future release
        Field field = sun.misc.Unsafe.class.getDeclaredField("theUnsafe");
                              ^
work/dtest/fr/testudo/spacecorsair/mod/BatchSession.java:24: warning: Unsafe is internal proprietary API and may be removed in a future release
        return type.cast(((sun.misc.Unsafe) field.get(null)).allocateInstance(type));
                                   ^
Note: work/dtest/V34.java uses unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
4 warnings
dex2jar game.dex -> game.jar
PASS Alb
PASS D7
PASS Dump
PASS Las
PASS Stats
PASS Tur
PASS V16
PASS V165
PASS V166
PASS V1661
PASS V167
PASS V168
PASS V168b
PASS V17
PASS V17b
PASS V19
PASS V21
PASS V22
PASS V23
PASS V30 V30 VERIFY-OK
PASS V34 V34 VALUES-OK
PASS V35 V35 VALUES-OK
PASS V37W V37W VALUES-OK
PASS V42 V42 VALUES-OK
PASS V44S V44S VALUES-OK
PASS W18
PASS fr.testudo.spacecorsair.mod.BatchArt CASES 123
PASS fr.testudo.spacecorsair.mod.BatchHooks CASES 54
PASS fr.testudo.spacecorsair.mod.BatchLoot CASES 513
PASS fr.testudo.spacecorsair.mod.BatchRules CASES 585
PASS fr.testudo.spacecorsair.mod.BatchSession CASES 123
PASS fr.testudo.spacecorsair.mod.V49 V49 VALUES-OK
PASS lobby-code.test.mjs CASES 35
PASS registry.test.mjs REGISTRY OK
Source file | covered / executable lines | direct game/Android dependency
Mod.java | 21/659 | yes
ModAegisDrones.java | 4/91 | yes
ModAlerts.java | 0/67 | yes
ModAnchor.java | 15/336 | yes
ModAnchorData.java | 0/0 | no
ModArt.java | 44/577 | yes
ModBoss.java | 20/483 | yes
ModCalm.java | 3/16 | yes
ModCapitalData.java | 7/8 | no
ModCapitals.java | 20/388 | yes
ModCaps.java | 2/368 | yes
ModClaim.java | 0/37 | yes
ModComms.java | 0/301 | yes
ModCounterData.java | 10/10 | no
ModDerelict.java | 3/128 | yes
ModDev.java | 65/417 | yes
ModEnemyGuns.java | 21/320 | yes
ModFaction.java | 98/986 | yes
ModFactionData.java | 26/26 | no
ModFitting.java | 7/1065 | yes
ModFlagData.java | 3/3 | no
ModFleet.java | 15/147 | yes
ModFx.java | 31/273 | yes
ModFxData.java | 7/8 | no
ModGameQueue.java | 15/26 | yes
ModHardpoints.java | 3/3 | no
ModHornet.java | 20/322 | yes
ModIcons.java | 2/17 | yes
ModIntro.java | 5/14 | yes
ModLan.java | 623/1957 | yes
ModLanCheck.java | 124/153 | yes
ModLanSync.java | 187/193 | no
ModLanUi.java | 35/484 | yes
ModLance.java | 41/298 | yes
ModLang.java | 49/220 | yes
ModLevData.java | 4/4 | no
ModLevDoom.java | 5/211 | yes
ModLevFx.java | 13/95 | yes
ModLive.java | 24/327 | yes
ModLobby.java | 50/474 | yes
ModLock.java | 6/134 | yes
ModLoot.java | 22/158 | yes
ModMap.java | 28/99 | yes
ModMissile.java | 8/107 | yes
ModMonoData.java | 6/6 | no
ModMonoFx.java | 0/0 | no
ModMonolith.java | 16/310 | yes
ModNet.java | 297/718 | no
ModNotify.java | 7/109 | yes
ModPlace.java | 12/91 | yes
ModPoi.java | 0/39 | yes
ModPolice.java | 47/438 | yes
ModPoliceAura.java | 18/153 | yes
ModPoliceData.java | 12/48 | yes
ModPoliceEdges.java | 54/54 | no
ModPoliceGen.java | 270/277 | no
ModPoliceTitan.java | 5/201 | yes
ModPrologue.java | 4/261 | yes
ModQol.java | 19/547 | yes
ModRefitPanel.java | 0/39 | yes
ModRefitScreen.java | 9/677 | yes
ModRep.java | 57/193 | yes
ModRepData.java | 70/70 | no
ModSave.java | 22/37 | yes
ModSaveSig.java | 7/75 | yes
ModScroll.java | 2/98 | yes
ModSector.java | 10/425 | yes
ModShield.java | 18/202 | yes
ModShipFlavour.java | 3/3 | no
ModShipStyle.java | 4/4 | no
ModShipTree.java | 0/859 | yes
ModShips.java | 399/550 | yes
ModSound.java | 5/150 | yes
ModSources.java | 6/9 | yes
ModSpecs.java | 141/156 | yes
ModStationGuns.java | 37/223 | yes
ModStockSpawn.java | 0/17 | yes
ModTestMode.java | 5/281 | yes
ModTitan.java | 25/545 | yes
ModTitanAI.java | 4/359 | yes
ModUi.java | 4/350 | yes
ModV30Data.java | 11/11 | no
ModV34.java | 225/497 | yes
ModV35.java | 86/502 | yes
ModV38.java | 44/73 | yes
ModWarpOut.java | 39/58 | yes
ModWeapons.java | 91/272 | yes
ModWings.java | 12/133 | yes
ModWreck.java | 28/372 | yes
All mod lines 3817/22502 (16.96%)
Without direct game/Android dependencies 962/1398 (68.81%)
New named/parameterized checks 1433
Suites 34 passed, 0 failed
```
