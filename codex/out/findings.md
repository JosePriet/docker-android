# Task 1: gameplay bug hunt

Reviewed `claude/project-thread-fuw6ke` at `f05df25c14b8c70be15c9ce1794e667b99f95210`, following its `AGENTS.md`, `CONTEXT.md` and `KNOWN.md`. The reviewed Java and rendezvous sources are identical to `sc-mod-workspace` at `f9f0a7bdbc8af1402d98abdc2052aa0ab76cecb3`; line numbers below refer to those sources. This PR changes only this report.

CONFIRMED means the erroneous transition is traceable in the repository, with deterministic method-level reproductions where noted. These checks do not claim Android end-to-end coverage. SUSPECTED identifies an explicit dependency that was not reproduced. Findings exclude the accepted trust in declared loadouts and the accepted loss of just-closed lobby history on service restart.

| ID | severity (high/medium/low) | CONFIRMED/SUSPECTED | file:line | bug | what the player sees | suggested fix |
|---|---|---|---|---|---|---|
| BH01 | medium | CONFIRMED | `src/java/fr/testudo/spacecorsair/mod/ModLobby.java:655-662` | Delayed internet reconnect survives leaving the old session | A previously lost game reconnects after the player hosted and stopped a different game | Capture a cancellation generation before sleeping and validate it before joining |
| BH02 | medium | CONFIRMED | `server/rendezvous/src/index.js:297-300` | Every retransmitted correct-code join consumes the new-join quota | Several slow connection attempts lock a legitimate guest out for minutes | Deduplicate retries by lobby, install and session before charging the attempt quota; separately bound retry traffic |
| BH03 | medium | CONFIRMED | `src/java/fr/testudo/spacecorsair/mod/ModLan.java:2063-2067,702-749` | Disconnect does not restore the guest's destroyed local sector | Enemies, rocks and mission targets remain missing after co-op ends | Queue a game-thread sector rebuild on guest exit, including failed reconnects |
| BH04 | medium | CONFIRMED | `src/java/fr/testudo/spacecorsair/mod/ModLan.java:2189-2191`; `ModTitan.java:506-540` | Guest drone fire and direct-damage doomsdays never reach the authoritative host | Drone and doomsday builds lose their offensive abilities as guests | Mirror these attack events and resolve them on the host with validated limits |
| BH05 | high | CONFIRMED | `src/java/fr/testudo/spacecorsair/mod/ModLobby.java:172,192-198`; `ModCaps.java:167-171` | A test switch detected during play does not end an existing internet session | A test-altered pilot can continue playing online despite the run being locked | On detection, cancel pending internet joins and end active internet sessions through the appropriate thread |
| BH06 | medium | CONFIRMED | `src/java/fr/testudo/spacecorsair/mod/ModLan.java:2535-2543` | Host's forced-defeat path counts accumulated raw hits instead of hull reaching one | An honest guest loses a duel round while still at full hull | Make forced-round validation account for shield absorption and regeneration rather than using lifetime raw damage alone |
| BH07 | medium | CONFIRMED | `src/java/fr/testudo/spacecorsair/mod/ModLan.java:739-746,2509-2515,2547-2551` | Pending duel loss is not cleared on stop or new duel | The next duel starts with an unearned point and round two | Reset `lostRound` and pending round-restoration state on session/duel boundaries |
| BH08 | medium | CONFIRMED | `src/java/fr/testudo/spacecorsair/mod/ModLan.java:2307-2309` | Shared XP misses the award that makes the host level up | The guest falls behind when the host crosses a level boundary | Track cumulative earned XP or include the crossed level thresholds in the delta |
| BH09 | medium | CONFIRMED | `server/rendezvous/src/index.js:474-475,499-501,131-140` | Report/sample expiry only runs when another record of that type is submitted | Old reports and samples survive beyond the promised 30 days | Schedule paginated expiry independently of future submissions, and filter expired rows from reads |
| BH10 | medium | SUSPECTED | `src/java/fr/testudo/spacecorsair/mod/ModLobby.java:438-441`; `ModNet.java:453-460,994-1013` | A hidden host does not renew its relay allocation while waiting | A long-waiting relay-only lobby may remain listed but become unreachable | Renew the allocation while waiting and reacquire it when expired or dead |

