package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.loot.LootElement;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.util.WeakHashMap;

/**
 * v30 "living ships" and side identification, drawn around every visible element (smali hook in GameThread.doPhysic
 * replaces element.registerYourselfToDrawQueue() with draw(element)).
 * - Enemies: hostile marker under the hull, warm rim light (a slightly larger additive copy of the hull drawn beneath it,
 *   so only its outline shows), red-shifted engine glow. The player side gets a cyan rim and friendly marker (ModCaps).
 * - Hulls with ChatGPT glow masks (<art>_glow_l lights / <art>_glow_e engines) light up: lights pulse and flicker when
 *   damaged, engines follow thrust. Alien hulls add the 8-frame appendage loop, healing veins, ichor on hits and a spore
 *   dissolve on death (ModWreck). Damaged hulls smoke below 50% and burn below 25%.
 * - Bosses: rotating sigil, enrage overlay, skull-and-star plate with a purple name and level.
 * - Faction flagships: their faction signature always; the hostile look only when hostile or the player is Unfriendly.
 * - Loot: a light beam over dropped items of Rare and better, tinted by rarity.
 */
public final class ModLive {
    private ModLive() {}

    // ------------------------------------------------------------------ frame bookkeeping
    static long nowMs;

    /** v30b smali hook at the start of GameThread.doPhysic: once per game frame, before any element is drawn. */
    public static void frameStart() {
        frameDone = false;
    }

    private static boolean frameDone;

    /** Lazily on the first draw of a frame: sprite budget, clock, timed flipbook effects (under every ship). */
    static void frame() {
        if (frameDone) return;
        frameDone = true;
        ModFx.budget = 1000;
        nowMs = System.currentTimeMillis();
        try {
            drawFx();
        } catch (Throwable t) {
            // effects never break the frame
        }
    }


    /** Smali hook (GameThread.doPhysic): queues an element with the v30 layers around it. */
    public static void draw(Element e) {
        if (e instanceof Projectile || e.isParticule) {
            e.registerYourselfToDrawQueue();
            return;
        }
        boolean on = !ObjectRegistry.INSTANCE.game.mapMode && !e.isPlayer;
        if (on) {
            try {
                frame();
                under(e);
            } catch (Throwable t) {
                // visuals never break the frame
            }
        }
        e.registerYourselfToDrawQueue();
        if (on) {
            try {
                over(e);
            } catch (Throwable t) {
                // visuals never break the frame
            }
        }
    }

    // ------------------------------------------------------------------ helpers
    static float sizeOf(Drawable d) {
        if (d == null) return 0;
        if (d instanceof ModFx.Sprite) return Math.max(((ModFx.Sprite) d).w, ((ModFx.Sprite) d).h);
        return d.dimensions == null ? 0 : Math.max(d.dimensions.x, d.dimensions.y);
    }

    private static boolean hostileEnemy(Element e) {
        return e instanceof Ennemis && !Mod.isDrone(e);
    }

    /** Flagship look: hostile when it is hunting the player or the player is Unfriendly (or worse) with its faction. */
    static boolean titanHostile(GuardianCivilShip g, ModCapitals.Cap c) {
        return g.chasseTarget != null || ModRep.rank(c.f.key) <= ModRep.UNFRIENDLY;
    }

    /** Upright sprite: the scene is drawn y-up, so image rows are flipped back (v from 1 to 0). */
    static void upright(String tex, float x, float y, float w, float h, float r, float g, float b, float a, boolean add) {
        Texture t = ModArt.ready(tex);
        if (t != null) ModFx.sprTex(t, x, y, w, h, 0, r, g, b, a, add, 0, 1, 1, 0);
    }

