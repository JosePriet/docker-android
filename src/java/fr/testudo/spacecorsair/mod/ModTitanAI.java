package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisFactory;
import fr.testudo.spacecorsair.business.ennemis.MineSpec;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.Mine;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * v30 faction flagship skills (profiles approved for v30, names and texts from bosses_v30.json). Skills run while the
 * flagship is hostile (v33: hunting the player or the faction Unfriendly or worse); each enrage triggers once, at 30% hull.
 * v33: every skill use shows a callout over the player's ship, plays a sound and is logged in emulator tests; the
 * telegraphs are bigger (tele_cap_<key> art replaces the stock marker when it exists).
 *  spartan  SRS Aegis       sturdy shields, weak hull: frontal shield wall; enrage = shield dome over nearby allies
 *  reaver   Bloodforge      huge hull, no shields: harpoons, furnace ram; enrage = burning trail + ram charge
 *  kretari  Brood-Mother    hive pulse scrambles the radar; enrage = mirror swarm copying the player's movement
 *  varn     Syndicate Crown fast and brittle: contract mines, short cloak; enrage = mine ring + speed burst
 *  ironclad IMS Bastion     slow fortress: armour plates to shoot off, telegraphed artillery; enrage = plates regrow once
 *  helion   Sunspire        solar lance sweep, boost dashes; enrage = supernova ring
 *  warden   FAV Warden      tractor beam, boost disruptor, rail snipe; enrage = lockdown (no boost, no missiles, 6 s)
 */
public final class ModTitanAI {
    private ModTitanAI() {}

    static final class T {
        int a = 4000, b = 7000, c = 10000;   // skill timers
        int act, act2;                        // active effect time left
        boolean enraged;
        int enrageMs;
        float[] plates;                       // ironclad armour (hp per plate)
        final Vector2 p1 = new Vector2(), p2 = new Vector2();
        float ang0, ang1;
        boolean hitDone;
        final ArrayList<Ennemis> mirror = new ArrayList<Ennemis>();
        final ArrayList<Vector2> trail = new ArrayList<Vector2>();
        long trailAt;
        float baseForce = -1;
        final ArrayList<Element> domed = new ArrayList<Element>();     // ships the Aegis dome made invincible
        final ArrayList<Boolean> domedWas = new ArrayList<Boolean>();   // their own flag before
        boolean engaged;                      // v33: the passive skill was announced for this fight
        long wallSaid;                        // v33: last shield wall callout
    }

    private static final Map<GuardianCivilShip, T> st = new WeakHashMap<GuardianCivilShip, T>();
    private static final Vector2 v = new Vector2(), w = new Vector2();
    // effects on the player (any flagship)
    static int noBoostMs, noMissileMs, radarMs;
    private static int savedRadar = -1;
    private static boolean boostWas;

    private static void lockBoost(PlayerShip ps, int ms) {
        if (noBoostMs <= 0) boostWas = ps.isBoosterEnabled;
        noBoostMs = Math.max(noBoostMs, ms);
    }

    /** Sector change / ship change (ModCaps): every player-side lockout ends, radar range comes back. */
    static void resetPlayer(PlayerShip ps) {
        if (ps != null && savedRadar >= 0) ps.radarPortee = savedRadar;
        savedRadar = -1;
        radarMs = 0;
        noBoostMs = 0;
        noMissileMs = 0;
    }

    /** Ends every running skill effect of a flagship and gives back what it changed (fight over, flagship gone). */
    private static void calm(GuardianCivilShip g, T s) {
        s.act = 0;
        s.act2 = 0;
        s.enrageMs = 0;
        undome(s);
        s.mirror.clear();
        s.trail.clear();
        g.a = 1.0f;
        if (s.baseForce >= 0) g.pouseeForce = s.baseForce;
    }

    private static void undome(T s) {
        for (int i = 0; i < s.domed.size(); i++) s.domed.get(i).invincible = s.domedWas.get(i);
        s.domed.clear();
        s.domedWas.clear();
    }

    /** ModCapitals: a flagship left the sector, died, or a pooled Guardian is reused: its skill state goes with it. */
    static void forget(GuardianCivilShip g) {
        T s = st.remove(g);
        if (s != null) calm(g, s);
    }

