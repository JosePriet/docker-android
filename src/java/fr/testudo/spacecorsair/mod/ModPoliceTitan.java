package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.List;

/**
 * v42 police titan (plan "Police titan"): the sector owner's flagship (ModCapitals) rebuilt as a police titan. Police
 * livery (pol_cap_<key>), every stat x1.2 over that flagship as fought in its own HQ (hull, battery damage, fire rate,
 * speed, plus a titan-class shield x1.2), hostile from spawn, its faction kit (ModTitanAI) kept, plus two police skills:
 *  LOCKDOWN        6 s: player speed -50%, hyperdrive and gates jammed; 25 s cooldown
 *  SHIELD BREAKER  1.2 s telegraph, then a pulse drains 60% of the player's current shield; 18 s cooldown
 * One at a time. It never counts as the faction's flagship: its Faction is a copy (lookups by FACTIONS[i] miss it) and
 * ModCapitals.checkDestroyed skips the flagship respawn timer, standing, pursuit, bounty and persistent wreck for it.
 * ModPolice (escalation) calls spawn / active / standDown; its death calls ModPolice.onTitanKilled().
 */
public final class ModPoliceTitan {
    private ModPoliceTitan() {}

    // [D] v42 plan, police titan
    static final float POLICE_TITAN_MULT = 1.2f;         // every stat over the faction flagship in its own HQ
    static final int LOCKDOWN_MS = 6000;
    static final int LOCKDOWN_COOLDOWN_MS = 25000;
    static final float LOCKDOWN_SPEED = 0.5f;            // player speed x0.5 (game snare multiplier)
    static final float LOCKDOWN_RANGE = 5000f;
    static final int LOCKDOWN_FIRST_MS = 5000;           // first use after the titan engages
    static final float SHIELD_BREAK_FRACTION = 0.6f;     // of the player's current shield
    static final int SHIELD_BREAK_COOLDOWN_MS = 18000;
    static final int SHIELD_BREAK_CHARGE_MS = 1200;      // telegraph before the pulse
    static final float SHIELD_BREAK_RANGE = 4500f;
    static final int SHIELD_BREAK_FIRST_MS = 9000;
    static final float POLICE_R = 0.35f, POLICE_G = 0.55f, POLICE_B = 1.0f;   // name, engines, signature
    static final int TEST_DELAY_MS = 2500;               // corsair_poltitan: after sector entry
    static final float TEST_DISTANCE = 2600f;

    private static GuardianCivilShip titan;
    private static String name;
    private static final ModCapitals.Faction[] POL = new ModCapitals.Faction[ModCapitals.FACTIONS.length];
    private static int lockCd, breakCd, lockMs, chargeMs;
    private static boolean jamSaid;
    private static int testMs = -1;
    private static final Vector2 v = new Vector2();