    // ------------------------------------------------------------------ under the hull
    private static void under(Element e) {
        if (e instanceof LootElement) {
            lootBeam((LootElement) e);
            return;
        }
        if (e instanceof ModWreck) return;
        Drawable d = e.getDrawableObject();
        if (d == null) return;
        float side = sizeOf(d);
        if (side <= 0) return;
        long t = nowMs;
        if (e instanceof GuardianCivilShip) {
            ModCapitals.Cap c = ModCapitals.cap(e);
            if (c != null) {
                // faction signature (identifies the faction at a glance; not a threat display)
                float sz = ModCapitals.SIZE * 1.3f, ga = e.a;     // Varn cloak dims everything
                ModFx.sprR(SIG[ModTitanAI.factionIndex(c)], e.position.x, e.position.y, sz, sz, (t / 90.0f) % 360, c.f.r, c.f.g, c.f.b, 0.55f * ga, true);
                if (titanHostile((GuardianCivilShip) e, c)) {
                    ModFx.sprR("marker_hostile", e.position.x, e.position.y, sz * 0.95f, sz * 0.95f, (t / 60.0f) % 360, 1.0f, 0.22f, 0.15f, 0.45f * ga, true);
                    rim(d, e, 1.035f, 1.0f, 0.3f, 0.18f, 0.6f * ga);
                }
                return;
            }
        }
        if (!hostileEnemy(e)) return;
        int boss = ModBoss.kindOf(e);
        if (boss >= 0) {
            float ss = side * 1.9f;
            ModFx.sprR(SIGIL[boss], e.position.x, e.position.y, ss, ss, (t / 45.0f) % 360, 0.78f, 0.38f, 1.0f, 0.75f, true);
            ModFx.sprR(SIGIL[boss], e.position.x, e.position.y, ss * 0.82f, ss * 0.82f, -(t / 70.0f) % 360, 1.0f, 0.78f, 0.3f, 0.35f, true);
        }
        float ms = side * 1.4f;
        ModFx.sprR("marker_hostile", e.position.x, e.position.y, ms, ms, (t / 80.0f) % 360, 1.0f, 0.25f, 0.18f, 0.42f, true);
        rim(d, e, 1.07f, 1.0f, 0.42f, 0.22f, 0.55f);
    }

    /** A slightly larger additive copy of the hull beneath it: only the outline shows (rim light). */
    static void rim(Drawable d, Element e, float scale, float r, float g, float b, float a) {
        Texture tex = d.myTexture;
        if (tex == null || tex.name <= 0) return;
        float w, h;
        if (d instanceof ModFx.Sprite) { w = ((ModFx.Sprite) d).w; h = ((ModFx.Sprite) d).h; }
        else { w = d.dimensions.x; h = d.dimensions.y; }
        ModFx.sprTex(tex, e.position.x, e.position.y, w * scale, h * scale, e.spin, r, g, b, a, true, 0, 0, 1, 1);
    }

    // ------------------------------------------------------------------ over the hull
    private static void over(Element e) {
        if (e instanceof LootElement || e instanceof ModWreck) return;
        Drawable d = e.getDrawableObject();
        if (d == null) return;
        boolean enemy = hostileEnemy(e);
        boolean pousee = e instanceof Ennemis ? ((Ennemis) e).isPousee
            : e instanceof fr.testudo.spacecorsair.business.world.civil.CivilShip && ((fr.testudo.spacecorsair.business.world.civil.CivilShip) e).isPousee;
        living(e, d, enemy, pousee ? 1.0f : 0.15f, false);
        if (enemy) {
            int boss = ModBoss.kindOf(e);
            if (boss >= 0) bossPlate((Ennemis) e, d, boss);
        }
    }

    // ------------------------------------------------------------------ living ships
    private static final WeakHashMap<Element, float[]> state = new WeakHashMap<Element, float[]>();
    // per element: 0 last life, 1 heal-until (ms, low bits), 2 hit-until, 3 last spin, 4 phase
    private static final java.util.HashMap<String, Boolean> ALIEN = new java.util.HashMap<String, Boolean>();
    static {
        for (String a : new String[]{"harbinger", "secret_kretari", "cap_kretari", "orig_alien_blatte", "orig_alien_rat0"}) ALIEN.put(a, Boolean.TRUE);
    }

    static boolean alienArt(String art) {
        return art != null && ALIEN.containsKey(art);
    }

    private static float[] st(Element e) {
        float[] s = state.get(e);
        if (s == null) {
            s = new float[]{e.life, 0, 0, e.spin, (float) (Math.random() * 6.28)};
            state.put(e, s);
        }
        return s;
    }

    /** Called by ModLive.hit for any ship hit: flinch / ichor timing. */
    static void onHit(Element e) {
        float[] s = state.get(e);
        if (s != null) s[2] = (float) ((System.currentTimeMillis() + 260) % 1000000L);
    }

    private static boolean before(float until) {
        float now = (float) (System.currentTimeMillis() % 1000000L);
        return until > now && until - now < 5000;
    }

    /**
     * Glow masks, alien overlays and damage effects for one hull. x/y/spin from the element; thrust 0..1.
     * Used for the player too (ModCaps.drawOver), where enemy = false.
     */
    static void living(Element e, Drawable d, boolean enemy, float thrust, boolean rel) {
        String art = ModArt.artOf(d.myTexture);
        // the Arwing / alien rat animates through 11 stock frames and only frame 0 has a remaster: no overlay (it would blink)
        if (art == null || art.equals("orig_alien_rat0")) return;
        float w = sizeOf(d);
        if (w <= 0) return;
        try {
            ModFx.relative = rel;
            layers(e, art, w, enemy, thrust, rel);
        } finally {
            ModFx.relative = false;
        }
        damage(e, art, w);
    }