## BH01 — cancellation does not invalidate an internet reconnect

`ModLobby.java:655-662`:

```java
final String jc = joinedCode;
if (jc.length() != 4) return;
Thread t = new Thread(new Runnable() {
    public void run() {
        try { Thread.sleep(3000); } catch (InterruptedException e) { return; }
        if (ModLan.role != ModLan.NONE || busy) return;
        if (!join(jc)) ModLan.status = ModLang.tr("Co-op link lost");
```

`leave()` increments `gen` and clears `joinedCode` (`737-743`), but the sleeper retains `jc` and never compares a generation. `ModLan.fail()` schedules this reconnect after an unexpected guest disconnection (`628-634`). A player can then start a local host, which calls `ModLobby.leave()` (`ModLan.java:120-126`), and stop hosting before the three seconds expire (`2778`). The final role is again `NONE` and `busy` is false. The cancelled sleeper therefore joins the old internet lobby.

The JVM reproduction schedules `rejoin()`, invokes the same `leave(); stop()` cancellation, and observes it entering `join()` anyway. To avoid contacting any service, the reproduction enables the test-profile guard **after** cancellation; the stale callback still replaces the cancelled status through `join()`'s guard. Output:

```text
Cancelled reconnect still entered join=true
```

Capture/check `gen` across the sleep, and also invalidate sleepers when beginning or stopping another multiplayer operation. This differs from the LAN reconnect loop, which already checks `linkGen` (`648-656`).

## BH02 — connection retries exhaust the legitimate join allowance

`index.js:297-300`:

```js
if (!this.allow("jn:" + ik, 20, 10 * 60 * 1000)) return reply("slow", {}, null, 429);
const pid = await this.pid(l, id);
l.joins = l.joins.filter((j) => t - j.at < JOIN_LIFE_MS);
const prev = l.joins.find((x) => x.id === id);
```

The quota is charged before recognizing an existing waiting join. This includes retries from the shipped client, not just new players or wrong codes. `ModLobby.repeatJoin()` repeats every eight seconds, up to four times (`620-628`); the initial join (`540`), optional hidden-address update (`552`), host-address polling (`555-558`) and fallback update (`573`) consume the same budget. The second relay connection also starts a repeating join (`576`).

After several slow/failing connection attempts within ten minutes, the same install using the correct code receives `slow`, and `ModLobby.join()` treats the initial refusal as failure (`541`). A shared caller network shares this quota as well. This is separate from the intentional wrong-code limiter (`287-289`).

The Node reproduction sends four sets of five correct-code joins, keeps the host alive, and advances time eight seconds per join. The very next join fails:

```text
Correct-code joins: accepted=20 next=slow status=429 elapsed=160s
```

Make a repeat of the same active session idempotent before applying the new-attempt quota, while retaining a distinct retry-traffic bound.

## BH03 — guest disconnect leaves the local world empty

`ModLan.java:2063-2067`:

```java
for (Element e : lv.elements) {
    if (e == ps || e.removed || Mod.isDrone(e)) continue;
    if (e instanceof LootElement && myLoot.containsKey(e)) continue;
    if (e instanceof Ennemis || e instanceof CivilShip || e instanceof Asteroid || e instanceof LootElement || e instanceof Mine
        || (e instanceof Projectile && ((Projectile) e).sender != ps)) e.remove();
}
```

Following the host destroys local objects rather than merely hiding them. On disconnect, `stop()` sets `connected=false`, `role=NONE`, `dropProxy=true` and `solo=false`, but requests no sector restoration (`702-749`). The next `frame()` only removes the proxy and calls `leaveBay()` when unconnected (`1715,1723-1725`); outside the duel bay that does not rebuild anything. With `guestActive()` now false (`2172-2173`), the remote stream also stops replacing the deleted world.

