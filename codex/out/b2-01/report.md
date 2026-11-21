# Multiplayer network simulation and fixes

On the requested starting branch (`a02248c`), the focused tests reproduced all ten BH findings. The idle TURN result depends on an expiring allocation. The simulated relay deterministically enforces the lifetime it advertises. A live provider's behavior remains unverified. The schedule tests also uncovered NS01, a network-reader access to game tables.

## Focused cases

The Java cases are in `work/dtest/fr/testudo/spacecorsair/mod/netsim/Findings.java`. Each enabled Java case selects just its own BH flag. The Node cases use the real Worker with an in-memory Durable Object storage fixture. Java source references below are relative to `src/java/fr/testudo/spacecorsair/mod/`. Worker source references are relative to `server/rendezvous/`. Line references describe this PR.

| Finding | Status and test | Observed with fix off → on | Change and evidence |
|---|---|---|---|
| BH01 | CONFIRMED · cancelled reconnect, `Findings.java:27` | Cancelled status preserved: false → true | The sleeper captures a generation. Join admission checks it under the same lock as cancellation. `ModLobby.java:542`, `ModLobby.java:682` |
| BH02 | CONFIRMED · repeated valid join, `test/netsim.mjs:53` | 21st join: slow → ok | Active retries for the same lobby, install and session use a separate bounded counter. A new session still consumes the new-join allowance. `src/index.js:288`, `src/index.js:308` |
| BH03 | CONFIRMED · disconnect while docked, `Findings.java:41` | Local enemies after undocking: 0 → 1 | Record the identity of the stripped sector. Retry rebuilding it from the game thread after the guest leaves and the pilot can travel. The test substitutes the closed gate-travel implementation. `ModLan.java:1684`, `ModLan.java:2112`, `PhoneLoader.java:45` |
| BH04 | CONFIRMED · guest drone and doomsday, `Findings.java:52` | Owned drone forwarded: false → true. Host target hit: 0 → 91 (fixture ceiling) | Owned drone projectiles take the existing validated shot path. A reliable start message asks the host to run a doomsday cycle. The declared hull supplies its cadence and geometry, and hits consume the host's damage allowance. `ModLan.java:1115`, `ModLan.java:1859`, `ModLan.java:2238`, `ModTitan.java:581` |
| BH05 | CONFIRMED · session policy notification, `Findings.java:81` | Online session stopped: false → true. Local control session stayed connected | Detection invalidates pending lobby operations. The game frame stops an existing internet session. `ModLobby.java:172`, `ModLan.java:194`, `ModLan.java:207`, `ModLan.java:1680` |
| BH06 | CONFIRMED · full hull after accumulated hits, `Findings.java:91` | Host score: 1 → 0. A subsequent reported defeat scored once | The fallback requires floor-hull evidence as well as the accumulated threshold. Absorbed damage alone cannot end a round at full hull. `ModLan.java:2603` |
| BH07 | CONFIRMED · stop between floor hit and frame, `Findings.java:101` | Fresh duel: guest 1, round 2 → guest 0, round 1 | Clear the pending loss and refill at stop and on duel entry or exit. `ModLan.java:746`, `ModLan.java:2545`, `ModLan.java:2575`, `ModLan.java:2643` |
| BH08 | CONFIRMED · level rollover, `Findings.java:108` | Shared XP for the 20-point award: 0 → 20. Multiple-threshold test shared 20,015 total | Reset the session baseline, use the previous bar on the first crossing, and sum the game's thresholds for intermediate levels. `ModLan.java:842`, `ModLan.java:2354`, `ModLan.java:2406` |
| BH09 | CONFIRMED · idle retention after restart, `test/netsim.mjs:69` | Expired rows remaining: 540 → 0 | On first load, adopt existing rows. New records arm a durable alarm in the write transaction. Each alarm drains a bounded page per type, then schedules the oldest deadline. Admin reads exclude due rows even before the alarm runs. `src/index.js:104`, `src/index.js:490`, `src/index.js:512`, `src/index.js:530` |
| BH10 | CONFIRMED for an expiring relay · idle host lease, `Findings.java:119` | 60-second lease live after 120 seconds: false → true, with four renewals | The host checks the lease before advertising it. Renewal uses the advertised lifetime. Failed renewal clears the waiting allocation so the host can reacquire one. SUSPECTED for the production provider, whose lease we did not measure. `ModNet.java:425`, `ModNet.java:437`, `ModLobby.java:446`, `ModLobby.java:489` |

## Random schedules