    /** Derived asset names per art (built once; the draw path runs for every visible hull every frame). */
    private static final java.util.HashMap<String, String[]> NAMES = new java.util.HashMap<String, String[]>();
    private static final String[] SIG = new String[ModCapitals.FACTIONS.length];
    private static final String[] SIGIL = new String[3], ENRAGE = new String[3];
    static {
        for (int i = 0; i < SIG.length; i++) SIG[i] = "titan_signature_" + ModCapitals.FACTIONS[i].key;
        for (int i = 0; i < 3; i++) { SIGIL[i] = "boss_sigil_" + ModBoss.ID[i]; ENRAGE[i] = "boss_enrage_" + ModBoss.ID[i]; }
    }

    /** 0 glow_l, 1 glow_e, 2..9 anim frames, 10 veins. */
    private static String[] names(String art) {
        String[] n = NAMES.get(art);
        if (n == null) {
            n = new String[11];
            n[0] = art + "_glow_l";
            n[1] = art + "_glow_e";
            for (int i = 0; i < 8; i++) n[2 + i] = art + "_anim_0" + (i + 1);
            n[10] = art + "_veins";
            NAMES.put(art, n);
        }
        return n;
    }

    private static void layers(Element e, String art, float w, boolean enemy, float thrust, boolean rel) {
        String[] nm = names(art);
        float x = rel ? GameRenderer.screenCenter.x : e.position.x, y = rel ? GameRenderer.screenCenter.y : e.position.y, sp = e.spin;
        long t = nowMs != 0 ? nowMs : System.currentTimeMillis();
        float[] s = st(e);
        float hp = e.maxLife > 0 ? Math.max(0, Math.min(1, e.life / e.maxLife)) : 1;
        boolean healing = e.life > s[0] + 0.01f && s[0] > 0;
        if (healing) s[1] = (float) ((System.currentTimeMillis() + 900) % 1000000L);
        s[0] = e.life;
        boolean alien = alienArt(art);
        float ph = s[4];
        // lights: slow pulse (aliens: a breathing swell), random dropouts when the hull is badly hurt
        float la = alien ? 0.45f + 0.35f * (float) Math.sin(t / 900.0d + ph) : 0.6f + 0.25f * (float) Math.sin(t / 650.0d + ph);
        if (hp < 0.35f && Math.random() < 0.18) la *= 0.15f;
        if (before(s[2])) la = Math.min(1.0f, la + 0.35f);           // flinch flash
        float lr = 1, lg = 1, lb = 1;
        if (enemy) { lr = 1.0f; lg = 0.8f; lb = 0.75f; }
        ModFx.sprR(nm[0], x, y, w, w, sp, lr, lg, lb, la, true);
        // engines follow thrust; enemies burn red-shifted
        float ea = 0.18f + 0.82f * Math.max(0, Math.min(1, thrust));
        if (enemy) ModFx.sprR(nm[1], x, y, w, w, sp, 1.0f, 0.42f, 0.3f, ea, true);
        else ModFx.sprR(nm[1], x, y, w, w, sp, 1, 1, 1, ea, true);
        if (alien) {
            // appendage loop (alpha-blended over the static hull)
            int f = (int) ((t / 120 + (long) (ph * 10)) % 8);
            float flinch = before(s[2]) ? 0.85f : 1.0f;
            ModFx.sprR(nm[2 + f], x, y, w * flinch + w * (1 - flinch) * 0.5f, w * flinch + w * (1 - flinch) * 0.5f, sp, 1, 1, 1, 1, false);
            if (before(s[1])) {
                float va = 0.35f + 0.35f * (float) Math.sin(t / 160.0d);
                ModFx.sprR(nm[10], x, y, w, w, sp, 0.55f, 1.0f, 0.6f, va, true);
            }
        }
    }