    // ------------------------------------------------------------------ API (ModPolice)
    /** Police titan of faction factionKey (unknown key = Frontier Authority) at {@code at}; null if one is alive or it fails. */
    public static Element spawn(String factionKey, int level, Vector2 at) {
        try {
            if (active() || at == null) return null;
            int fi = ModCapitals.FACTIONS.length - 1;    // unowned / unknown: Frontier Authority (warden, last)
            for (int i = 0; i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i].key.equals(factionKey)) fi = i;
            ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
            if (POL[fi] == null) POL[fi] = new ModCapitals.Faction(f.key, f.name, ModLang.trf("%s Police Titan", f.name), f.hq, POLICE_R, POLICE_G, POLICE_B);
            // at least the flagship's HQ level (its stats "when fought in its own HQ"), never above the level cap
            int lvl = Math.max(0, Math.min(ModV34.CAP, Math.max(level, f.hq.levelMax)));
            GuardianCivilShip g = ModCapitals.spawnPolice(fi, lvl, at, POL[fi], POLICE_TITAN_MULT);
            if (g == null) return null;
            float[] sh = ModV34.shieldStats(lvl, lvl, ModShips.TITAN);   // flagships carry none: a titan-class one, x1.2
            if (sh != null) {
                ModV34.Sh h = new ModV34.Sh();
                h.cap = h.cur = sh[0] * POLICE_TITAN_MULT;
                h.rate = sh[1] * POLICE_TITAN_MULT;
                ModV34.bigShield.put(g, h);
            }
            ModArt.prefetch("pol_cap_" + f.key);
            titan = g;
            name = g.specificName;
            lockCd = LOCKDOWN_FIRST_MS;
            breakCd = SHIELD_BREAK_FIRST_MS;
            lockMs = 0;
            chargeMs = 0;
            try { g.attackPlayerIfItNotTheCaseAlready(); } catch (Throwable t) { /* re-armed every frame */ }
            ModSound.play("flagship_horn", 1.0f, 0.85f, 3000);
            ModSound.play("warp_in", 0.9f, 0.7f, 1000);
            ModQol.post(ModLang.trf("%s has arrived. It will not stop until you are destroyed.", name));
            log("spawn " + f.key + " L" + lvl + " hull=" + Math.round(g.maxLife) + " shield=" + (sh == null ? 0 : Math.round(sh[0] * POLICE_TITAN_MULT)));
            return g;
        } catch (Throwable t) {
            return null;
        }
    }

    /** A police titan is alive in this sector. */
    public static boolean active() {
        GuardianCivilShip g = titan;
        return g != null && !g.removed && ModCapitals.caps.containsKey(g);
    }

    /** Heat back to 0: the titan warps out (no kill, no rewards). */
    public static void standDown() {
        GuardianCivilShip g = titan;
        if (g == null) return;
        titan = null;
        endLockdown();
        try {
            if (g.removed) return;
            ModLive.fx("fx_shock", 1, 1, g.position.x, g.position.y, ModCapitals.SIZE * 1.4f, 900, POLICE_R, POLICE_G, POLICE_B, true);
            ModSound.play("warp_in", 0.8f, 1.2f, 1000);
            g.removed = true;
            ObjectRegistry.INSTANCE.game.currentLevel.toDelete.add(g);
            ModQol.post(ModLang.trf("%s warps out.", name));
            log("stand down");
        } catch (Throwable t) {
            // gone anyway
        }
    }

    static boolean isPoliceTitan(Object e) {
        ModCapitals.Cap c = ModCapitals.cap(e);
        return c != null && c.police;
    }

    // ------------------------------------------------------------------ lifecycle (ModCapitals)
    /** Sector change (ModCapitals.onLevel, after the caps are cleared). */
    static void onLevel() {
        titan = null;
        endLockdown();
        testMs = ModDev.testFlag("corsair_poltitan") ? TEST_DELAY_MS : -1;
    }

    /** ModCapitals.checkDestroyed: the police titan left the level; killed = destroyed (not warped out). */
    static void gone(GuardianCivilShip g, boolean killed) {
        if (g == titan) { titan = null; endLockdown(); }
        ModV34.bigShield.remove(g);
        if (!killed) return;
        log("killed");
        try {
            ModPolice.onTitanKilled();
        } catch (Throwable t) {
            // escalation bookkeeping only
        }
    }

    // ------------------------------------------------------------------ per frame (ModTitanAI.tick)
    static void tick(PlayerShip ps, long j) {
        if (testMs >= 0) {
            testMs -= j;
            if (testMs < 0 && ps != null && !ps.removed) testSpawn(ps);
        }
        GuardianCivilShip g = titan;
        if (g != null && !g.removed && ps != null && !ps.removed && g.chasseTarget == null) {
            try { g.attackPlayerIfItNotTheCaseAlready(); } catch (Throwable t) { /* next frame */ }
        }
        if (lockMs > 0 && ps != null) {
            lockMs -= j;
            if (lockMs <= 0 || g == null || g.removed) endLockdown();
            else lockdown(ps);
        }
    }

    private static void testSpawn(PlayerShip ps) {
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            int o = ModMap.owner(id);
            String key = o >= 0 && o < ModCapitals.FACTIONS.length ? ModCapitals.FACTIONS[o].key : "warden";
            v.set(0, -TEST_DISTANCE).applyRotatation(Math.random() * Math.PI * 2).add(ps.position);
            Element e = spawn(key, id.levelMax, new Vector2(v.x, v.y));
            log("test spawn " + key + " in " + id + (e == null ? " FAILED" : ""));
        } catch (Throwable t) {
            log("test spawn error " + t);
        }
    }

    /** Lockdown effects on the player, every frame while it lasts: snare, hyperdrive and gates jammed. */
    private static void lockdown(PlayerShip ps) {
        if (ps.alterationSnareValue > LOCKDOWN_SPEED) ps.alterationSnareValue = LOCKDOWN_SPEED;
        if (ps.alterationSnareDuree < lockMs) ps.alterationSnareDuree = lockMs;
        if (ps.hyperDriveJumpRequested) {
            ps.hyperDriveJumpRequested = false;
            if (!jamSaid) { jamSaid = true; ModTitanAI.say(ps, ModLang.tr("JUMP DRIVE JAMMED"), 1.0f, 0.3f, 0.3f); }
        }
        List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        for (int i = 0; i < els.size(); i++) {
            Element e = els.get(i);
            if (e instanceof Portal) ((Portal) e).jumpCountDown = ((Portal) e).jump_countdown_time;   // the gate never finishes its countdown
        }
    }

    private static void endLockdown() {
        lockMs = 0;
        chargeMs = 0;
        jamSaid = false;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null && ps.alterationSnareValue == LOCKDOWN_SPEED) { ps.alterationSnareValue = 1.0f; ps.alterationSnareDuree = 0; }
        } catch (Throwable t) {
            // no player
        }
    }

    /** ModTitanAI.run, while the police titan fights within 6,000: the two police skills. */
    static void skills(GuardianCivilShip g, ModCapitals.Cap c, PlayerShip ps, long j, float dist) {
        if (g != titan) return;
        lockCd -= j;
        breakCd -= j;
        if (lockCd <= 0 && lockMs <= 0 && dist < LOCKDOWN_RANGE) {
            lockCd = LOCKDOWN_COOLDOWN_MS;
            lockMs = LOCKDOWN_MS;
            jamSaid = false;
            use(g, ModLang.tr("LOCKDOWN"), 1.0f, 0.3f, 0.3f);
            ModTitanAI.say(ps, ModLang.tr("Engines locked down, jump drive jammed!"), 1.0f, 0.6f, 0.4f);
            ObjectRegistry.INSTANCE.soundManager.playDanger();
            lockdown(ps);
        }
        if (chargeMs <= 0 && breakCd <= 0 && dist < SHIELD_BREAK_RANGE) {
            breakCd = SHIELD_BREAK_COOLDOWN_MS;
            chargeMs = SHIELD_BREAK_CHARGE_MS;
            use(g, ModLang.tr("SHIELD BREAKER"), POLICE_R, POLICE_G, POLICE_B);
        } else if (chargeMs > 0) {
            chargeMs -= j;
            if (chargeMs <= 0) {
                chargeMs = 0;
                float drained = 0;
                if (ps.shield != null && ps.shield.currentValue > 0) {
                    drained = ps.shield.currentValue * SHIELD_BREAK_FRACTION;
                    ps.shield.currentValue -= drained;
                }
                ModLive.fx("fx_shock", 1, 1, ps.position.x, ps.position.y, 900, 600, POLICE_R, POLICE_G, POLICE_B, true);
                ObjectRegistry.INSTANCE.soundManager.playShockWave();
                ModTitanAI.say(ps, ModLang.tr("Shield drained!"), POLICE_R, POLICE_G, POLICE_B);
                log("shield breaker drained " + Math.round(drained));
            }
        }
    }

    /** Skill use, same style as the flagship kits: name at the titan, callout over the player, charge-up sound, test log. */
    private static void use(GuardianCivilShip g, String skill, float r, float gr, float b) {
        ModTitanAI.say(g, skill, r, gr, b);
        ModTitanAI.callout(name, skill, r, gr, b, 2200);
        ModSound.play("doom_charge", 0.75f, 1.2f, 400);
        log("skill " + skill);
    }

    // ------------------------------------------------------------------ visuals (ModTitanAI.draw)
    static void draw(GuardianCivilShip g) {
        if (g != titan) return;
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps == null || ps.removed) return;
        long now = System.currentTimeMillis();
        boolean red = (now % 500) < 250;
        if (lockMs > 0) {                         // lockdown: red/blue strobe ring on the player, binding beam
            float r = red ? 1.0f : 0.15f, gg = red ? 0.15f : 0.4f, b = red ? 0.1f : 1.0f;
            ModFx.sprR("marker_hostile", ps.position.x, ps.position.y, 520, 520, now / 4.0f % 360, r, gg, b, 0.85f, true);
            ModFx.spr("fx_shock", ps.position.x, ps.position.y, 640, 640, 0, r, gg, b, 0.45f, true);
            ModFx.strip("fx_beam", g.position.x, g.position.y, ps.position.x, ps.position.y, 50, r, gg, b, 0.5f, true);
        }
        if (chargeMs > 0) {                       // shield breaker: a ring closing on the player as it charges
            float k = chargeMs / (float) SHIELD_BREAK_CHARGE_MS;
            float s = 380 + 1400 * k;
            ModFx.sprR("marker_hostile", ps.position.x, ps.position.y, s, s, -now / 3.0f % 360, POLICE_R, POLICE_G, POLICE_B, 0.9f, true);
            ModFx.strip("fx_beam", g.position.x, g.position.y, ps.position.x, ps.position.y, 30 + 120 * (1 - k), POLICE_R, POLICE_G, POLICE_B, 0.35f + 0.4f * (1 - k), true);
        }
    }

    /** Emulator tests only (/data/local/tmp/corsair_nodialog): police titan events in logcat. */
    private static void log(String what) {
        if (ModDev.testFlag("corsair_nodialog")) android.util.Log.i("ModPoliceTitan", what);
    }
}
