# How the Space Corsair mod reaches the game

**CONFIRMED.** The applied game contains 432 references into mod Java, including 422 invokes and 10 field accesses. The index covers all 53 tracked hook recipes. Two refactors share the refit-level clamp and the conversion from sprite pixels to ship coordinates. The same 158 characterization checks passed on the original source at `a02248c` and on the edited source. See [hookmap.csv](hookmap.csv), [calls.csv](calls.csv) and `work/dtest/fr/testudo/spacecorsair/mod/B6Refactors.java:16`.

Java basenames below are under `src/java/fr/testudo/spacecorsair/mod/`. Base-game smali basenames in the examples resolve to full paths in the hook map.

## From the base game to the mod

**CONFIRMED.** Each hook-map row gives the recipe line when available, the applied smali site, the enclosing base method with descriptor, and the Java target with descriptor and declaration line. The 483 rows include 51 base-only or superseded edits. Thirteen current references have no matching tracked recipe. Their smali lines still identify the entry point. For example, `Element.smali:3018` calls `Mod.java:86`. The older radar change in `src/patch/hooks42e.py` is recorded alongside its successor in `src/patch/hooks47_skull.py:12` at `GameThread.smali:3429`. **SUSPECTED.** The phase column infers frame, event or load from the enclosing method. Actual scheduling depends on the game loop. See `codex/tools/b2-06/hookmap.py:121`.

| CONFIRMED recipe | Base entry and call site | Mod destination |
|---|---|---|
| `src/patch/hooks.py:52` | Player physics, `PlayerShip.doPhysic` at `PlayerShip.smali:2847` | `Mod.tick` at `Mod.java:375` |
| `src/patch/hooks3.py:91` | Restore, `StorageManager.restore` at `StorageManager.smali:263` | `ModSave.sanitize` at `ModSave.java:18` |
| `src/patch/hooks46b_prologue_damage.py:17` | Damage event, `PlayerShip.applyDamage` at `PlayerShip.smali:2605` | `ModPrologue.damage` at `ModPrologue.java:140` |
| `src/patch/hooks49_lan.py:36` | Render queue swap, `RenderQueue.swapQueues` at `RenderQueue.smali:642` | `ModLan.beforeSwap` at `ModLan.java:2288` |

## Following a call

**CONFIRMED.** The compiler resolved 6,395 distinct caller, declared target and source-line combinations across 90 Java files after the refactors. Each SVG shows outgoing class-to-class calls. An ellipse groups calls to another subsystem and an edge label counts distinct source sites. Same-class calls and full overload descriptors are available in [calls.csv](calls.csv). The index includes initializer calls and nested types. Runtime dispatch can select a different implementation. See `codex/tools/b2-06/JavaIndex.java:73` and `codex/tools/b2-06/map.py:57`.

| Subsystem graph | CONFIRMED starting point |
|---|---|
| [Combat](svg/combat.svg) | Player physics crosses into `Mod.tick` at `Mod.java:375`. |
| [Police](svg/police.svg) | `ModPoliceGen.java:71` resolves generated art to shipped sources. |
| [Refit and ships](svg/refit-ships.svg) | Follow ship updates from `ModShips.java:788` and refit multipliers from `ModV35.java:58`. |
| [Art and effects](svg/art-fx.svg) | `ModLevFx.java:64` updates effect state. `ModArt.java:261` enumerates textures. |
| [UI](svg/ui.svg) | `ModUi.java:261` updates the activity UI. |
| [Save](svg/save.svg) | `ModSave.java:18` sanitizes restored data. |
| [Network](svg/network.svg) | `ModLan.java:2288` handles the pre-swap hook. |
| [Prologue](svg/prologue.svg) | `ModPrologue.java:153` updates state and `ModPrologue.java:391` draws it. |

**CONFIRMED.** Outside the Java graph, the rendezvous Worker forwards requests to the registry, which routes create, join and heartbeat operations and persists state (`server/rendezvous/src/index.js:531,200,239,286,323,107`). Its standalone test starts at `server/rendezvous/test/registry.test.mjs:9`. The translation builder reads the string resources and the checker validates translations (`i18n/build_es.py:9`, `i18n/check_es.py:10`). The game-side map is loaded in `ModLang.java:170`. Release and build checks start in `scripts/release.sh:5` and `scripts/check.sh:7`. The economy simulator and its separate salvage check are discussed below.

## What might be unused

[deadcode.csv](deadcode.csv) states the evidence for each row. **CONFIRMED** records a specific reference or lookup rule. **SUSPECTED** identifies an unresolved candidate. A literal, test reference or documentation mention alone cannot establish execution during play.

| Inventory | CONFIRMED observations | SUSPECTED candidates and limitations |
|---|---|---|
| Java | 15 of 47 flagged methods and one of 20 fields have a named test reference. For example, `tests/net/E2E.java:21` uses `ModLan.java:2677`, and `work/dtest/V44S.java:7` uses `ModStationGuns.java:143`. | 32 methods and 19 fields lack a demonstrated consumer. Some methods are compiler-supplied constructors. No whole class was isolated by this analysis. |
| Data rows | The keyed-table check compares first-match entries against the hull and item catalogs (`codex/tools/b2-06/map.py:174`). | 97 individual entries belong to arrays with no resolved consumer. One example is the descriptions in `ModFactionData.java:10`. |
| Art | Of 738 files, 269 have an exact literal or a known staged or animated key. See `ModV35.java:574` and `ModLive.java:315`. | 456 match only a family prefix or suffix. Another 13 lack a matched construction. Inspect `icon_elite.webp` (also mentioned in `HANDOFF.md:50`), the monolith aura textures, titan decals and `ui_tree_node` first. Asset enumeration and generated names complicate removal (`ModArt.java:261`, `ModMonolith.java:207`). |
| Scripts and tools | 31 of 45 files are named elsewhere or included by classpath wildcard, e.g. `build.sh:17`. | 14 have no tracked name reference. Manual inspectors such as `scripts/cls.py:2` and `scripts/appinfo.py:2` can still be invoked independently. |