The same rebuild requirement was recognized for the explicit "Fly my own missions" action: `setSolo()` sets `soloReload` and `preFrame()` invokes gate travel (`1604-1608,1651-1662`). That restoration is absent from guest exit, and `preFrame()` would reject `role=NONE` anyway (`1655`).

The JVM reproduction puts an ordinary enemy in a guest sector, executes `guestFrame()`, then `stop()`:

```text
Disconnect: original enemy removed=true reloadQueued=false
```

Queue restoration for guest exits on the game thread, preserving the pilot's progress and handling docked/map states by retrying rather than discarding the request. A player currently has to leave/rebuild the sector to recover its contents.

## BH04 — guest attacks outside ordinary player projectiles are lost

`ModLan.java:2189-2196`:

```java
if (!(o instanceof Projectile) || o instanceof LaserBeam) continue;
Projectile p = (Projectile) o;
if (p.sender != ps) continue;
// ...
sendReliable(MSG_SHOT, bo);
```

Only ordinary projectiles whose sender is the player ship are forwarded. Guest drones explicitly remain in the local sector (`2064`), but their projectiles have the drone as sender and fail this test. `Mod.isDrone()` identifies the actual player drone objects (`Mod.java:60-66`); it is not consulted here. Their targets are also removed locally by the loop in BH03, so their attacks cannot damage the host's enemies by another route.

The same missing route affects the mod's doomsday. `ModTitan.damageTick()` creates a `LaserBeam` as an in-memory hit descriptor and scans local enemies:

```java
// ModTitan.java:506-516
if (doomShot == null) doomShot = new LaserBeam();
doomShot.sender = ps;
// ...
Mod.enemiesInto(targets);
```

It calls `doomHit()` on those local targets (`523,540`), which directly applies the hit (`601`):

```java
e.applyProjectileHit(doomShot);
```

`Mod.enemiesInto()` scans `game.currentLevel.elements` (`Mod.java:104-133`), not the received render records. It therefore cannot hit the host's ships from the guest. There is no network call in this path, and the shot mirror excludes `LaserBeam` on both sending and receiving (`ModLan.java:2189,1907`). The host only reconstructs projectile messages in `fireShot()` (`1990-2033`).

The JVM check submits a player projectile and a non-player-sender projectile to `added()`:

```text
Guest player+drone shots: sent=1
```

That check isolates the sender filter; the doomsday conclusion follows the direct-hit path above. Add explicit, host-validated events for direct-damage skills and owned drones rather than relying on local target hits or the ordinary projectile mirror.

## BH05 — detecting a test switch only blocks future connections

`ModLobby.java:172`:

```java
static void switchSeen() { switchUsed = true; }
```

The lock is enforced in `onlineBlock()` (`192-198`):

```java
if (switchLocked()) return ModLang.tr("Test switches are in use. Internet games are off until the game restarts; local games still work.");
```

It is checked when opening/joining lobbies (`369,427,523,543`), but not during active gameplay. A switch file can first appear after connection: `ModDev.testValue()` calls `switchSeen()` when it finds the file (`234-242`), and the game keeps applying test effects. For example, `ModCaps.java:167-171` reads the level switch and directly raises `playerInfo.level`:

```java
String tl = ModDev.testValue("corsair_level");
if (tl != null) {
    try {
        int lv = Integer.parseInt(tl.trim());
        if (ObjectRegistry.INSTANCE.game.playerInfo.level < lv) ObjectRegistry.INSTANCE.game.playerInfo.level = lv;
```

The active host checks its DEV loadout every two seconds (`ModLan.java:1748-1756`), not the switch lock. An active guest's `declare()` checks DEV gear (`1876-1879`), not the switch lock either. Neither `switchSeen()` nor those active paths ends the session, so internet gameplay continues with the test change. This violates CONTEXT's test-switch rule; it is not a claim that the separate test-profile entry guard is missing.

