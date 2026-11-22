# Frame CPU and allocation costs

**CONFIRMED.** In a 60-ship desktop JVM fixture, the largest avoidable allocation per received compact frame was the guest's boxed occurrence index. The host also created a temporary 4 KiB radar buffer and copied the complete mark list twice every physics frame. The two opt-in changes retain the record order, distance threshold, radar bytes and snapshot ownership. Both flags ship off. See `ModLanSync.java:285`, `ModLanSync.java:299`, `ModLan.java:1510`, `ModFx.java:22` and `FrameParity.java:76`. Java source names below refer to `src/java/fr/testudo/spacecorsair/mod/` unless named as a fixture.

## Frame inventory

**CONFIRMED.** [Frame hooks](frame-hooks.csv) lists the method, cadence, caller and exact call instruction for each recurring engine entry, plus GL, Android view and reader callbacks. [Reachable methods](frame-methods.csv) follows mod-to-mod invocations from those entries, preserving overload descriptors and one representative source call site. Conditional branches include first use, level changes, events and UI actions. A reachable method can execute zero times in a frame. Counts below describe the loops at the call sites. Smali was read as text. Examples of patch sources are `src/patch/hooks30.py:29`, `src/patch/hooks30.py:37`, `src/patch/hooks30b.py:12` and `src/patch/hooks49_lan.py:36`.

| Status | Methods | Frequency and work | Call or implementation |
|---|---|---|---|
| CONFIRMED | ModLive.frameStart, frame, draw, under, over | Once per physics tick, lazily once on the first eligible draw, then per visible element and hull layer | ModLive.java:38, :46, :61, :90, :104 |
| CONFIRMED | Mod.tick, ModCaps.tick, ModFx.update, ModTitan.tick, ModAnchor.tick, ModHornet.tick | Per player physics step. Updates timers, particles, equipment and conditional subsystems | Mod.java:375, :386 |
| CONFIRMED | ModPolice.tick/lights, ModWings.underEnemy, ModHornet.underEnemy, ModV34.shieldTick/shieldDraw | Police tick per player update. Draw-side eligibility checks per visible non-player element, shield state per eligible hull | ModPolice.java:435, ModLive.java:92, :105, :147, :207 |
| CONFIRMED | ModTitanAI.tick, ModAegisDrones.tick/fly, ModCapitals.draw, ModStationGuns.tick/guns/pick/draw | Per active capital, live drone, nearby station or mount. Target scan on aim expiry or invalidation | ModTitanAI.java:178, ModAegisDrones.java:47, ModCapitals.java:371, ModStationGuns.java:207, :297, :336, :393 |
| CONFIRMED | ModCaps.drawUnder/drawOver, ModFx.drawParticles, ModFx.Sprite.draw, ModArt.pump/frameEnd | Player draw layers, two particle passes, GL call per sprite, queue scan and one prefetched upload opportunity per drawn frame | Mod.java:249, ModCaps.java:346, :414, ModFx.java:74, :432, ModArt.java:545, :556 |
| CONFIRMED | ModLan.frame/hostFrame/guestFrame, beforeSwap/capture/replay, ModLanSync.read/index/pair/glide | Link work per physics tick, capture on due swaps, decode/index on receiver thread per incoming compact frame, interpolate before guest replay | ModLive.java:40, ModLan.java:958, :1252, :1429, :1774, ModLanSync.java:34, :366 |
| CONFIRMED | ModQol.drawHud, ModUi.update, refit and tree onDraw | HUD per GL frame. Toolbar listens to layout changes with a delayed refresh. Refit/tree draw on Android view invalidation | ModQol.java:424, ModUi.java:242, :250, :261, ModRefitScreen.java:207, ModShipTree.java:838 |

## Static review