**CONFIRMED.** Reachability starts from applied smali, overridden callbacks and reflective names. Reachable owners also retain field initializers. This protects callbacks even without an override annotation. Reflection occurs in `ModFitting.java:218`, `ModLan.java:1140` and `ModUi.java:381`. Names assembled at runtime, external entry points and on-device timing limit what static analysis can establish. See `codex/tools/b2-06/map.py:92`. All suspected candidates were retained.

## Duplication, data drift and session state

- **CONFIRMED — late-level XP differs.** The simulator compounds 8% and indexes by level minus one. The game indexes by current level and rounds a 5% extension. The first extrapolated values are 39,960 and 38,850 respectively. A prediction based on the simulation therefore uses a different XP ladder. Its salvage check covers a separate quantity. Sources: `tools/sim/econ_sim.py:9,32,62`, `ModV34.java:29`, `tools/sim/pace_check.py:14`.
- **CONFIRMED — hull prices agree.** All 47 hull constructor prices match the applied enum. For example, compare `ModShips.java:73` with `work/smali/fr/testudo/spacecorsair/business/loot/SpaceObjectType.smali:9051`. All 47 flavour keys and 77 source keys are distinct and resolve in their respective catalogs (`ModShipFlavour.java:58`, `ModSources.java:85`, `codex/tools/b2-06/map.py:174`).
- **CONFIRMED — similar constants have different meanings.** REAVER, VARN and WARDEN use mission-side indices 0/1/2 and police faction indices 1/3/6. Sharing raw ordinals would change lookups (`ModFaction.java:36,621,632`, `ModPoliceGen.java:31`). Monolith and wing animation also share an opening threshold and hold time, while their maximum angles are 80 and 12 degrees and their overshoot bounds differ (`ModMonolith.java:29,105`, `ModWings.java:20,96`).
- **CONFIRMED — LAN session reset misses one XP sample.** The reset clears sent XP and the guest baseline. The prior host sample is initialized once and updated before the render queue swap (`ModLan.java:832,838,2308,2358`). **SUSPECTED.** A second hosted session in the same process can count XP gained between sessions. The guest computes its own baseline (`ModLan.java:2118`). A two-session host/guest test would establish the player-visible effect.
- **CONFIRMED — activity lifetime crosses the stop path.** The static activity reference is assigned, consulted as a fallback, and retained through stop (`ModLan.java:348,359,702,2715`). **SUSPECTED.** Activity recreation may leave a stale fallback. Test rotation between disconnect and reconnect. The reputation cache has a time limit, and the test profile switch requests a process restart (`ModRep.java:57,65`, `ModTestMode.java:453,470`).

## Ranked refactor plan

| Rank | Change and evidence | Effort / risk | What it unlocks |
|---|---|---|---|
| 1, implemented | **CONFIRMED.** Share the 0–10 refit clamp for both multipliers and saved levels (`ModV35.java:53,58,62,151`). | Small / low | One boundary rule for all three readers. The saved key and default are preserved. |
| 2, implemented | **CONFIRMED.** Share the half-pixel conversion, passing each effect's current size explicitly (`ModSpriteSpace.java:7`, `ModLevFx.java:155`, `ModLevDoom.java:132`, `ModMonolith.java:168`, `ModWings.java:99`). | Small / low | One coordinate convention for four effects. Hornet has its own distinct origin (`ModHornet.java:118`). |
| 3 | **CONFIRMED.** Compare simulator XP against the game table at every level (`tools/sim/econ_sim.py:32`, `ModV34.java:29`). | Small / medium | Quantifies the change to modeled progression before adopting any simulator correction. |
| 4 | **SUSPECTED.** Consolidate LAN session counters after characterizing two consecutive hosts (`ModLan.java:832,2308`). | Medium / medium | Gives session reset a testable ownership boundary. |
| 5 | **SUSPECTED.** Record runtime art requests before pruning legacy texture families (`ModArt.java:261`, `ModMonolith.java:207`). | Medium / higher | Identifies removable assets without breaking generated hull variants. |

## Verification

**CONFIRMED.** The characterization test exercises nine refit levels against both multipliers and seven pixel coordinates at five sizes in each of the four production effects. It compares floating-point bits, including signed zero, and restores each effect's size. The saved-level clamp also has a source-level equivalence check in the diff. Device preferences and rendering were outside the JVM run. See `work/dtest/fr/testudo/spacecorsair/mod/B6Refactors.java:10`.

The same commands ran on the original source with the new test and on the edited tree, from each repository root:

```sh
export PATH=/workspace/work/b207-jdk/jre/bin:$PATH
mkdir -p /tmp/mc
javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
cp=/tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls
javac --release 8 -nowarn -cp "$cp" -d /tmp/mc work/dtest/fr/testudo/spacecorsair/mod/B6Refactors.java
java -cp "$cp" fr.testudo.spacecorsair.mod.B6Refactors
```

Output on both revisions:

```text
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
B6 REFACTORS OK (158 cases)
```

**CONFIRMED.** The legacy probes also printed `V35 VALUES-OK` and `V37W VALUES-OK`. Running `(cd server/rendezvous && node test/registry.test.mjs)` printed `REGISTRY OK`. The map rebuild requires Python 3, a JDK with javac and Graphviz on PATH. From the repository root, run `python3 codex/tools/b2-06/map.py`. Rebuilding produced identical SHA-256 hashes for all three CSVs and eight SVGs.