The JVM reproduction sets up a connected internet host, invokes the exact detection callback, then runs `hostFrame()`:

```text
Test switch detected: locked=true onlineStillConnected=true
```

End active internet sessions and invalidate pending joins when the lock is first set. Perform game-object cleanup on the game thread.

## BH06 — accumulated hits can defeat a guest that has not lost hull

`ModLan.java:1803-1805` counts damage taken by the host-side stand-in:

```java
float lost = PROXY_LIFE - p.life;
if (lost > 0) { dmgSent += lost; if (pvp) roundDmg += lost; }
```

The guest applies that forwarded damage through its own shield and hull (`2102-2115,2144-2154`). The host does not receive a shield charge in `InState` (`1092-1101`). Nevertheless, `hostDuel()` decides that accumulating enough such damage means defeat (`2535-2543`):

```java
boolean soaked = s != null && s.maxLife > 0 && roundDmg > 4.0f * s.maxLife + 2000f;
// ...
if (s != null && (s.defeats > seenDefeats || soaked)) {
    roundDmg = 0;
    seenDefeats = s.defeats;
    hostWins++;
    round++;
```

There is no time window or subtraction for shield absorption, shield regeneration or hull repair. In a long duel, an honest shield can repeatedly absorb/recover from small hits while `roundDmg` grows indefinitely. Crossing the threshold forces a loss even with `s.life == s.maxLife` and unchanged `s.defeats`. The guest then obeys the forced round and explodes/respawns (`2590-2593`). CONTEXT says the round ends when the ship would drop to one hull.

The reproduction uses a small synthetic hull to isolate this host decision: full reported hull `100`, no reported defeats, accumulated hits `2501`. `hostDuel()` awards the host a point:

```text
Shielded guest: hull=100.0 defeats=0 hostWins=1
```

The label describes the motivating shield-absorption scenario; the method check itself injects the accumulated hit total and full-hull state, without simulating shield physics. This is an independent path from KNOWN S6: `duelFloor()` now correctly includes shield charge, but this forced-defeat branch never calls it.

## BH07 — a pending round loss leaks into the next duel

`ModLan.java:2645-2647`:

```java
if (amount >= room) {
    lostRound = true;
    return Math.max(0f, room);
```

The flag is consumed later by `hostDuel()` or `guestDuel()` (`2547-2548,2578-2579`). If the session is stopped between the damage hook and that next frame, `stop()` resets these fields but not `lostRound` or `restore` (`739-746`):

```java
pvp = false;
pvpWanted = false;
seenRound = 0;
defeatRound = -1;
solo = false;
marksOut = null;
autoAccept = false;
decision = 2;
```

Starting a new duel initializes the round and scores but again leaves `lostRound` intact (`2509-2515`). Once in the bay, the host consumes the old flag and increments `guestWins` and `round` (`2547-2551`) without a hit in the new duel. The UI can stop an active session while the linked game continues running beneath its menu (`2735,1194-1201`), so the boundary can occur between frames.

The JVM check executes `duelFloor(); stop();` before the next `hostDuel()`, then starts a fresh duel:

```text
Stop retains pending loss=true
New duel without a hit: guestWins=1 round=2
```

Reset the pending result/restoration flags both on stop and on starting/ending a duel. The reproduction controls the inter-frame ordering; no claim is made that every disconnect triggers it.

## BH08 — a host level-up loses shared XP

`ModLan.java:2307-2309`:

```java
long xp = ObjectRegistry.INSTANCE.game.playerInfo.curXp;
if (xpLastHost >= 0 && xp > xpLastHost) xpSent += xp - xpLastHost;
xpLastHost = xp;
```

`curXp` is progress within the current level. The bundled base game's `PlayerInfo.addXp(int)` adds the award and calls `onLevelUp()` when it reaches `nextLevelXp`. Disassembly of `work/game_v168.jar` shows `onLevelUp()` subtracting `nextLevelXp` from `curXp` at bytecode offsets `0-10`, before incrementing the level. These steps were checked with:

```sh
java -m jdk.jdeps/com.sun.tools.javap.Main -classpath work/game_v168.jar -c -p fr.testudo.spacecorsair.business.player.PlayerInfo
```

For example, a host at `990/1000` earns `20`: the next rendered frame sees `10`, which is lower than `990`, so **none** of that award enters `xpSent`. The guest only receives increases in that counter (`2118-2128`); there is no correction for the host's level change. The same accounting precedes both LAN and internet frame serialization (`2310-2311`).

The JVM reproduction calls the actual `beforeSwap()` twice, with host progress `990` then `10` and a corresponding level change. It asserts that `xpLastHost` reached `10`, to ensure the frame really executed the accounting:

```text
XP rollover: earned=20 shared=0
```

Use cumulative earned XP or account for all crossed thresholds. A positive post-level-up `curXp` greater than the prior value also undercounts, rather than solving the issue.

## BH09 — the 30-day retention promise requires new submissions

Report cleanup is only inside `report()` (`index.js:499-501`):

```js
await this.ctx.storage.put("report:" + t + ":" + token(3), { at: t, by: id, about, text: textOf(f.text, 8000) });
const old = await this.ctx.storage.list({ prefix: "report:", limit: 50 });
for (const [k, v] of old) if (t - v.at > 30 * DAY) await this.ctx.storage.delete(k);
```

Samples have the same structure, only inside `sample()` (`473-475`). Ordinary requests call `load()` and `sweep()` (`206-207`), but `sweep()` only removes lobbies, rate history, closed-lobby history, kicks and bans (`131-140`). There is no alarm/scheduled expiry handler. `adminData()` also returns stored rows without an age filter (`484-485`).

Consequently, a last report/sample can remain indefinitely when no new record of that type arrives, even if the service remains active or restarts. A burst of old rows is also only drained 50 at a time per new submission. CONTEXT promises 30 days for both record types.

The Node reproduction inserts synthetic records, advances the injected clock 31 days, performs an ordinary request, constructs a fresh `Registry` over the same storage, and performs another request:

```text
Retention after 31 days and restart: report=true sample=true
```

This is not KNOWN S10, which addressed kick/ban records and is covered by the passing existing tests. Schedule paginated report/sample expiry independently of new records and exclude expired records from administrative reads.

## BH10 — waiting hidden host may outlive its TURN lease

`ModLobby.java:438-441`:

```java
if (hide && turn == null && System.currentTimeMillis() >= relayAt) {
    turn = relay(w, myCode, myTok);
    if (turn == null) { relayAt = System.currentTimeMillis() + relayWait; relayWait = Math.min(relayWait * 2, 600000); }
    else relayWait = 30000;
}
```

The host keeps the non-null `turn` while waiting. `Turn.allocate()` requests UDP transport, stores the relayed address and sets `refreshAt`; it does not request/remember the server's allocation lifetime (`ModNet.java:454-460`). `Turn.keep()` renews after 180 seconds (`492-499`), but its only call site is the timer of a **started** `Link` (`997,1013`):

```java
if (!started) { lastRecv = now; continue; }
// ...
Turn t = w.turn;
if (t != null) t.keep();
```

A hidden host waiting without a guest has no started link, and the host loop never calls `keep()`. Lobby heartbeats continue publishing the original relay address (`ModLobby.java:447-449`). After a finite allocation lease expires, direct play is still disabled by `hide`, but the host does not recreate the allocation because `turn != null`. A connecting link cannot reach `started` to activate renewal through an already-expired relay.

**SUSPECTED dependency:** the provider's actual lease duration/expiry behavior was not observed. The code demonstrably omits idle renewal, but reproducing the player-visible failure requires an expiring TURN allocation; the service's real TURN server was not contacted. Do not confuse allocation lifetime with the much longer credential lifetime. Renew from the waiting-host lifecycle and replace dead/expired allocations.

## Validation and reproducible checks