    static String[] data(int fi) {
        return ModLang.spanish() ? ModV30Data.TITAN_ES[fi] : ModV30Data.TITAN_EN[fi];
    }

    static int factionIndex(ModCapitals.Cap c) {
        return fi(c);
    }

    private static int fi(ModCapitals.Cap c) {
        for (int i = 0; i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i] == c.f) return i;
        return 0;
    }

    private static T t(GuardianCivilShip g) {
        T s = st.get(g);
        if (s == null) { s = new T(); st.put(g, s); }
        return s;
    }

    private static void say(Element at, String s, float r, float g, float b) {
        Mod.floatText(at, s, r, g, b);
    }

    private static void enrageCallout(GuardianCivilShip g, int f) {
        String[] d = data(f);
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        say(g, d[1].toUpperCase(), 1.0f, 0.35f, 0.25f);
        if (ps != null) { say(ps, d[2], 1.0f, 0.6f, 0.4f); say(ps, d[3], 1.0f, 0.6f, 0.4f); }
        ObjectRegistry.INSTANCE.soundManager.playDanger();
        callout(d[0], d[1], 1.0f, 0.35f, 0.25f, 3000);
        log(f, "enrage " + d[1]);
    }

    // ------------------------------------------------------------------ v33 skill callouts
    private static String callText;
    private static long callUntil;
    private static int callMs;
    private static float cr, cg, cb;
    private static final Vector2 callAt = new Vector2();

    private static void callout(String ship, String skill, float r, float g, float b, int ms) {
        callText = (ship + ": " + skill).toUpperCase();
        callMs = ms;
        callUntil = System.currentTimeMillis() + ms;
        cr = r; cg = g; cb = b;
    }

    /** A skill use: callout over the player's ship, name at the flagship, a charge-up sound, test log. */
    private static void use(GuardianCivilShip g, int f, String skill, float r, float gr, float b) {
        say(g, skill.toUpperCase(), r, gr, b);
        callout(data(f)[0], skill, r, gr, b, 2200);
        ModSound.play("doom_charge", 0.75f, 1.2f, 400);
        log(f, "skill " + skill);
    }

    /** Emulator tests only (/data/local/tmp/corsair_nodialog): skill triggers in logcat. */
    private static void log(int f, String what) {
        if (ModDev.testFlag("corsair_nodialog")) android.util.Log.i("ModTitanAI", ModCapitals.FACTIONS[f].key + " " + what);
    }

    /** From ModCaps.drawOver: the latest skill callout above the player's ship, fading out. */
    static void drawCallout(PlayerShip ps, float sz) {
        String t = callText;
        if (t == null) return;
        long left = callUntil - System.currentTimeMillis();
        if (left <= 0) { callText = null; return; }
        float al = Math.min(1.0f, left / 500.0f) * Math.min(1.0f, (callMs - left) / 120.0f + 0.2f);
        float half = fr.testudo.spacecorsair.engine.GameRenderer.glTextLarge.getLength(t) / 2.0f;
        // across the player's own hull: above it a big flagship anchored ahead covers it (emulator run v33)
        callAt.setSameAs(ps.position).add(-half, -sz * 0.12f);
        ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(callAt, false, t, cr, cg, cb, al, fr.testudo.spacecorsair.textengine.TextSize.LARGE);
    }

    /** tele_cap_<key> (GPT telegraph art) when it ships, else the stock effect. */
    private static String tele(String key, String fallback) {
        return ModArt.lazyTex("tele_cap_" + key) != null ? "tele_cap_" + key : fallback;
    }

    /** Per frame from ModCaps.tick. */
    static void tick(PlayerShip ps, long j) {
        // player-side effects
        if (noBoostMs > 0) {
            noBoostMs -= j;
            ps.isBoosterEnabled = false;
            if (noBoostMs <= 0 && boostWas) ps.isBoosterEnabled = true;
        }
        if (noMissileMs > 0) { noMissileMs -= j; if (ps.nextShootMissileAlowed < noMissileMs) ps.nextShootMissileAlowed = noMissileMs; }
        if (radarMs > 0) {
            radarMs -= j;
            if (savedRadar < 0) savedRadar = ps.radarPortee;
            ps.radarPortee = 1;
            if (radarMs <= 0) { ps.radarPortee = savedRadar; savedRadar = -1; }
        }
        if (ModCapitals.caps.isEmpty()) return;
        for (Map.Entry<GuardianCivilShip, ModCapitals.Cap> e : ModCapitals.caps.entrySet()) {
            GuardianCivilShip g = e.getKey();
            if (g == null || g.removed || ps.removed) continue;
            try {
                ModCapitals.guns(g, e.getValue(), ps, j);
                run(g, e.getValue(), t(g), ps, j);
            } catch (Throwable x) {
                // a skill never breaks the frame
            }
        }
    }

    private static void run(GuardianCivilShip g, ModCapitals.Cap c, T s, PlayerShip ps, long j) {
        boolean fighting = ModLive.titanHostile(g, c);
        float dist = g.position.distance(ps.position);
        int f = fi(c);
        String k = c.f.key;
        if (s.baseForce < 0) s.baseForce = g.pouseeForce;
        if ("ironclad".equals(k) && s.plates == null) s.plates = full(g);
        if (!fighting || dist > 6000) {
            if (s.act > 0 || s.act2 > 0 || s.enrageMs > 0 || g.a < 1.0f || !s.domed.isEmpty()) calm(g, s);
            if (!fighting) s.engaged = false;
            return;
        }
        if (!s.engaged && dist < 4500) {                // passive kits announce themselves when the fight starts
            s.engaged = true;
            String[] d0 = data(f);
            if ("spartan".equals(k) || "ironclad".equals(k)) use(g, f, d0[4], c.f.r, c.f.g, c.f.b);
            else log(f, "engaged");
        }
        s.a -= j; s.b -= j; s.c -= j;
        int pa = s.act, pa2 = s.act2;
        if (s.act > 0) s.act -= j;
        if (s.act2 > 0) s.act2 -= j;
        if (s.enrageMs > 0) s.enrageMs -= j;
        float hp = g.maxLife > 0 ? g.life / g.maxLife : 1;
        boolean enrageNow = !s.enraged && hp < 0.3f;
        if (enrageNow) { s.enraged = true; enrageCallout(g, f); }
        String[] d = data(f);

        if ("spartan".equals(k)) {
            // the shield wall is passive (damageIn); enrage: dome over allies for 12 s
            if (enrageNow) s.enrageMs = 12000;
            if (s.enrageMs > 0) {
                List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
                for (int i = 0; i < els.size(); i++) {
                    Element o = els.get(i);
                    if (o instanceof CivilShip && o != g && !o.removed && o.position.distance(g.position) < 2600 && !s.domed.contains(o)) {
                        s.domed.add(o);
                        s.domedWas.add(o.invincible);
                        o.invincible = true;
                    }
                }
            } else if (!s.domed.isEmpty()) {
                undome(s);
            }
        } else if ("reaver".equals(k)) {
            if (s.a <= 0 && dist < 2300) {           // harpoons: 2 s drag
                s.a = 10000; s.act = 2000;
                use(g, f, d[4], 1.0f, 0.5f, 0.2f);
            }
            if (s.act > 0) pull(ps, g.position, 0.006f * j);
            if ((s.b <= 0 && dist < 2600) || enrageNow) { // furnace ram
                s.b = 16000; s.act2 = 2600; s.hitDone = false;
                use(g, f, d[6], 1.0f, 0.45f, 0.15f);
            }
            if (s.act2 > 0) {
                dir(g.position, ps.position, v);
                g.speed.set(v.x * 9.0f, v.y * 9.0f);
                if (!s.hitDone && dist < ModCapitals.SIZE * 0.45f) {
                    s.hitDone = true;
                    ModV34.skillHit(ps, g, ps.maxLife * 0.1f, false);
                    ObjectRegistry.INSTANCE.soundManager.playShockWave();
                }
            }
            if (s.enraged) {                          // burning trail: fire left behind, burns the player inside it
                long now = System.currentTimeMillis();
                if (now - s.trailAt > 220) {
                    s.trailAt = now;
                    ModFx.local(g.position, g.spin, 0, ModCapitals.SIZE * 0.42f, w);
                    s.trail.add(new Vector2(w.x, w.y));
                    if (s.trail.size() > 18) s.trail.remove(0);
                    ModLive.fx("fx_fire_sheet", 4, 16, w.x, w.y, 420, 1800, 1.0f, 0.55f, 0.2f, true);
                }
                for (int i = 0; i < s.trail.size(); i++) {
                    if (s.trail.get(i).distance(ps.position) < 230) { ModV34.skillHit(ps, g, ps.maxLife * 0.02f * j / 1000.0f, true); break; }
                }
            }
        } else if ("kretari".equals(k)) {
            if (s.a <= 0 && dist < 3000) {           // hive pulse: radar scrambled 4 s
                s.a = 13000;
                radarMs = 4000;
                use(g, f, d[4], 0.8f, 0.4f, 1.0f);
                ModLive.fx("fx_spore_sheet", 4, 16, g.position.x, g.position.y, 3200, 900, 0.75f, 0.4f, 1.0f, true);
            }
            if (enrageNow) {                         // mirror swarm: decoys copying the player's moves for 8 s
                s.enrageMs = 8000;
                for (int i = 0; i < 4; i++) {
                    Ennemis r = EnnemisFactory.newAlienRat(g.level);
                    double an = i * Math.PI / 2;
                    r.position.setSameAs(ps.position).add((float) Math.cos(an) * 420, (float) Math.sin(an) * 420);
                    r.updateSapCoords();
                    r.initAttackTarget(ps);
                    r.addToCurrentLevel();
                    s.mirror.add(r);
                }
            }
            if (s.enrageMs > 0) {
                for (Ennemis r : s.mirror) if (!r.removed) { r.speed.setSameAs(ps.speed); r.spin = ps.spin; }
            } else s.mirror.clear();
        } else if ("varn".equals(k)) {
            if (s.a <= 0 && dist < 2600) {           // contract mines along its path
                s.a = 9000;
                for (int i = 0; i < 3; i++) {
                    ModFx.local(g.position, g.spin, (i - 1) * 300, ModCapitals.SIZE * 0.5f, w);
                    mine(w);
                }
                use(g, f, d[4], 1.0f, 0.75f, 0.35f);
            }
            if (s.b <= 0 && dist < 3000) {           // short cloak
                s.b = 15000; s.act = 4000;
                use(g, f, d[6], 1.0f, 0.75f, 0.35f);
            }
            g.a = s.act > 0 ? 0.14f : 1.0f;
            if (enrageNow) {                         // liquidation: mine ring round the player + speed burst
                for (int i = 0; i < 8; i++) {
                    double an = i * Math.PI / 4;
                    w.setSameAs(ps.position).add((float) Math.cos(an) * 650, (float) Math.sin(an) * 650);
                    mine(w);
                }
                s.enrageMs = 5000;
            }
            g.pouseeForce = s.enrageMs > 0 ? s.baseForce * 3.0f : s.baseForce;
        } else if ("ironclad".equals(k)) {
            if (enrageNow) { s.plates = full(g); say(g, ModLang.spanish() ? "BLINDAJE RESTAURADO" : "ARMOUR RESTORED", 1.0f, 0.8f, 0.3f); }
            if (s.a <= 0 && dist < 3800) {           // telegraphed artillery
                s.a = 6000; s.act = 2000; s.hitDone = false;
                s.p1.setSameAs(ps.position);
                use(g, f, d[6], 1.0f, 0.8f, 0.3f);
            }
            if (pa > 0 && s.act <= 0 && !s.hitDone) {
                s.hitDone = true;
                ModLive.fx("fx_explosion_big_sheet", 8, 64, s.p1.x, s.p1.y, 900, 900, 1.0f, 0.75f, 0.4f, true);
                ObjectRegistry.INSTANCE.soundManager.playRandomExplode();
                if (ps.position.distance(s.p1) < 380) ModV34.skillHit(ps, g, ps.maxLife * 0.12f, false);
            }
        } else if ("helion".equals(k)) {
            if (s.a <= 0 && dist < 3000) {           // solar lance sweep, 3 s
                s.a = 12000; s.act = 3000;
                float to = (float) Math.toDegrees(Math.atan2(ps.position.y - g.position.y, ps.position.x - g.position.x));
                s.ang0 = to - 35; s.ang1 = to + 35;
                use(g, f, d[4], 1.0f, 0.9f, 0.5f);
            }
            if (s.act > 0) {
                float k01 = 1.0f - s.act / 3000.0f;
                float ang = s.ang0 + (s.ang1 - s.ang0) * k01;
                float toP = (float) Math.toDegrees(Math.atan2(ps.position.y - g.position.y, ps.position.x - g.position.x));
                if (Math.abs(ModLive.normDelta(toP - ang)) < 4.0f && dist < 3200) ModV34.skillHit(ps, g, ps.maxLife * 0.25f * j / 1000.0f, true);
            }
            if (s.b <= 0 && dist < 3500) {           // boost dash
                s.b = 8000; s.act2 = 900;
                use(g, f, d[6], 1.0f, 0.9f, 0.5f);
            }
            if (s.act2 > 0) {
                dir(g.position, ps.position, v);
                g.speed.set(-v.y * 11.0f + v.x * 4.0f, v.x * 11.0f + v.y * 4.0f);   // sideways dash, closing in
            }
            if (enrageNow) { s.enrageMs = 2500; s.hitDone = false; }
            if (s.enrageMs > 0) {                    // supernova: ring of fire expanding to 3000
                float r = 3000.0f * (1.0f - s.enrageMs / 2500.0f);
                if (!s.hitDone && Math.abs(dist - r) < 180) {
                    s.hitDone = true;
                    ModV34.skillHit(ps, g, ps.maxLife * 0.18f, false);
                }
            }
        } else if ("warden".equals(k)) {
            if (s.a <= 0 && dist < 2600) {           // tractor beam 3 s
                s.a = 10000; s.act = 3000;
                use(g, f, d[4], 0.5f, 0.7f, 1.0f);
            }
            if (s.act > 0) pull(ps, g.position, 0.005f * j);
            if (s.b <= 0 && dist < 3000) {           // boost disruptor 4 s
                s.b = 12000;
                lockBoost(ps, 4000);
                use(g, f, d[6], 0.5f, 0.7f, 1.0f);
            }
            if (s.c <= 0 && dist < 4200) {           // rail snipe: 1.2 s aim line, then a heavy hit along it
                s.c = 9000; s.act2 = 1200; s.hitDone = false;
                s.p1.setSameAs(g.position);
                s.p2.setSameAs(ps.position);
                use(g, f, d[8], 0.5f, 0.7f, 1.0f);
            }
            if (pa2 > 0 && s.act2 <= 0 && !s.hitDone) {
                s.hitDone = true;
                if (segDist(ps.position, s.p1, s.p2) < 140) ModV34.skillHit(ps, g, ps.maxLife * 0.15f, false);
                ObjectRegistry.INSTANCE.soundManager.playElectricSpark();
            }
            if (enrageNow) { lockBoost(ps, 6000); noMissileMs = Math.max(noMissileMs, 6000); }
        }
    }

    // ------------------------------------------------------------------ damage in (ModLive.hit)
    static float damageIn(Element target, float dmg, Projectile p) {
        if (!(target instanceof GuardianCivilShip) || p == null) return dmg;
        ModCapitals.Cap c = ModCapitals.cap(target);
        if (c == null) return dmg;
        GuardianCivilShip g = (GuardianCivilShip) target;
        T s = t(g);
        String k = c.f.key;
        if ("spartan".equals(k)) {
            // frontal shield wall: shots arriving within 50 degrees of the bow are mostly absorbed
            float to = Element.normalizeSpin(((float) Math.toDegrees(g.position.getAngularWithInRad(p.position))) % 360.0f + 90.0f);
            if (Math.abs(ModLive.normDelta(to - g.spin)) < 50) {
                ModLive.fx("shield_ripple", 1, 1, p.position.x, p.position.y, 260, 380, c.f.r, c.f.g, c.f.b, true);
                long now = System.currentTimeMillis();
                if (now - s.wallSaid > 8000) { s.wallSaid = now; use(g, fi(c), data(fi(c))[4], c.f.r, c.f.g, c.f.b); }
                return dmg * 0.1f;
            }
        } else if ("ironclad".equals(k) && s.plates != null) {
            // armour plates soak 70% of each hit until shot off
            for (int i = 0; i < s.plates.length; i++) {
                if (s.plates[i] <= 0) continue;
                float soak = dmg * 0.7f;
                s.plates[i] -= soak;
                if (s.plates[i] <= 0) {
                    ModFx.local(g.position, g.spin, plateX(i), plateY(i), w);
                    ModWreck.debris(w, g.speed, 360, 5);
                    ModLive.fx("fx_sparks_sheet", 4, 16, w.x, w.y, 300, 500, 1.0f, 0.8f, 0.4f, true);
                    Mod.floatText(g, ModLang.spanish() ? "PLACA DESTRUIDA" : "ARMOUR PLATE DOWN", 1.0f, 0.8f, 0.3f);
                }
                return dmg - soak;
            }
        } else if ("varn".equals(k) && s.act > 0) {
            return dmg * 0.5f;                       // cloaked: half the shots graze
        }
        return dmg;
    }

    private static float[] full(GuardianCivilShip g) {
        return new float[]{g.maxLife * 0.03f, g.maxLife * 0.03f, g.maxLife * 0.03f, g.maxLife * 0.03f};
    }

    private static float plateX(int i) { return (i % 2 == 0 ? -1 : 1) * ModCapitals.SIZE * 0.16f; }
    private static float plateY(int i) { return (i < 2 ? -1 : 1) * ModCapitals.SIZE * 0.2f; }

    // ------------------------------------------------------------------ visuals (ModCapitals.draw, after the hull)
    static void draw(GuardianCivilShip g, ModCapitals.Cap c) {
        T s = st.get(g);
        if (s == null) return;
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        long now = System.currentTimeMillis();
        String k = c.f.key;
        float S = ModCapitals.SIZE;
        if ("spartan".equals(k)) {
            if (g.chasseTarget != null) {            // shield wall arc at the bow
                ModFx.local(g.position, g.spin, 0, -S * 0.5f, w);
                ModFx.sprR("shield_segment", w.x, w.y + 0, S * 0.9f, S * 0.9f, g.spin, c.f.r, c.f.g, c.f.b, 0.55f, true);
            }
            if (s.enrageMs > 0) ModFx.sprR("shield_shell", g.position.x, g.position.y, 5600, 5600, 0, c.f.r, c.f.g, c.f.b, 0.35f + 0.1f * (float) Math.sin(now / 200.0), true);
        } else if ("reaver".equals(k) && ps != null && (s.act > 0 || s.act2 > 0)) {
            if (s.act > 0) {                         // harpoon cable
                ModFx.line(g.position.x, g.position.y, ps.position.x, ps.position.y, 1.0f, 0.4f, 0.15f, 0.9f);
                ModFx.strip("fx_beam", g.position.x, g.position.y, ps.position.x, ps.position.y, 28, 1.0f, 0.45f, 0.2f, 0.7f, true);
            }
            if (s.act2 > 0) {                        // furnace ram: glowing bow and a charge lane
                ModFx.local(g.position, g.spin, 0, -S * 0.42f, w);
                ModFx.spr("fx_fire", w.x, w.y, S * 0.5f, S * 0.5f, now / 4.0f % 360, 1.0f, 0.5f, 0.15f, 0.9f, true);
                ModFx.strip(tele(k, "fx_beam"), g.position.x, g.position.y, ps.position.x, ps.position.y, 180, 1.0f, 0.3f, 0.1f, 0.35f, true);
            }
        } else if ("ironclad".equals(k) && s.plates != null) {
            for (int i = 0; i < s.plates.length; i++) {
                if (s.plates[i] <= 0) continue;
                ModFx.local(g.position, g.spin, plateX(i), plateY(i), w);
                ModFx.spr("fx_hex", w.x, w.y, 300, 300, g.spin, 1.0f, 0.8f, 0.35f, 0.5f, true);
            }
            if (s.act > 0) {                         // strike zone (the 380 damage radius), closing ring, the shell coming in
                float k01 = s.act / 2000.0f;
                float pulse = 0.5f + 0.5f * (float) Math.sin(now / 70.0);
                ModFx.spr("fx_glow", s.p1.x, s.p1.y, 900, 900, 0, 1.0f, 0.2f, 0.1f, 0.35f + 0.3f * pulse, true);
                ModFx.sprR(tele(k, "marker_hostile"), s.p1.x, s.p1.y, 760 * (0.5f + 1.2f * k01), 760 * (0.5f + 1.2f * k01), now / 5.0f % 360, 1.0f, 0.3f, 0.15f, 0.9f, true);
                ModFx.spr("fx_shock", s.p1.x, s.p1.y, 780, 780, 0, 1.0f, 0.35f, 0.15f, 0.5f + 0.4f * pulse, true);
                if (s.act < 500) {
                    float q = 1.0f - s.act / 500.0f;
                    float sx = g.position.x + (s.p1.x - g.position.x) * q, sy = g.position.y + (s.p1.y - g.position.y) * q;
                    ModFx.spr("fx_core", sx, sy, 160, 160, 0, 1.0f, 0.7f, 0.35f, 1.0f, true);
                    ModFx.strip("fx_beam", g.position.x, g.position.y, sx, sy, 40, 1.0f, 0.55f, 0.2f, 0.5f, true);
                }
            }
        } else if ("helion".equals(k)) {
            if (s.act > 0) {
                float k01 = 1.0f - s.act / 3000.0f;
                double ang = Math.toRadians(s.ang0 + (s.ang1 - s.ang0) * k01);
                float x2 = g.position.x + (float) Math.cos(ang) * 3200, y2 = g.position.y + (float) Math.sin(ang) * 3200;
                ModFx.strip("vfx_lance_core", g.position.x, g.position.y, x2, y2, 90, 1.0f, 0.85f, 0.45f, 0.9f, true);
                ModFx.strip("fx_glow", g.position.x, g.position.y, x2, y2, 260, 1.0f, 0.7f, 0.3f, 0.45f, true);
            }
            if (s.enrageMs > 0) {
                float r = 3000.0f * (1.0f - s.enrageMs / 2500.0f);
                ModFx.spr("vfx_nova_ring", g.position.x, g.position.y, r * 2.1f, r * 2.1f, 0, 1.0f, 0.6f, 0.2f, 0.85f, true);
            }
        } else if ("warden".equals(k)) {
            if (s.act > 0 && ps != null) ModFx.strip("fx_beam", g.position.x, g.position.y, ps.position.x, ps.position.y, 60, 0.45f, 0.7f, 1.0f, 0.55f, true);
            if (s.act2 > 0) {                        // rail snipe aim line: widening, pulsing faster as it charges
                float k01 = 1.0f - s.act2 / 1200.0f;
                float x2 = s.p2.x + (s.p2.x - s.p1.x), y2 = s.p2.y + (s.p2.y - s.p1.y);
                ModFx.line(s.p1.x, s.p1.y, x2, y2, 1.0f, 0.2f, 0.2f, 0.4f + 0.6f * k01);
                float pulse = 0.5f + 0.5f * (float) Math.sin(now / (90.0 - 60.0 * k01));
                ModFx.strip(tele(k, "fx_beam"), s.p1.x, s.p1.y, x2, y2, 60 + 220 * k01, 1.0f, 0.25f, 0.2f, 0.25f + 0.45f * pulse, true);
            }
        } else if ("kretari".equals(k) && radarMs > 0 && ps != null) {
            ModFx.spr("fx_shock", ps.position.x, ps.position.y, 900, 900, now / 3.0f % 360, 0.8f, 0.4f, 1.0f, 0.35f, true);
        }
    }

    // ------------------------------------------------------------------ helpers
    private static void pull(PlayerShip ps, Vector2 to, float force) {
        dir(ps.position, to, v);
        ps.speed.add(v.x * force, v.y * force);
    }

    /** Unit vector from a to b in out. */
    private static void dir(Vector2 a, Vector2 b, Vector2 out) {
        float dx = b.x - a.x, dy = b.y - a.y;
        float d = Math.max(1.0f, (float) Math.sqrt(dx * dx + dy * dy));
        out.set(dx / d, dy / d);
    }

    private static float segDist(Vector2 p, Vector2 a, Vector2 b) {
        float dx = b.x - a.x, dy = b.y - a.y;
        float len2 = dx * dx + dy * dy;
        if (len2 < 1) return p.distance(a);
        // the rail line continues past the aimed point
        float t = Math.max(0, Math.min(2.0f, ((p.x - a.x) * dx + (p.y - a.y) * dy) / len2));
        float px = a.x + dx * t - p.x, py = a.y + dy * t - p.y;
        return (float) Math.sqrt(px * px + py * py);
    }

    private static void mine(Vector2 at) {
        try {
            Mine m = GamePools.newMine().init(at, new Vector2(0, 0), 0.05f, MineSpec.MINESPEC_2);
            ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(m);
        } catch (Throwable t) {
            // no mines this time
        }
    }
}