- **CONFIRMED.** Target acquisition refreshes level caches once per frame, then nearest-ship queries traverse them again. Many requesters can still cost O(requesters × targets). Station acquisition also scans capitals and civil ships, and each mount repeats its local coordinate transform when computing the outward angle. The benchmark isolates the cached target searches. `Mod.java:103`, `:130`, `:136`, `:156`, `ModStationGuns.java:290`, `:309`, `:343`, `:350`, `:357`.
- **CONFIRMED.** At full capacity each new particle scans 360 remaining lifetimes. Update uses swap removal, and both draw layers scan the live pool. The sprite ring reuses drawables. UV and per-edge direct buffers can still allocate on first use. First-seen hulls allocate state and derived strings, while repeated draws query synchronized weak maps. `ModFx.java:53`, `:111`, `:146`, `:345`, `:393`, `:432`, `ModLive.java:243`, `:255`, `:309`, `ModArt.java:771`.
- **CONFIRMED.** Capturing a render list repeatedly reads cached reflection fields and takes the texture-definition lock. Compact sprite encoding locks the style table per sprite. Guest replay obtains textures under another monitor. Host shot snapshots copy a list under the reader lock even when empty. The host's radar uses an enhanced-for iterator. First-time texture definitions, status logging, queued UI callbacks and new style records allocate strings/objects. **SUSPECTED.** Lock wait and GC pauses under actual concurrent traffic require on-device traces. The desktop rows measure uncontended costs. `ModLan.java:850`, `:862`, `:887`, `:958`, `:1510`, `:1755`, `:1791`, `ModLanSync.java:106`, `:118`, `ModUi.java:238`.
- **CONFIRMED.** Texture lookup can request background decode on a cache miss. GL-side queue scans, lazy texture use and pending uploads are separate costs. UI traversal creates labels and searches descendants during toolbar updates. No per-record Java lambda occurs in the measured game loops. The lambdas in FrameBench are harness setup. **SUSPECTED.** Driver uploads, first-draw buffers, asset eviction and Android layout can dominate cold frames. `ModArt.java:334`, `:545`, `:556`, `:586`, `:623`, `:792`, `ModUi.java:261`, `ModFx.java:74`.
- **CONFIRMED.** PERF_FRAME_INDEX groups the previous frame's original positions by integer key and occurrence number. A compact frame owns its arrays, including when the flag changes between arrivals. PERF_RADAR_BUFFER reserves the two-byte count at the start of game-thread scratch space and publishes one fresh immutable-by-convention byte array. No thread shares the scratch with a reader. `ModLan.java:1092`, `:1268`, `:1510`, `:1544`, `ModLanSync.java:299`, `:345`.

## Measurement

**CONFIRMED.** Three separate JVMs per mode, five warm-up batches and seven timed batches per fork. Each cell is the median of fork medians. Bytes are current-thread allocated bytes from HotSpot ThreadMXBean. Time includes the loop, sinks, and any queue reset or stream wrapper used by the operation. Intel Xeon Platinum 8573C, Temurin 17.0.16, 256 MiB heap, Java 8 bytecode. Allocation and time use independent medians. The 15 candidates are selected by static call multiplicity, scan size and expected allocation. Device-wide rank is unknown.

**CONFIRMED fixture.** Battle.java:44 builds 60 ship entries including the player, two flagship-shaped queues, one police titan, five drone hulls and three guest stand-ins. Four additional turret draws give 222 world records; 180 additional particles exercise FX separately. Three heavy hulls receive 12 overlays each. Twenty hull textures exercise distinct look keys. Two drones occupy actual player slots. The remaining roles model render and target load. The current link carries one peer (`src/patch/hooks49_lan.py:1`), so the estimate models independent guest streams. Codec tests use inline compact sprites, a loaded texture table, reusable output and a prebuilt 222-record packet. The targeting rows use a warm enemy cache. Game constructors needing an Activity are bypassed only in the fixture. The JVM FloatMath shim delegates Android native math to Math. No driver, socket, scheduled contention or live encounter was sampled.