The repository stayed unchanged except for this report. Throwaway probes were compiled/stored outside the checkout and are reproduced below so this one-file PR remains reviewable.

* `cd server/rendezvous && node test/registry.test.mjs` — passed, final output `REGISTRY OK`.
* The prescribed `javac --release 8 ...` could not run directly because there is no `javac` launcher. The installed JDK compiler module is available, but its `--release 8` invocation reports `release version 8 not supported` (the runtime image lacks the necessary release data).
* All mod sources compiled successfully with the same classpath and Java 8 source/bytecode targets via the compiler module. This verifies compilation and Java 8 class generation, **not** a strict Java 8 standard-library API check. No full signing/build command or hook patch script was run.

```sh
mkdir -p /tmp/mc /tmp/bug-hunt
java -m jdk.compiler/com.sun.tools.javac.Main -source 8 -target 8 -nowarn \
  -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls \
  -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
```

Save the following Java probe as `/tmp/bug-hunt/Hunt.java` and compile/run from the repository root:

```sh
java -m jdk.compiler/com.sun.tools.javac.Main -source 8 -target 8 -nowarn \
  -cp /tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls \
  -d /tmp/bug-hunt /tmp/bug-hunt/Hunt.java
java -cp /tmp/bug-hunt:/tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls \
  fr.testudo.spacecorsair.mod.Hunt
```

The harness uses reflection to exercise private transitions and `Unsafe.allocateInstance` to provide minimal game objects without starting Android. It does not run full game physics, render a real screen or contact the lobby/relay. Synthetic values isolate the reported transitions. The compiler warns about `Unsafe`; those warnings are confined to this throwaway harness.

