package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.RocketTourelle;
import fr.testudo.spacecorsair.business.ennemis.TaupeShip;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpec;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpecBuilder;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.Missile;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.CivilState;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;

import java.util.List;

/**
 * v42 missile tracking (hooks42a). Stock PlayerShip.fetchEnnemisTarget only knew Ennemis plus CivilShips in
 * ATTACK_TARGET / ESCAPE, so player missiles
 *  - ignored civil / police ships shooting back in self-defence (curState stays ACTIVITY) and flagships hostile by
 *    standing (ModLive.titanHostile with no chasse target yet),
 *  - locked on police / escorts that were fighting pirates on the player's side (setAtackEnnemisMode = ATTACK_TARGET),
 *    on any civilian fleeing after pirate damage (ESCAPE), and on the player's own Hive drones (they are Ennemis),
 *  - never looked again once a missile had no target (Missile.doIa skips doChasse while target == null): a missile
 *    fired with nothing within 3000 flew straight for its whole life, even into a fight.
 * Here: one hostility rule for every pick, the player's beam target first, and a re-acquire while in flight.
 * Balance numbers (damage, turn rate, thrust, ranges) are untouched.
 */
public final class ModMissile {
    private ModMissile() {}

    /** Kill switch read by the smali hooks (false = stock targeting). */
    public static boolean on = true;

    /** Police fast missile: x2.5 turn rate, x1.4 thrust and launch speed of the stock homing missile. */
    public static final float FAST_TURN = 2.5f;
    public static final float FAST_SPEED = 1.4f;

    /** Range a player missile in flight searches from its own position (the stock re-acquire range). */
    static final long REACQUIRE = 5000L;

    private static final Vector2 tmp = new Vector2(0, 0);

    // ------------------------------------------------------------------ hostility

    /** true = this element is currently hostile to the player and a fair missile target. */
    public static boolean hostile(Element e) {
        if (e == null || e.removed || e.isPlayer) return false;
        if (e instanceof Ennemis) {
            if (Mod.isDrone(e)) return false;
            if ((e instanceof TaupeShip) && ((TaupeShip) e).isHiddenMode) return false;
            if ((e instanceof RocketTourelle) && ((RocketTourelle) e).hidden) return false;
            return true;
        }
        if (e instanceof CivilShip) {
            CivilShip c = (CivilShip) e;
            if (c.allowPlayerDamage) return false;                 // escorted civilians: friendly-fire tolerant, never a target
            if (e instanceof GuardianCivilShip) {
                ModCapitals.Cap cap = ModCapitals.cap(e);
                if (cap != null && ModLive.titanHostile((GuardianCivilShip) e, cap)) return true;
            }
            Element ct = c.chasseTarget;
            boolean onPlayer = ct != null && ct.isPlayer;
            if (c.curState == CivilState.ATTACK_TARGET) return onPlayer;   // attacking pirates = on the player's side
            if (c.curState == CivilState.ESCAPE) return c.damageRecievedByPlayer > 0;   // the player's own victims only
            return onPlayer && c.defenseStatus == CivilShip.SelfDefenseStatus.target_engaged;   // shooting back
        }
        return false;
    }

    // ------------------------------------------------------------------ hooks

