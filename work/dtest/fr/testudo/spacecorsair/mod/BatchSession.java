package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.player.Shield;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.game.Game;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.ArrayList;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.player.PlayerGear;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import java.util.Map;

public class BatchSession {
    // The closed Game constructor starts Android services. Populate only the fields read by the hook.
    private static <T> T fixture(Class<T> type) throws Exception {
        Field field = sun.misc.Unsafe.class.getDeclaredField("theUnsafe");
        field.setAccessible(true);
        return type.cast(((sun.misc.Unsafe) field.get(null)).allocateInstance(type));
    }

    private static void duel(BatchChecks c) throws Exception {
        ObjectRegistry.INSTANCE.game = fixture(Game.class);
        Level level = fixture(Level.class);
        ObjectRegistry.INSTANCE.game.currentLevel = level;
        level.id = LevelId.FFA_THE_PLAYER_PAY;
        PlayerShip ps = fixture(PlayerShip.class);
        ps.shield = fixture(Shield.class);
        Field lost = ModLan.class.getDeclaredField("lostRound");
        lost.setAccessible(true);
        ModLan.connected = ModLan.pvp = true;
        for (int hull : new int[]{1,2,100}) for (int shield : new int[]{0,25}) {
            ps.life = hull;
            ps.shield.currentValue = shield;
            int room = hull + shield - 1;
            for (int shot : new int[]{0, Math.max(room-1, 0), room, room+1, 1000}) {
                lost.setBoolean(null, false);
                String scenario = "duel hull/shield/shot " + hull + "/" + shield + "/" + shot;
                c.near(scenario, ModLan.duelFloor(ps,shot), Math.min(shot,room));
                c.check(scenario + " loss", lost.getBoolean(null) == (shot > 0 && shot >= room));
            }
        }
        ps.life = 10;
        ps.shield = null;
        c.near("unshielded floor", ModLan.duelFloor(ps,20), 9);
        ModLan.pvp = false;
        c.near("outside duel", ModLan.duelFloor(ps,20), 20);
        ModLan.pvp = true;
        level.id = null;
        c.near("outside arena", ModLan.duelFloor(ps,20), 20);
        ModLan.connected = ModLan.pvp = false;
    }

    private static void ceilings(BatchChecks c) {
        ModLanCheck.Limits m = new ModLanCheck.Limits();
        m.shot = 60; m.dps = 30;
        m.shotPvp = 7; m.dpsPvp = 3;
        for (boolean pvp : new boolean[]{false,true}) {
            ModLanCheck.reset();
            float shot = pvp ? 7 : 60, rate = pvp ? 3 : 30;
            String label = pvp ? "duel" : "co-op";
            c.near(label + " nonfinite input", ModLanCheck.allow(m,Float.NaN,1000,pvp), 0);
            c.near(label + " shot", ModLanCheck.allow(m,10000,1000,pvp), shot);
            c.near(label + " remaining burst", ModLanCheck.allow(m,10000,1000,pvp), 3*rate-shot);
            c.near(label + " exhausted", ModLanCheck.allow(m,1,1000,pvp), 0);
            c.near(label + " half-second recharge", ModLanCheck.allow(m,10000,1500,pvp), rate/2);
        }
    }

    @SuppressWarnings("unchecked")
    private static void warp(BatchChecks c) throws Exception {
        BasicEnnemyShip a = new BasicEnnemyShip(), b = new BasicEnnemyShip();
        ModWarpOut.startAll(Arrays.asList(a,b,a,null));
        c.check("both arrivals protected", a.invincible && b.invincible && ModWarpOut.active(a));
        c.check("departing ship disarmed", a.bulletDamage == 0 && a.nextShootAlowed > System.currentTimeMillis());
        a.removed = true;
        ModWarpOut.tick();
        c.check("external removal releases protection", !a.invincible && !ModWarpOut.active(a));
        c.check("other departure survives", b.invincible && ModWarpOut.active(b));
        ModWarpOut.clear();
        c.check("sector change releases survivor", !b.invincible && !ModWarpOut.active(b));
        a.removed = false;
        ModWarpOut.start(a);
        Field f = ModWarpOut.class.getDeclaredField("out");
        f.setAccessible(true);
        ((Map<?, Long>) f.get(null)).replaceAll((ship, time) -> time - ModWarpOut.MS);
        ModWarpOut.tick();
        c.check("expired reused ship released", !a.invincible && !ModWarpOut.active(a));
    }