```java
package fr.testudo.spacecorsair.mod;

import java.lang.reflect.*;
import java.util.*;
import java.io.*;
import fr.testudo.spacecorsair.engine.*;
import fr.testudo.spacecorsair.game.*;
import fr.testudo.spacecorsair.game.levels.*;
import fr.testudo.spacecorsair.business.*;
import fr.testudo.spacecorsair.business.player.*;
import fr.testudo.spacecorsair.business.ennemis.*;
import fr.testudo.spacecorsair.business.projectiles.*;

public class Hunt {
  static final sun.misc.Unsafe U;
  static { try { Field f=sun.misc.Unsafe.class.getDeclaredField("theUnsafe"); f.setAccessible(true); U=(sun.misc.Unsafe)f.get(null); } catch(Exception e){throw new RuntimeException(e);} }
  static <T> T blank(Class<T> c) throws Exception { return c.cast(U.allocateInstance(c)); }
  static Field field(String n) throws Exception { Field f=ModLan.class.getDeclaredField(n); f.setAccessible(true); return f; }
  static void set(String n,Object v) throws Exception { field(n).set(null,v); }
  static Object get(String n) throws Exception { return field(n).get(null); }
  static Object invoke(String n,Class<?>[] types,Object... a) throws Exception { Method m=ModLan.class.getDeclaredMethod(n,types); m.setAccessible(true); return m.invoke(null,a); }
  public static void main(String[] args) throws Exception {
    Game g=blank(Game.class);
    ObjectRegistry.INSTANCE.game=g;
    PlayerShip ps=blank(PlayerShip.class);
    ps.position=new Vector2(); ps.speed=new Vector2();
    ObjectRegistry.INSTANCE.playerShip=ps;
    ps.maxLife=100; ps.life=100; ps.removed=false;
    g.playerInfo=blank(PlayerInfo.class);
    g.playerInfo.level=5; g.playerInfo.nextLevelXp=1000;
    Level lv=new Level(LevelId.FFA_THE_PLAYER_PAY,new ArrayList<Element>(),null);
    g.currentLevel=lv;
    RenderQueue q=new RenderQueue(); ObjectRegistry.INSTANCE.renderQueue=q;
    // A real host frame's XP accounting across a base-game level rollover.
    ModLan.role=ModLan.HOST; ModLan.connected=true;
    g.playerInfo.curXp=990; set("xpLastHost",-1L); set("xpSent",0L); set("lastSendMs",0L);
    ModLan.beforeSwap(q);
    g.playerInfo.level=6; g.playerInfo.curXp=10; set("lastSendMs",0L);
    ModLan.beforeSwap(q);
    if (!Long.valueOf(10).equals(get("xpLastHost"))) throw new AssertionError("host frames did not reach XP accounting");
    System.out.println("XP rollover: earned=20 shared="+get("xpSent"));
    // A guest's shield can absorb the damage that hostDuel treats as defeat.
    ModLan.InState state=new ModLan.InState(); state.maxLife=100; state.life=100;
    ModLan.pvp=true; set("pvpWanted",true); set("roundDmg",2501f);
    set("seenDefeats",0); set("lostRound",false); ModLan.hostWins=0; ModLan.round=1;
    invoke("hostDuel",new Class<?>[]{PlayerShip.class,Level.class,ModLan.InState.class},ps,lv,state);
    System.out.println("Shielded guest: hull="+state.life+" defeats="+state.defeats+" hostWins="+ModLan.hostWins);
    // An end-of-round hit followed by stopping before the next game frame.
    set("lostRound",false); ModLan.connected=true; ModLan.pvp=true;
    ModLan.duelFloor(ps,200);
    ModLan.stop();
    System.out.println("Stop retains pending loss="+get("lostRound"));
    ModLan.connected=true; ModLan.role=ModLan.HOST; set("pvpWanted",true);
    invoke("hostDuel",new Class<?>[]{PlayerShip.class,Level.class,ModLan.InState.class},ps,lv,state);
    System.out.println("New duel without a hit: guestWins="+ModLan.guestWins+" round="+ModLan.round);
    set("lostRound",false); ModLan.pvp=false; set("pvpWanted",false);
    // Guest world destruction and disconnect restoration.
    lv=new Level(LevelId.HIGHWAY,new ArrayList<Element>(),null); g.currentLevel=lv;
    BasicEnnemyShip npc=new BasicEnnemyShip(); npc.removed=false;
    lv.elements.add(ps); lv.elements.add(npc);
    ModLan.role=ModLan.GUEST; ModLan.connected=true; ModLan.solo=false; set("inFrame",null);
    invoke("guestFrame",new Class<?>[]{PlayerShip.class},ps);
    ModLan.stop();
    System.out.println("Disconnect: original enemy removed="+npc.removed+" reloadQueued="+ModLan.soloReload);
    // Direct player shots are sent, but shots from the guest's drone are not.
    ModLan.role=ModLan.GUEST; ModLan.connected=true;
    EnergyBullet own=new EnergyBullet(); own.sender=ps;
    Ennemis ownedDrone=new BasicEnnemyShip(); Mod.playerDrones()[0]=ownedDrone;
    EnergyBullet drone=new EnergyBullet(); drone.sender=ownedDrone;
    int before=ModLan.shotsOut;
    ModLan.added(Arrays.asList(own,drone));
    System.out.println("Guest player+drone shots: sent="+(ModLan.shotsOut-before));
    Mod.playerDrones()[0]=null;
    ModLan.stop();
    // The same event fired by finding an emulator switch only locks new joins.
    ModLan.role=ModLan.HOST; ModLan.internet=true; ModLan.connected=true;
    ModLobby.switchSeen();
    invoke("hostFrame",new Class<?>[]{PlayerShip.class,long.class},ps,16L);
    System.out.println("Test switch detected: locked="+ModLobby.switchLocked()+" onlineStillConnected="+ModLan.connected);
    ModLan.stop();
    // Cancellation does not invalidate the delayed internet reconnect.
    Field jc=ModLobby.class.getDeclaredField("joinedCode"); jc.setAccessible(true); jc.set(null,"ABCD");
    ModLobby.rejoin();
    ModLobby.leave(); ModLan.stop();
    // Guard against all external traffic, while allowing us to observe the stale
    // reconnect entering join() and replacing the cancelled status.
    ModTestMode.on=true; ModLobby.status="cancelled";
    Thread.sleep(3400);
    System.out.println("Cancelled reconnect still entered join="+!"cancelled".equals(ModLobby.status));
    ModTestMode.on=false;
  }
}
```