The driver runs the same 10,000 seeds twice. Each seed opens a room, registers one to three candidates, fills the game's single guest seat, applies XP, damage and kill events, runs a duel, then leaves or crashes and reconnects with a fresh session ID. The fault schedule varies delay, jitter, loss, duplicate delivery, reordering and asymmetric loss. Each phone has its own clock offset. A healthy interval at the end of play lets the final snapshots and outstanding reliable messages arrive before comparison. CONFIRMED in `NetSim.java:64`, `NetSim.java:98`, `NetSim.java:110`, `ModLan.java:80`.

| Invariant | Sessions failing with flags off | Sessions failing with flags on |
|---|---:|---:|
| Guest sector restored | 10,000 | 0 |
| Guest received all host XP earned during play | 9,896 | 0 |
| Game-table field access confined to game thread | 1 | 0 |
| Hull, loot roll count, duplicate kills, lobby admission/occupancy, duel scores, disconnect detection and fresh reconnect state | 0 | 0 |

**NS01 — CONFIRMED.** The first cold host processed a state or loadout declaration on `sim-reader`. Computing the undeclared hull ceiling or resolving gear there read game fields and initialized ship specifications. Caching made these first-use accesses disappear from later warm sessions. `FIX_NS01` preserves basic wire bounds on the reader and applies the decoded declaration and hull limits in the host frame. The same workload then recorded zero off-thread field accesses. See `ModLan.java:1295`, `ModLan.java:1331`, `ModLan.java:1354`, `ModLan.java:1808`, `ModLanCheck.java:156`.

[All seed outcomes](seed-ranges.tsv) covers every seed, grouping consecutive identical results. [Reader access sites](reader-access.tsv) records each instrumented off-thread field site, the thread and its count by seed. The complete sweep starts with a cold JVM. A single-seed replay also starts cold, so it can encounter NS01 on a seed that originally ran against warm tables.

## What the simulation exercises

- CONFIRMED. Four isolated class loaders supply separate mod and game singletons. A virtual datagram wire steps the production link timer, ACK/retransmission logic, reliable stream, latest-message assembly and `ModLan.receive`. The game and reader run on separate JVM threads. ASM redirects the clock in the loaded test copies and records closed-game instance-field and registry access sites from mod code. `PhoneLoader.java:10`, `NetSim.java:12`, `SimPhone.java:155`, `ModNet.java:1016`, `ModNet.java:1041`.
- CONFIRMED. Node runs the real `server/rendezvous/src/index.js` with synthetic storage. The JVM consumes the registry's replies through `ModLobby.parse`. The Java flags for BH02 and BH09 configure the test Worker. On a deployed Worker the operator controls those two flags independently through environment bindings set to `1`. All fixes default off. `ModNet.java:41`, `SimPhone.java:60`, `NetSim.java:55`, `test/netsim.mjs:98`.
- CONFIRMED. Scheduled play starts at an established link with known peer addresses. The driver creates minimal pilot and sector objects, supplies authoritative damage and XP inputs, and counts independent per-kill loot roll invocations. It checks the game callbacks and their replication. Android rendering, the physical Internet, NAT traversal, actual dropped-item distributions and real-time thread interleavings are outside this run. The existing V49 regression suite separately exercises the local socket handshake. `SimPhone.java:97`, `SimPhone.java:162`, `SimPhone.java:171`, `PhoneLoader.java:45`, `work/dtest/fr/testudo/spacecorsair/mod/V49.java:79`.

## Review target

The implementation and results apply to `claude/project-thread-kci9au` at `a02248c`. `sc-mod-workspace` had independently evolved while this task was in progress. A read-only comparison against `49a9b87` identified overlapping edits in `ModLan.java`, `ModLobby.java`, `ModTitan.java` and the registry's `src/index.js`. The PR is for review against that destination; the verification below uses the requested starting branch.

## Verification transcript

Commands ran from the task worktree with OpenJDK 17 and Node 24. The baseline invocations deliberately assert the corrected behavior and exit 1. The enabled invocations exit 0. Both complete schedule replays produced byte-identical per-seed files for each mode.

```sh
export PATH=/workspace/setup/tools/jdk17/bin:$PATH
export CP=/tmp/ns:/tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls:tools/d2j/asm-9.6.jar
mkdir -p /tmp/mc && javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
mkdir -p /tmp/ns && javac --release 8 -cp "$CP" -d /tmp/ns work/dtest/fr/testudo/spacecorsair/mod/netsim/*.java
```

Compiler output (the harness compilation was silent):

```text
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
```

**JVM findings, fixes off**

```sh
java -Xmx512m -cp "$CP" netsim.NetSim findings off 1
```

