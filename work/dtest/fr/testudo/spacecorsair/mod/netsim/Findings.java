package fr.testudo.spacecorsair.mod;

import java.net.*;
import java.util.*;
import fr.testudo.spacecorsair.business.ennemis.*;
import fr.testudo.spacecorsair.business.projectiles.*;
import fr.testudo.spacecorsair.game.levels.LevelId;
import static fr.testudo.spacecorsair.mod.SimPhone.*;

final class Findings {
    static void check(boolean ok, String actual) {
        if (!ok) throw new AssertionError(actual);
        System.out.println("PASS " + actual);
    }
    static class Target extends BasicEnnemyShip {
        float damage;
        @Override public void applyProjectileHit(Projectile hit) { damage += hit.damage; }
    }
    static void run(SimPhone phone, int id) throws Exception {
        for (int i = 1; i <= 10; i++) {
            String flag = String.format(Locale.ROOT, "FIX_BH%02d", i);
            field(ModNet.class, flag).setBoolean(null, phone.fixed && i == id);
        }
        ModNet.FIX_NS01 = false;
        phone.start(1, 1, true);
        switch (id) {
        case 1:
            ModLan.stop();
            field(ModLobby.class, "joinedCode").set(null, "ABCD");
            ModLobby.rejoin();
            ModLobby.leave();
            ModTestMode.on = true; // local guard ensures a stale callback cannot go outside the JVM
            ModLobby.status = "cancelled";
            Thread sleeper = null;
            for (Thread t : Thread.getAllStackTraces().keySet()) if (t.getName().equals("lobby-rejoin")) sleeper = t;
            if (sleeper == null) throw new AssertionError("rejoin worker missing");
            sleeper.join(5000);
            ModTestMode.on = false;
            check(!sleeper.isAlive() && "cancelled".equals(ModLobby.status), "BH01 cancelled status preserved=" + "cancelled".equals(ModLobby.status));
            break;
        case 3:
            ModLan.role = ModLan.GUEST;
            phone.frame();
            check(phone.state().enemies == 0, "BH03 followed world stripped");
            ship.isDocked = true;
            phone.stop(true);
            check(phone.state().enemies == 0, "BH03 deferred while docked");
            ship.isDocked = false;
            ModLan.preFrame();
            check(phone.state().enemies == 1, "BH03 rebuilt enemies=" + phone.state().enemies);
            break;
        case 4:
            ModLan.role = ModLan.GUEST;
            BasicEnnemyShip drone = new BasicEnnemyShip();
            Mod.playerDrones()[0] = drone;
            EnergyBullet shot = new EnergyBullet(); shot.sender = drone;
            int before = ModLan.shotsOut;
            ModLan.added(Collections.singletonList(shot));
            ModLan.guestDoom();
            List<?> messages = (List<?>)get("reliable");
            boolean mirrored = ModLan.shotsOut == before + 1;
            boolean requested = messages.size() == 2 && ((byte[])messages.get(1))[0] == ModLan.MSG_DOOM_START;
            Mod.playerDrones()[0] = null;
            Target target = new Target(); target.removed = false; target.position.set(0, -300);
            game.currentLevel.elements.clear(); game.currentLevel.elements.add(target);
            Mod.frameCounter++;
            ModLan.role = ModLan.HOST;
            ModLanCheck.Limits lim = new ModLanCheck.Limits();
            lim.shot = 91; lim.dps = 200; lim.shotsPerSec = 5;
            lim.doomHull = new ModShips.Hull("fixture", "", ModShips.TITAN, 1, "", "crimson_throne", 100, 1, 1, null, "", "");
            ModTitan.RemoteDoom remote = new ModTitan.RemoteDoom();
            BasicEnnemyShip proxy = new BasicEnnemyShip();
            if (requested) {
                byte[] m = (byte[])messages.get(1);
                call("receive", new Class<?>[]{int.class, byte[].class}, (int)m[0], Arrays.copyOfRange(m, 5, m.length));
                remote.frame((Boolean)get("doomRequested"), proxy, ship, lim, 1, time);
                remote.frame(false, proxy, ship, lim, 1, time + 250);
            }
            check(mirrored && target.damage == 91, "BH04 owned drone=" + mirrored + " authoritative capped hit=" + target.damage);
            break;
        case 5:
            // Exercise session lifecycle at the documented policy notification.
            // No switch file, altered profile or connection to a live service.
            ModLobby.switchSeen();
            ModLan.preFrame();
            check(!ModLan.connected, "BH05 internet stopped=" + !ModLan.connected);
            ModLan.internet = false; ModLan.role = ModLan.GUEST; ModLan.connected = true;
            ModLan.preFrame();
            check(ModLan.connected, "BH05 local session remains playable");
            break;
        case 6:
            phone.duel(false);
            set("roundDmg", 2501f);
            ModLan.InState peer = new ModLan.InState(); peer.life = peer.maxLife = 100;
            hostDuel(peer);
            check(ModLan.hostWins == 0, "BH06 full-hull guest hostWins=" + ModLan.hostWins);
            peer.defeats++;
            hostDuel(peer);
            check(ModLan.hostWins == 1, "BH06 reported floor scores once");
            break;
        case 7:
            phone.duel(false); ModLan.duelFloor(ship, 200);
            ModLan.stop();
            ModLan.role = ModLan.HOST; ModLan.connected = true;
            phone.duel(false);
            check(ModLan.guestWins == 0 && ModLan.round == 1, "BH07 fresh duel guestWins=" + ModLan.guestWins + " round=" + ModLan.round);
            break;
        case 8:
            phone.frame();
            phone.play(20, 0, 0); time += 600;
            phone.frame();
            check(phone.state().sharedXp == 20, "BH08 rollover shared=" + phone.state().sharedXp);
            long next = game.playerInfo.nextLevelXp;
            game.playerInfo.level += 2; game.playerInfo.curXp = 5;
            time += 600; phone.frame();
            long expected = 20 + next + fr.testudo.spacecorsair.business.player.XpBuilder.getNextLevelXp(7) + 5 - 10;
            check((Long)get("xpSent") == expected, "BH08 multiple thresholds shared=" + get("xpSent"));
            break;
        case 10:
            class RelayWire extends ModNet.Wire {
                long expires;
                int renewals;
                @Override byte[] transact(SocketAddress to, byte[] request, int tries, int wait) {
                    int type = request[1];
                    if (type == 4 && time >= expires) return null;
                    if (type == 4) renewals++;
                    expires = time + 60000;
                    byte[] tx = Arrays.copyOfRange(request, 8, 20);
                    return ModNet.stunMsg(256 + type, tx, ModNet.attr(13, new byte[]{0,0,0,60}),
                        ModNet.attr(22, ModNet.xorAddr(address(2), tx)));
                }
            }
            RelayWire wire = new RelayWire();
            ModNet.Turn turn = new ModNet.Turn(wire, address(0), "", "");
            turn.allocate();
            for (int i = 0; i < 12; i++) { time += 10000; ModLobby.waitingRelayLive(turn); }
            check(time < wire.expires, "BH10 idle lease live=" + (time < wire.expires) + " renewals=" + wire.renewals);
            time += 70000;
            check(!ModLobby.waitingRelayLive(turn), "BH10 expired allocation retired before heartbeat");
            break;
        default: throw new IllegalArgumentException("unknown finding " + id);
        }
    }
}