Observed JVM output:

```text
XP rollover: earned=20 shared=0
Shielded guest: hull=100.0 defeats=0 hostWins=1
Stop retains pending loss=true
New duel without a hit: guestWins=1 round=2
Disconnect: original enemy removed=true reloadQueued=false
Guest player+drone shots: sent=1
Test switch detected: locked=true onlineStillConnected=true
Cancelled reconnect still entered join=true
```

Save the following Node probe as `/tmp/bug-hunt/registry-probes.mjs`, then run `node /tmp/bug-hunt/registry-probes.mjs` from the repository root. All calls use an in-memory `Registry` and synthetic storage; no HTTP request is sent over the network.

```js
import { pathToFileURL } from 'node:url';
const { Registry } = await import(pathToFileURL(process.cwd() + '/server/rendezvous/src/index.js'));
import assert from 'node:assert/strict';
function storage() {
  const m=new Map();
  return {m,get:async k=>m.get(k),put:async(k,v)=>{m.set(k,structuredClone(v));},delete:async k=>m.delete(k),
    list:async({prefix,limit=1000,reverse})=>{let a=[...m].filter(([k])=>k.startsWith(prefix)).sort(([a],[b])=>a.localeCompare(b));if(reverse)a.reverse();return new Map(a.slice(0,limit));}};
}
const s=storage(), r=new Registry({storage:s},{PUBLIC_OPEN:'1',DAILY_REQUESTS:'90000'});
let now=1700000000000; r.now=()=>now;
async function call(path,f) {
 const res=await r.fetch(new Request('https://registry.invalid'+path,{method:'POST',body:new URLSearchParams(f)}));
 const text=await res.text(), lines=text.trim().split('\n');
 return {first:lines[0],fields:Object.fromEntries(lines.slice(1).filter(l=>l.includes('=')).map(l=>l.split('='))),status:res.status};
}
const h=await call('/lobby',{id:'a'.repeat(32),ver:'review',pub:'0'});
assert.equal(h.first,'ok');
const guest={id:'b'.repeat(32),ver:'review',sid:'7'};
let ok=0;
// Four failed/slow connection attempts, each using the initial join plus four
// repeats. The host stays live and the guest has supplied the correct code.
for(let attempt=0;attempt<4;attempt++) for(let repeat=0;repeat<5;repeat++) {
  now+=8000;
  await call('/lobby/'+h.fields.code+'/beat',{token:h.fields.token});
  const j=await call('/lobby/'+h.fields.code+'/join',guest);
  if(j.first==='ok')ok++;
}
const blocked=await call('/lobby/'+h.fields.code+'/join',guest);
assert.equal(ok,20); assert.equal(blocked.status,429);
console.log('Correct-code joins: accepted='+ok+' next='+blocked.first+' status='+blocked.status+' elapsed=160s');
// Neither ordinary traffic nor startup cleans expired reports/samples.
s.m.set('report:old',{at:now,text:'synthetic report'});
s.m.set('sample:old',{at:now,ratio:0});
now+=31*86400000;
await r.fetch(new Request('https://registry.invalid/lobbies?ver=review'));
assert(s.m.has('report:old') && s.m.has('sample:old'));
const awake=new Registry({storage:s},{PUBLIC_OPEN:'1',DAILY_REQUESTS:'90000'}); awake.now=()=>now;
await awake.fetch(new Request('https://registry.invalid/lobbies?ver=review'));
assert(s.m.has('report:old') && s.m.has('sample:old'));
console.log('Retention after 31 days and restart: report=true sample=true');
```

Observed Node output:

```text
Correct-code joins: accepted=20 next=slow status=429 elapsed=160s
Retention after 31 days and restart: report=true sample=true
```