    private static void damage(Element e, String art, float w) {
        float x = e.position.x, y = e.position.y, sp = e.spin;
        float[] s = st(e);
        float hp = e.maxLife > 0 ? Math.max(0, Math.min(1, e.life / e.maxLife)) : 1;
        boolean alien = alienArt(art);
        // damage: smoke below 50%, fire below 25% (anchored on the hull, drifting)
        if (hp < 0.5f && Math.random() < (hp < 0.25f ? 0.30 : 0.14)) {
            float ox = (float) (Math.random() - 0.5) * w * 0.5f, oy = (float) (Math.random() - 0.5) * w * 0.5f;
            if (alien) {
                fx("fx_ichor_sheet", 4, 16, x + ox, y + oy, w * 0.22f, 700, 0.55f, 0.25f, 0.95f, true);
            } else {
                fx("fx_smoke_sheet", 4, 16, x + ox, y + oy, w * 0.3f, 1400, 0.5f, 0.5f, 0.5f, true);
                if (hp < 0.25f) fx("fx_fire_sheet", 4, 16, x + ox * 0.6f, y + oy * 0.6f, w * 0.2f, 700, 1.0f, 0.6f, 0.25f, true);
                if (Math.random() < 0.25) fx("fx_sparks_sheet", 4, 16, x + ox, y + oy, w * 0.18f, 400, 1.0f, 0.85f, 0.5f, true);
            }
        }
        // manoeuvring thrusters: puffs at the bow when turning hard
        float dl = normDelta(sp - s[3]);
        s[3] = sp;
        if (!alien && Math.abs(dl) > 1.2f && Math.random() < 0.35) {
            float side = dl >= 0 ? 1 : -1;
            ModFx.local(e.position, sp, side * w * 0.22f, -w * 0.3f, tmp);
            fx("fx_vent_sheet", 4, 16, tmp.x, tmp.y, w * 0.12f, 380, 0.75f, 0.85f, 1.0f, true);
        }
    }

    private static final Vector2 tmp = new Vector2(), tmp2 = new Vector2();

    static float normDelta(float d) {
        while (d > 180) d -= 360;
        while (d < -180) d += 360;
        return d;
    }

    // ------------------------------------------------------------------ boss plate
    private static String[] plateText = new String[3];
    private static int[] plateLevel = {-1, -1, -1};
    private static float[] plateHalf = new float[3];

    private static void bossPlate(Ennemis b, Drawable d, int kind) {
        float side = sizeOf(d);
        float x = b.position.x, y = b.position.y + side * 0.5f + 46.0f;
        if (plateText[kind] == null || plateLevel[kind] != b.level) {
            plateText[kind] = ModBoss.displayName(kind) + "  Lv " + b.level;
            plateLevel[kind] = b.level;
            plateHalf[kind] = GameRenderer.glTextMedium == null ? plateText[kind].length() * 7 : GameRenderer.glTextMedium.getLength(plateText[kind]) / 2.0f;
        }
        float half = plateHalf[kind];
        float pw = Math.max(280.0f, half * 2.0f + 150.0f);
        upright("ui_boss_plate", x + 20, y + 10, pw, pw / 8.0f, 1, 1, 1, 0.95f, false);
        float ic = 64.0f;
        upright("icon_boss", x - half - 26.0f, y + 10, ic, ic, 1, 1, 1, 1, false);
        tmp2.set(x - half + 14.0f, y);
        ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(tmp2, false, plateText[kind], 0.78f, 0.45f, 1.0f, 1.0f, TextSize.MEDIUM);
        if (ModBoss.enragedOf(b)) {
            float pulse = 0.55f + 0.45f * (float) Math.sin(nowMs / 140.0d);
            ModFx.sprR(ENRAGE[kind], b.position.x, b.position.y, side * 1.7f, side * 1.7f, (nowMs / 30.0f) % 360, 1.0f, 0.35f, 0.85f, 0.65f * pulse, true);
        }
    }

    // ------------------------------------------------------------------ loot beam
    private static void lootBeam(LootElement l) {
        if (l.spaceObjectType == null) return;
        LootRarety r = l.spaceObjectType.getRarety();
        if (r == null || r.getRaretySort() < LootRarety.RARE.getRaretySort()) return;
        float cr, cg, cb;
        switch (r) {
            case RARE: cr = 0.35f; cg = 0.6f; cb = 1.0f; break;
            case EXCEPTIONAL: cr = 0.8f; cg = 0.4f; cb = 1.0f; break;
            default: cr = 1.0f; cg = 0.75f; cb = 0.25f; break;   // legendary
        }
        float pulse = 0.75f + 0.25f * (float) Math.sin(nowMs / 300.0d);
        float h = 520.0f;
        Texture t = ModArt.ready("loot_beam");
        if (t != null) ModFx.sprTex(t, l.position.x, l.position.y + h * 0.42f, 130.0f, h, 0, cr, cg, cb, 0.8f * pulse, true, 0, 1, 1, 0);
    }