    /**
     * Hook: PlayerShip.fetchEnnemisTarget(from, range) (launch: the ship, 3000; in flight: the missile, 5000).
     * The player's beam target first when hostile and in range, otherwise the stock score (distance / 40 + angle off
     * the shooter's nose) over every hostile element. Never throws; null = no target.
     */
    public static Element fetch(Element from, long range) {
        try {
            if (from == null) return null;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null) {
                Element lock = ps.beamTarget;
                if (hostile(lock) && lock.position.distance(from.position) < range) {
                    log(from, lock, "lock");
                    return lock;
                }
            }
            List<Element> list = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            Element best = null;
            float bestScore = 1.0E7f;
            int n = list.size();
            for (int i = 0; i < n; i++) {
                Element e = list.get(i);
                if (!hostile(e)) continue;
                float d = e.position.distance(from.position);
                if (d >= range) continue;
                float a = (float) Math.toDegrees(from.position.getAngularWithInRad(e.position));
                a = Element.normalizeSpin(a % 360.0f + 90.0f);
                float score = d / 40.0f + Math.abs((int) (a - from.spin));
                if (score < bestScore) {
                    bestScore = score;
                    best = e;
                }
            }
            log(from, best, "near");
            return best;
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * Hook: Missile.doIa once the motor is lit, before the stock "target == null: do nothing" test. A homing player
     * missile whose target is gone (or that never had one) looks again for the nearest hostile around itself.
     */
    public static void track(Missile m) {
        try {
            if (!on || m.isAntiMissile || m.sendAndForget || !(m.sender instanceof PlayerShip)) return;
            Element t = m.target;
            if (t != null && !t.removed) return;
            if (t == null && ((Mod.frameCounter + System.identityHashCode(m)) & 7) != 0) return;   // idle search: every 8th frame
            Element n = fetch(m, REACQUIRE);
            m.target = n;
            if (n != null) n.onMissileLockedOnMe(m);
        } catch (Throwable x) {
            // targeting never breaks the frame
        }
    }

    // ------------------------------------------------------------------ police fast missile (agent B API)

    /**
     * Fires one fast homing missile (stock enemy Missile class, shooter's own missile spec when it has one) from the
     * shooter at the player: turn rate x FAST_TURN, thrust and launch speed x FAST_SPEED. damage > 0 replaces the spec's
     * direct damage (the blast part stays the spec's). false = could not fire (no player, no level, no spec).
     */
    public static boolean policeMissile(Element shooter, float damage) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (shooter == null || shooter.removed || ps == null || ps.removed) return false;
            Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
            if (lv == null) return false;
            MissileSpec spec = spec(shooter);
            if (spec == null) return false;
            Missile m = GamePools.newMissile().initWithSpecs(spec, shooter, ps);
            if (m == null) return false;
            if (damage > 0) m.damage = damage;
            m.alumedMaxTurnFactor *= FAST_TURN;
            m.pouseeForce *= FAST_SPEED;
            double rad = Math.toRadians(shooter.spin);
            tmp.set(0.0f, -50.0f);
            tmp.applyRotatation(rad);
            m.position.setSameAs(shooter.position).add(tmp);
            m.speed.set(0.0f, -2.0f * FAST_SPEED);   // PoliceShip.shootMissile launches at 2.0
            m.speed.applyRotatation(rad);
            m.speed.add(shooter.speed);
            m.timeAllume = 1200;                      // as PoliceShip.shootMissile
            m.spin = shooter.spin;
            lv.toAdd.add(m);
            if (logOn()) android.util.Log.i("CorsairMod", "misslog police fast missile from " + name(shooter) + " dmg=" + Math.round(m.damage));
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private static MissileSpec spec(Element shooter) {
        if (shooter instanceof CivilShip && ((CivilShip) shooter).missileSpec != null) return ((CivilShip) shooter).missileSpec;
        int l = shooter.level;
        MissileSpec s = l <= 6 ? MissileSpecBuilder.defensorMissileSpec1a6
                : l <= 10 ? MissileSpecBuilder.defensorMissileSpec6a10 : MissileSpecBuilder.defensorMissileSpec11a15;
        if (s == null) s = MissileSpecBuilder.defensorMissileSpec6a10;
        return s;
    }

    // ------------------------------------------------------------------ test log (prefs corsair_misslog, or /data/local/tmp/corsair_misslog)

    private static boolean logCached;
    private static long logCheckedAt;

    static boolean logOn() {
        long now = System.currentTimeMillis();
        if (now - logCheckedAt > 5000) {
            logCheckedAt = now;
            boolean v = false;
            try {
                SharedPreferences p = ModQol.prefs();
                v = p != null && p.getBoolean("corsair_misslog", false);
            } catch (Throwable t) {
                // no prefs yet
            }
            logCached = v || ModDev.testFlag("corsair_misslog");
        }
        return logCached;
    }

    private static void log(Element from, Element picked, String how) {
        if (!logOn()) return;
        try {
            android.util.Log.i("CorsairMod", "misslog " + (from instanceof Missile ? "reacquire" : "launch") + " " + how + " -> "
                    + (picked == null ? "none" : name(picked) + " d=" + Math.round(picked.position.distance(from.position))));
        } catch (Throwable t) {
            // log only
        }
    }

    private static String name(Element e) {
        String s = e.getClass().getSimpleName();
        if (e instanceof CivilShip) s += "/" + ((CivilShip) e).curState;
        return s;
    }
}