    private static void world(BatchChecks c) throws Exception {
        PlayerInfo pilot = fixture(PlayerInfo.class);
        ObjectRegistry.INSTANCE.game.playerInfo = pilot;
        pilot.playerGear = new PlayerGear();
        pilot.playerGear.laser = null;
        pilot.availShips = new ArrayList<>(Arrays.asList(null, SpaceObjectType.hullBastion, null));
        ModSave.sanitize();
        c.check("missing weapon repaired",pilot.playerGear.laser == SpaceObjectType.standardLaserLevel0);
        c.check("known hull preserved and default restored",pilot.availShips.size() == 2
                && pilot.availShips.contains(SpaceObjectType.hullBastion)
                && pilot.availShips.contains(SpaceObjectType.defaultPlayerShip));
        ModSave.sanitize();
        c.near("repeat load",pilot.availShips.size(),2);
        c.check("lock names the required hull","Banshee".equals(ModLock.shipName(PlayerShipSpec.Image.ALIEN_UFO)));
        c.near("icon forwards stock resource",ModIcons.id(SpaceObjectType.water),SpaceObjectType.water.getDrawableId());
        c.near("Reaver fleet Warlord",ModFleet.classOfName("Reaver Warlord"),ModShips.BATTLECRUISER);
        c.near("Kretari battleship",ModFleet.classOf("kt_battleship"),ModShips.BATTLESHIP);
        c.check("HQ is capital",ModMap.isHome(LevelId.SPARTAN_HQ));
        c.check("Hermes belongs to HQ",!ModMap.isHome(LevelId.HERMES) && ModMap.owner(LevelId.HERMES) == ModMap.owner(LevelId.SPARTAN_HQ));
        BasicEnnemyShip enemy = new BasicEnnemyShip();
        c.check("ordinary ship is targetable",!ModAegisDrones.isDrone(enemy) && ModMissile.hostile(enemy));
        enemy.removed = true;
        c.check("pooled ship cannot be targeted",!ModMissile.hostile(enemy));
        enemy.removed = false;
        ArrayList<BasicEnnemyShip> arrivals = new ArrayList<>();
        ModCalm.add(arrivals,enemy);
        c.check("mission filter keeps enemy arrivals",arrivals.contains(enemy));
        ModPoliceAura.put(enemy,"bastion",0,100);
        c.check("Spartan aura registered",ModPoliceAura.has(enemy));
        ModPoliceAura.remove(enemy);
        c.check("aura released on reuse",!ModPoliceAura.has(enemy));
        c.check("regular enemy is not a police titan",!ModPoliceTitan.isPoliceTitan(enemy));
        c.near("ordinary hull has no Leviathan overlays",ModLevFx.stageOf(null),0);
        Field q = ModNotify.class.getDeclaredField("queue");
        q.setAccessible(true);
        for (int i=0; i<15; i++) ModNotify.push(null,Integer.toString(i));
        java.util.List<?> queue = (java.util.List<?>) q.get(null);
        c.check("notification queue keeps newest twelve",queue.size()==12 && ((String[])queue.get(0))[1].equals("3"));
    }

    public static void main(String[] args) throws Exception {
        BatchChecks c = new BatchChecks();
        ceilings(c);
        duel(c);
        warp(c);
        world(c);
        byte[] a = {0,1,2};
        String sig = ModSaveSig.sign(a);
        c.check("256-bit hex signature", sig.matches("[0-9a-f]{64}"));
        c.check("equal byte content", sig.equals(ModSaveSig.sign(a.clone())));
        c.check("length matters", !sig.equals(ModSaveSig.sign(Arrays.copyOf(a,4))));
        for (int i = 0; i < a.length; i++) for (int bit = 0; bit < 8; bit++) {
            byte[] changed = a.clone();
            changed[i] ^= 1 << bit;
            c.check("signed bit " + i + "/" + bit, !sig.equals(ModSaveSig.sign(changed)));
        }
        c.finish();
    }
}