| Measured method | Unit per call | Off ns | On ns | Off bytes | On bytes |
|---|---|---:|---:|---:|---:|
| hostMarks | host radar list | 16581.6 | 15838.5 | 6448 | 1216 |
| capture | world queue | 87674.0 | 87106.6 | 0 | 0 |
| read | incoming frame | 73188.1 | 70640.4 | 31456 | 31456 |
| indexRecords | incoming frame | 18701.5 | 18389.1 | 22736 | 7128 |
| pair | incoming frame | 7066.0 | 2181.4 | 5328 | 0 |
| glide | render frame | 1484.6 | 532.8 | 0 | 0 |
| replay | world queue | 10171.7 | 13144.8 | 0 | 0 |
| findEnemyInFront | targeting query | 3487.8 | 3512.2 | 0 | 0 |
| findEnemy | targeting query | 81.3 | 84.9 | 0 | 0 |
| enemiesInto | enemy list copy | 261.8 | 616.4 | 232 | 232 |
| update | 180 particles | 1292.7 | 990.7 | 0 | 0 |
| drawParticles | one particle layer | 7458.8 | 7728.1 | 0 | 0 |
| local | one mount | 41.3 | 38.6 | 0 | 0 |
| sprTex | one sprite | 52.3 | 39.6 | 0 | 0 |
| sprite | one encoded sprite | 367.2 | 369.2 | 0 | 0 |

**CONFIRMED.** Allocation saved per host radar snapshot is 5,232 bytes. The guest index and pairing save 20936 bytes together per packet. Unchanged rows show run-to-run timing variation. Capture includes sprite encoding, and drawParticles submits sprites. Adding all rows together would count work twice. See [raw command output](measurements.txt).

## Mid-2018 phone estimate

**SUSPECTED.** Assume a warm 60 Hz Snapdragon 660-class big core and a 3–8× slowdown from this desktop for these CPU-only kernels. This is a sensitivity range, with no handset calibration. Per display frame assume one radar build, one particle update, two layer draws, five nearest-target queries, one forward query, four mount transforms and three independent 15 Hz captures. A guest replays and glides each display frame and reads/indexes/pairs at 15 Hz. Three captures model the requested load; a shipping single-peer host uses one. Reader CPU is amortized separately from render work.

- Flags off: host 0.103 ms desktop → **0.31–0.82 ms** phone CPU per display frame. One guest 0.036 ms desktop → **0.11–0.29 ms**.
- Flags on: host 0.102 ms desktop → **0.31–0.81 ms** phone CPU per display frame. One guest 0.036 ms desktop → **0.11–0.29 ms**.

These are partial CPU budgets against a 16.67 ms frame. Aligned captures can concentrate all three encodes into one tick. GPU submission, base-game AI, actual radio, thermal throttling and garbage collection require a handset trace.

## Verification

From the repository root:

```sh
export PATH=/workspace/setup/tools/jdk17/bin:$PATH
mkdir -p /tmp/mc && javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
codex/tools/b2-08/run.sh > codex/out/b2-08/measurements.txt 2>&1
CP=/tmp/mc:$PWD/work/game_v168.jar:$PWD/tools/android-4.1.1.4.jar:$PWD/work/stubcls
javac --release 8 -cp "$CP" -d /tmp/mc work/dtest/fr/testudo/spacecorsair/mod/V49.java
mkdir -p /tmp/b2-08-v49
(cd /tmp/b2-08-v49 && java -cp "$CP" fr.testudo.spacecorsair.mod.V49 > v49.log 2>&1)
rg 'VALUES-' /tmp/b2-08-v49/v49.log
(cd server/rendezvous && node test/registry.test.mjs) | tail -1
```

```text
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
FRAME PARITY OK (256 frame pairs, 64 radar scenarios)
V49 VALUES-OK
REGISTRY OK
```

The full benchmark output, including all six forks, is in [measurements.txt](measurements.txt). The equivalence checks compare previous-object identity, occurrence, interpolated coordinates, heading, history release, flag transitions, truncation at 300 marks and previously published bytes after the next game tick. See `work/dtest/fr/testudo/spacecorsair/mod/FrameParity.java:28` and `:51`.