```text
seed=1 fixes=off
FAIL BH01 cancelled status preserved=false
PASS BH03 followed world stripped
PASS BH03 deferred while docked
FAIL BH03 rebuilt enemies=0
FAIL BH04 owned drone=false authoritative capped hit=0.0
FAIL BH05 internet stopped=false
FAIL BH06 full-hull guest hostWins=1
FAIL BH07 fresh duel guestWins=1 round=2
FAIL BH08 rollover shared=0
FAIL BH10 idle lease live=false renewals=0
Exception in thread "sim-game" java.lang.AssertionError: 8 checks failed
	at netsim.NetSim.main(NetSim.java:204)
```

**Worker findings, fixes off**

```sh
node server/rendezvous/test/netsim.mjs off
```

```text
seed=1 (fixed registry schedule)
BH02 repeated valid join=slow
BH09 expired rows after idle restart=540
node:internal/modules/run_main:107
    triggerUncaughtException(
    ^

AssertionError [ERR_ASSERTION]: expected valid retry and idle expiry
    at findings (file:///workspace/work/b2-01/server/rendezvous/test/netsim.mjs:95:3)
    at async file:///workspace/work/b2-01/server/rendezvous/test/netsim.mjs:114:3 {
  generatedMessage: false,
  code: 'ERR_ASSERTION',
  actual: false,
  expected: true,
  operator: '==',
  diff: 'simple'
}

Node.js v24.19.0
```

**Random schedules, fixes off**

```sh
java -Xmx512m -cp "$CP" netsim.NetSim sessions off 1 10000 /workspace/work/verified-off.tsv
```

```text
seed=1 fixes=off
sessions=10000 inclusive seeds=1..10000
sessions per invariant={empty-sector=10000, thread=1, xp=9896}
game-thread field accesses=28345652
Exception in thread "sim-game" java.lang.AssertionError: 1 checks failed
	at netsim.NetSim.main(NetSim.java:204)
```

**JVM findings, fixes on**

```sh
java -Xmx512m -cp "$CP" netsim.NetSim findings on 1
```

```text
seed=1 fixes=on
PASS BH01 cancelled status preserved=true
PASS BH03 followed world stripped
PASS BH03 deferred while docked
PASS BH03 rebuilt enemies=1
PASS BH04 owned drone=true authoritative capped hit=91.0
PASS BH05 internet stopped=true
PASS BH05 local session remains playable
PASS BH06 full-hull guest hostWins=0
PASS BH06 reported floor scores once
PASS BH07 fresh duel guestWins=0 round=1
PASS BH08 rollover shared=20
PASS BH08 multiple thresholds shared=20015
PASS BH10 idle lease live=true renewals=4
PASS BH10 expired allocation retired before heartbeat
```

**Worker findings, fixes on**

```sh
node server/rendezvous/test/netsim.mjs on
```

```text
seed=1 (fixed registry schedule)
BH02 repeated valid join=ok
BH09 expired rows after idle restart=0
```

**Random schedules, fixes on**

```sh
java -Xmx512m -cp "$CP" netsim.NetSim sessions on 1 10000 /workspace/work/verified-on.tsv
```

```text
seed=1 fixes=on
sessions=10000 inclusive seeds=1..10000
sessions per invariant={}
game-thread field accesses=28901410
```

**Existing JVM socket regression**

```sh
mkdir -p /workspace/work/v49
javac --release 8 -cp "$CP" -d /tmp/ns work/dtest/fr/testudo/spacecorsair/mod/V49.java
(cd /workspace/work/v49 && java -cp /tmp/ns:/tmp/mc:/workspace/work/b2-01/work/game_v168.jar:/workspace/work/b2-01/tools/android-4.1.1.4.jar:/workspace/work/b2-01/work/stubcls fr.testudo.spacecorsair.mod.V49) > /workspace/work/v49.log 2>&1
tail -8 /workspace/work/v49.log
```

```text
ok V49 check: a burst cannot pass three seconds of the damage-per-second ceiling
ok V49 check: damage room comes back with time
ok V49 check: a normal shot passes untouched
ok V49 code entry: only the code alphabet, upper case, 4 at most
ok V49 guest position: read back for the same sector
ok V49 guest position: another sector, an old record or bad numbers give nothing
ok V49 text: English stays English when the phone is not Spanish
V49 VALUES-OK
```

**Final registry regression**

```sh
cd server/rendezvous && node test/registry.test.mjs > /workspace/work/registry.log && tail -1 /workspace/work/registry.log
```

```text
REGISTRY OK
```