    // ------------------------------------------------------------------ timed flipbooks (wall clock: they run while the player is dead too)
    private static final int FXN = 64;
    private static final String[] fxTex = new String[FXN];
    private static final int[] fxCols = new int[FXN], fxFrames = new int[FXN];
    private static final float[] fxX = new float[FXN], fxY = new float[FXN], fxSize = new float[FXN], fxRot = new float[FXN];
    private static final float[] fxR = new float[FXN], fxG = new float[FXN], fxB = new float[FXN];
    private static final long[] fxStart = new long[FXN], fxDur = new long[FXN];
    private static final boolean[] fxAdd = new boolean[FXN];
    private static final int[] fxCell = new int[FXN], fxRows = new int[FXN];
    private static final float[] fxVX = new float[FXN], fxVY = new float[FXN], fxSpin = new float[FXN];
    private static int fxNext;

    /** A still flipbook cell (debris chunk) drifting at vx/vy world units per second, spinning, fading at the end. */
    static void chunk(String tex, int cols, int rows, int cell, float x, float y, float size, long ms, float vx, float vy) {
        fx(tex, cols, cols * rows, x, y, size, ms, 0.8f, 0.78f, 0.75f, false);
        int i = (fxNext + FXN - 1) % FXN;
        fxCell[i] = cell;
        fxRows[i] = rows;
        fxVX[i] = vx;
        fxVY[i] = vy;
        fxSpin[i] = (float) (Math.random() - 0.5) * 240;
    }

    /** Play a row-major flipbook once at a world point. */
    static void fx(String tex, int cols, int frames, float x, float y, float size, long ms, float r, float g, float b, boolean add) {
        int i = fxNext;
        fxNext = (fxNext + 1) % FXN;
        fxTex[i] = tex; fxCols[i] = cols; fxFrames[i] = frames;
        fxX[i] = x; fxY[i] = y; fxSize[i] = size; fxRot[i] = (float) (Math.random() * 360);
        fxR[i] = r; fxG[i] = g; fxB[i] = b; fxAdd[i] = add;
        fxStart[i] = System.currentTimeMillis();
        fxDur[i] = Math.max(60, ms);
        fxCell[i] = -1;
        fxRows[i] = (frames + cols - 1) / cols;
        fxVX[i] = 0;
        fxVY[i] = 0;
        fxSpin[i] = 0;
    }

    private static void drawFx() {
        long now = nowMs;
        for (int i = 0; i < FXN; i++) {
            if (fxTex[i] == null) continue;
            long age = now - fxStart[i];
            if (age < 0 || age >= fxDur[i]) {
                fxTex[i] = null;
                continue;
            }
            int f = fxCell[i] >= 0 ? fxCell[i] : (int) (age * fxFrames[i] / fxDur[i]);
            int rows = fxRows[i];
            float fade = age > fxDur[i] * 0.7f ? 1.0f - (age - fxDur[i] * 0.7f) / (fxDur[i] * 0.3f) : 1.0f;
            float sec = age / 1000.0f;
            ModFx.flipR(fxTex[i], fxCols[i], rows, f, fxX[i] + fxVX[i] * sec, fxY[i] + fxVY[i] * sec, fxSize[i], fxRot[i] + fxSpin[i] * sec,
                fxR[i], fxG[i], fxB[i], fade, fxAdd[i]);
        }
    }

    // ------------------------------------------------------------------ hits
    /**
     * Smali hook in Element.applyProjectileHit, right before applyDamage: returns the damage actually applied. Boss and
     * flagship skills (shield wall, armour plates) reduce it here; the player's shell records the impact point.
     */
    public static float hit(Element target, float dmg, Projectile p) {
        float out = dmg;
        try {
            out = ModBoss.damageIn(target, out, p);
            out = ModTitanAI.damageIn(target, out, p);
            onHit(target);
            if (target.isPlayer && p != null) {
                PlayerShip ps = (PlayerShip) target;
                if (ps.shield != null && ps.shield.currentValue > 0) {
                    float deg = Element.normalizeSpin(((float) Math.toDegrees(ps.position.getAngularWithInRad(p.position))) % 360.0f + 90.0f);
                    ModShield.impact(deg);
                }
            } else if (p != null && dmg > 0) {
                Drawable d = target.getDrawableObject();
                if (d != null && alienArt(ModArt.artOf(d.myTexture)) && Math.random() < 0.6) {
                    fx("fx_ichor_sheet", 4, 16, p.position.x, p.position.y, Math.max(60, sizeOf(d) * 0.18f), 520, 0.6f, 0.3f, 1.0f, true);
                }
            }
        } catch (Throwable t) {
            out = dmg;
        }
        ModQol.onHit(target, out, p);
        return out;
    }
}
