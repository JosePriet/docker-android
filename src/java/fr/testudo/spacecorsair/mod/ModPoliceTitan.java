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
    static final float POLICE_TITAN_SHIELD_MULT = 1.2f;  // v43a-4: kept at x1.2 (owner rule: +20% on everything)
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
    // owner pick 2026-11-12 (card "police titan extra shield": Overshield layer): a second white-blue layer worth 40% of
    // the titan's hull that takes damage before its normal shield; it regenerates only after 20 s without the titan
    // taking any damage, refilling in 6 s. Doomsday % damage goes straight to the hull as before (no mitigation rule).
    static final float OVER_FRAC = 0.4f;
    static final int OVER_DELAY_MS = 20000, OVER_REFILL_MS = 6000;
    private static float over, overCap;
    private static long overQuietMs;      // game time since the titan last took damage (pauses with the game)
    private static float overLastLife;
    private static fr.testudo.spacecorsair.display.hud.InfoBarEnnemis overBar;
    private static String name;
    private static final ModCapitals.Faction[] POL = new ModCapitals.Faction[ModCapitals.FACTIONS.length];
    private static int lockCd, breakCd, lockMs, chargeMs;
    private static boolean jamSaid;
    private static int testMs = -1;
    private static final Vector2 v = new Vector2();

    // ------------------------------------------------------------------ API (ModPolice)
    /** Police titan of faction factionKey (unknown key = Frontier Authority) at {@code at}; null if one is alive or it fails. */
    static final int TITAN_OVER_PLAYER = 2;
    static final float COUNCIL_R = 0.42f, COUNCIL_G = 0.18f, COUNCIL_B = 0.62f;   // High Council dark purple

    /** Kre'tari (aliens): High Council ships, dark purple, no visible propulsion (owner 2026-11-03 23:10). */
    static boolean council(String key) {
        return "kretari".equals(key);
    }   // police titan level >= player level + 2

    public static Element spawn(String factionKey, int level, Vector2 at) {
        try {
            if (active() || at == null) return null;
            int fi = ModCapitals.FACTIONS.length - 1;    // unowned / unknown: Frontier Authority (warden, last)
            for (int i = 0; i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i].key.equals(factionKey)) fi = i;
            ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
            if (POL[fi] == null) POL[fi] = council(f.key)   // owner 23:10: the Kre'tari send a High Council titan, not police
                ? new ModCapitals.Faction(f.key, f.name, ModLang.trf("%s High Council Titan", f.name), f.hq, COUNCIL_R, COUNCIL_G, COUNCIL_B)
                : new ModCapitals.Faction(f.key, f.name, ModLang.trf("%s Police Titan", f.name), f.hq, POLICE_R, POLICE_G, POLICE_B);
            // v42 fix (owner: police level capped at the sector's top level): the level ModPolice passes, never above it
            // owner 2026-11-03 22:22 (card pending, recommended option): titans always out-level the player -> max(sector top, player + 2)
            int pl = ObjectRegistry.INSTANCE.game.playerInfo != null ? ObjectRegistry.INSTANCE.game.playerInfo.level : 0;
            int lvl = Math.max(0, Math.min(ModV34.CAP, Math.max(level, pl + TITAN_OVER_PLAYER)));
            GuardianCivilShip g = ModCapitals.spawnPolice(fi, lvl, at, POL[fi], POLICE_TITAN_MULT);
            if (g == null) return null;
            float[] sh = ModV34.shieldStats(lvl, lvl, ModShips.TITAN);   // flagships carry none: a titan-class one, x1.2
            if (sh != null) {
                ModV34.Sh h = new ModV34.Sh();
                h.cap = h.cur = sh[0] * POLICE_TITAN_SHIELD_MULT;
                h.rate = sh[1] * POLICE_TITAN_SHIELD_MULT;
                ModV34.bigShield.put(g, h);
            }
            ModArt.lazyTex("pol_cap_" + f.key);   // v42 fix: register before prefetch
            ModArt.prefetch("pol_cap_" + f.key);
            titan = g;
            name = g.specificName;
            overCap = over = g.maxLife * OVER_FRAC;
            overQuietMs = 0;
            overLastLife = g.life;
            overBar = null;
            lockCd = LOCKDOWN_FIRST_MS;
            breakCd = SHIELD_BREAK_FIRST_MS;
            lockMs = 0;
            chargeMs = 0;
            try { g.attackPlayerIfItNotTheCaseAlready(); } catch (Throwable t) { /* re-armed every frame */ }
            ModSound.play("flagship_horn", 1.0f, 0.85f, 3000);
            ModSound.play("warp_in", 0.9f, 0.7f, 1000);
            ModQol.post(ModLang.trf("%s has arrived. It will not stop until you are destroyed.", name));
            log("spawn " + f.key + " L" + lvl + " hull=" + Math.round(g.maxLife) + " shield=" + (sh == null ? 0 : Math.round(sh[0] * POLICE_TITAN_SHIELD_MULT)));
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
        overBar = null;
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

    // ------------------------------------------------------------------ overshield
    /** ModLive.hit, before the normal shield: the overshield takes the damage first; any damage resets the regen delay. */
    static float overAbsorb(Element target, float dmg) {
        if (dmg <= 0 || target == null || target != titan) return dmg;
        overQuietMs = 0;
        if (over <= 0) return dmg;
        float a = Math.min(dmg, over);
        over -= a;
        if (over <= 0) {
            over = 0;
            ModLive.fx("fx_shock", 1, 1, target.position.x, target.position.y, ModCapitals.SIZE * 1.3f, 700, 0.8f, 0.92f, 1.0f, true);
            ModSound.play("warp_in", 0.7f, 1.6f, 800);
            ModTitanAI.say(target, ModLang.tr("OVERSHIELD DOWN"), 0.8f, 0.92f, 1.0f);
            log("overshield down");
        }
        return dmg - a;
    }

    /** Regen: only after OVER_DELAY_MS without damage, back to full in OVER_REFILL_MS. */
    private static void overTick(GuardianCivilShip g, long j) {
        if (g == null || g.removed || overCap <= 0) return;
        if (g.life < overLastLife) overQuietMs = 0;   // hull damage that skips ModLive.hit (doomsday %) also counts
        overLastLife = g.life;
        if (over >= overCap) return;
        overQuietMs += j;
        if (overQuietMs < OVER_DELAY_MS) return;
        boolean was = over <= 0;
        over = Math.min(overCap, over + overCap * j / (float) OVER_REFILL_MS);
        if (was && over > 0) {
            ModTitanAI.say(g, ModLang.tr("OVERSHIELD RESTORED"), 0.8f, 0.92f, 1.0f);
            ModSound.play("warp_in", 0.5f, 1.3f, 800);
        }
    }

    /** ModV34.shieldDraw: a bright white-blue shell outside the normal one while the overshield holds. */
    static void overShell(Element e, float side) {
        if (e != titan || overCap <= 0 || over <= 0) return;
        float f = over / overCap, w = side * 1.3f;
        float pulse = 0.85f + 0.15f * (float) Math.sin(System.currentTimeMillis() / 220.0);
        ModFx.spr("shield_shell", e.position.x, e.position.y, w, w, 0, 0.8f, 0.92f, 1.0f, (0.18f + 0.3f * f) * pulse, true);
    }

    /** ModCapitals.draw, right after the hull bar: the white-blue overshield bar just above it. */
    static void overBarDraw(GuardianCivilShip g, Vector2 a, float sz) {
        if (g != titan || overCap <= 0 || over <= 0 || g.lifeBar == null) return;
        try {
            if (overBar == null) overBar = fr.testudo.spacecorsair.display.hud.InfoBarEnnemis.newTransparentWhite(new Vector2(0, 0), (int) g.lifeBar.witdh, 10);
            overBar.setValue(100f * over / overCap);
            a.setSameAs(g.position).add(15, sz * 0.48f + 26);
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(a, overBar);
        } catch (Throwable t) {
            // bar only
        }
    }

    // ------------------------------------------------------------------ per frame (ModTitanAI.tick)
    static void tick(PlayerShip ps, long j) {
        overTick(titan, j);
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
