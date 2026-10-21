package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.ArrayList;

/**
 * v30 wrecks. Cruiser-size hulls and bigger break into 2-3 pieces cut from their own sprite when destroyed (burnt
 * colour, torn hot edges along the cuts, venting, sparks). Pieces are real elements: they drift, collide with ships and
 * asteroids, and anyone can shoot them apart; only the player's kills roll loot (ModLoot.fromWreck).
 * - Enemy wrecks stay for the whole visit of the sector (oldest removed past MAX pieces).
 * - The player's own hull breaks up during the 4 s before the respawn screen; it is visual only and then removed.
 * - Alien hulls dissolve into spores instead (no pieces).
 * - Derelict sites (ModDerelict) use the same pieces, pre-broken and still.
 * - v33: hulls with hand-drawn wreck art (wreck_<art>_a/_b[/_c], same canvas as the hull sprite, a = bow) break into those
 *   pieces; the others keep the cut sprite, scorched toward the cuts (flat dark gradient + char marks). Pieces are heavy (mass from the
 *   original hull size) and only drift: hits and rams barely move them.
 */
public final class ModWreck extends Element {
    // ------------------------------------------------------------------ piece
    Texture tex;
    String art;                 // on-demand art (derelicts) when tex is null
    float u0, v0, u1, v1;       // sprite rectangle of this piece
    float w, h;                 // world size of the piece
    boolean cutTop, cutBottom;  // torn edges (v0 side / v1 side)
    boolean visualOnly;
    boolean derelict;
    int srcLevel, srcClass;     // loot inputs: level and size class (0 small .. 3 capital)
    boolean srcElite, srcBoss;
    long born, lifeMs;          // visualOnly pieces fade out
    float tint = 0.62f;
    int derelictSite = -1;
    boolean[] group;            // shared by the pieces of one hull: loot rolls once per hull
    boolean preDrawn;           // v33: hand-drawn wreck art (already burnt and torn: no tint, no edge strip, no char)
    private float lastVx, lastVy;
    private final Vector2 phys = new Vector2(), vis = new Vector2();
    private final ModFx.Sprite spr = new ModFx.Sprite();
    private final ModFx.Sprite burnSpr = new ModFx.Sprite();
    private final float[] burnA = new float[2];   // v33 burn alpha at the v0 / v1 edge
    private float[] scorch;
    private float scorchSize;
    private long nextVent;

    ModWreck() {
        hasSpeedDeperdition = true;
        speedDeperditionfactor = 1.0015f;
        drawOnRadar = false;
        mass = 6.0f;
        objectName = "Wreck";
        born = System.currentTimeMillis();
        nextVent = born + (long) (Math.random() * 1500);
    }

    @Override
    public Drawable getDrawableObject() {
        Texture t = tex != null ? tex : ModArt.ready(art);
        if (t == null) return null;
        spr.myTexture = t;
        spr.w = w;
        spr.h = h;
        spr.u0 = u0; spr.v0 = v0; spr.u1 = u1; spr.v1 = v1;
        spr.additive = false;
        return spr;
    }

    @Override
    public Drawable getMiniDrawableObject() {
        return null;
    }

    @Override
    public Vector2 getPhysicDimension() {
        return phys;
    }

    /** Culling by the drawn size: long pieces would pop at the screen edges with the (smaller) physic circle. */
    @Override
    public Vector2 getDimToTestIfVisibleOnScreen() {
        float m = Math.max(w, h);
        vis.set(m, m);
        return vis;
    }

    @Override
    public boolean isColidable() {
        return !visualOnly && super.isColidable();
    }

    /** v33: the hull's mass from its drawn size (a cruiser ~200, a flagship ~1100). */
    static float massFor(float size) {
        return Math.max(20.0f, size * size / 2000.0f);
    }

    static final float MAX_DRIFT = 0.4f;   // speed units are per 10 ms: 40 world units a second at most

    /** v33: whatever pushed the piece since the last frame (hits, rams, blasts) only moves it a little. */
    @Override
    public void doPhysic(long j) {
        float dx = speed.x - lastVx, dy = speed.y - lastVy;
        if (dx != 0 || dy != 0) speed.set(lastVx + dx * 0.3f, lastVy + dy * 0.3f);
        float v2 = speed.x * speed.x + speed.y * speed.y;
        if (v2 > MAX_DRIFT * MAX_DRIFT) speed.multiply(MAX_DRIFT / (float) Math.sqrt(v2));
        super.doPhysic(j);
        lastVx = speed.x;
        lastVy = speed.y;
        if (visualOnly && System.currentTimeMillis() - born > lifeMs) {
            vanish();
        }
    }

    /** v33: a projectile hit gives (almost) no push. */
    @Override
    protected float applyRebound(Element o, int n) {
        if (!(o instanceof fr.testudo.spacecorsair.business.projectiles.Projectile)) return super.applyRebound(o, n);
        float vx = speed.x, vy = speed.y;
        float r = super.applyRebound(o, n);
        speed.set(vx + (speed.x - vx) * 0.1f, vy + (speed.y - vy) * 0.1f);
        return r;
    }

    private void vanish() {
        if (removed) return;
        removed = true;
        live.remove(this);
        if (visualOnly) ObjectRegistry.INSTANCE.game.currentLevel.toDeleteDrawOnly.add(this);
        else ObjectRegistry.INSTANCE.game.currentLevel.toDelete.add(this);
    }

    private static final Vector2 a = new Vector2(), b = new Vector2();

    @Override
    public void registerYourselfToDrawQueue() {
        Drawable d = getDrawableObject();
        if (d == null) return;
        long now = System.currentTimeMillis();
        float alpha = 1.0f;
        if (visualOnly) {
            float k = (now - born) / (float) Math.max(1, lifeMs);
            alpha = k > 0.75f ? Math.max(0, 1 - (k - 0.75f) / 0.25f) : 1.0f;
        }
        float hp = maxLife > 0 ? life / maxLife : 1;
        boolean burn = !preDrawn && !derelict && (cutTop || cutBottom);
        float tn = preDrawn ? 1.0f : burn ? Math.max(tint, 0.8f) : tint;   // the burn does the darkening near the cuts
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(position, false, spr, spin, false, alpha, tn, tn * 0.94f, tn * 0.9f);
        if (burn) {
            // scorched toward the cuts: the piece's silhouette again in near-black, fading out away from the break
            burnSpr.myTexture = spr.myTexture;
            burnSpr.w = w; burnSpr.h = h;
            burnSpr.u0 = u0; burnSpr.v0 = v0; burnSpr.u1 = u1; burnSpr.v1 = v1;
            burnSpr.additive = false;
            burnSpr.flat = true;
            burnSpr.edgeA = burnA;
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(position, false, burnSpr, spin, false, alpha * 0.85f, 0.07f, 0.05f, 0.04f);
            if (scorch == null) {
                scorch = new float[4];
                for (int i = 0; i < 2; i++) {               // two char marks on the hull's real width near a cut
                    boolean top = cutTop && (!cutBottom || i == 0);
                    float vv = top ? v0 + (v1 - v0) * 0.12f : v1 - (v1 - v0) * 0.12f;
                    float x0 = 0.4f, x1 = 0.6f;
                    if (ModArt.span(spr.myTexture, Math.min(0.999f, Math.max(0, vv)), sp) != null) { x0 = sp[0]; x1 = sp[1]; }
                    scorch[2 * i] = (x0 + (x1 - x0) * (0.3f + 0.4f * (float) Math.random()) - 0.5f) * w;
                    scorch[2 * i + 1] = (top ? -0.38f : 0.38f) * h;
                    scorchSize = Math.max(scorchSize, (x1 - x0) * w * 0.35f);
                }
            }
            for (int i = 0; i < 2; i++) {
                b.set(scorch[2 * i], scorch[2 * i + 1]).applyRotatation(Math.toRadians(spin)).add(position);
                float ss = Math.min(scorchSize, h * 0.5f);
                ModFx.spr("fx_scorch", b.x, b.y, ss, ss, spin + i * 97, 1, 1, 1, 0.8f * alpha, false);
            }
        }
        // torn hot edges along the cuts (cool down over ~20 s)
        float heat = derelict ? 0.25f : Math.max(0.25f, 1.0f - (now - born) / 20000.0f);
        Texture et = preDrawn ? null : ModArt.ready("wreck_edge");
        if (et != null) {
            if (cutTop) edge(et, v0, -h / 2, spin, heat, alpha, d.myTexture);
            if (cutBottom) edge(et, v1, h / 2, spin + 180, heat, alpha, d.myTexture);
        }
        // venting and sparks from the breach while hot, smoke when shot up
        if (now > nextVent && !derelict) {
            nextVent = now + 500 + (long) (Math.random() * 1600 / Math.max(0.3f, heat));
            float ly = cutTop ? -h / 2 : h / 2;
            b.set((float) (Math.random() - 0.5) * w * 0.6f, ly).applyRotatation(Math.toRadians(spin)).add(position);
            ModLive.fx("fx_vent_sheet", 4, 16, b.x, b.y, w * 0.3f, 900, 0.8f, 0.85f, 0.9f, true);
            if (Math.random() < heat) ModLive.fx("fx_sparks_sheet", 4, 16, b.x, b.y, w * 0.22f, 420, 1.0f, 0.8f, 0.45f, true);
        }
        if (hp < 0.5f && Math.random() < 0.06) {
            b.set((float) (Math.random() - 0.5) * w * 0.5f, (float) (Math.random() - 0.5) * h * 0.5f).applyRotatation(Math.toRadians(spin)).add(position);
            ModLive.fx("fx_smoke_sheet", 4, 16, b.x, b.y, w * 0.35f, 1500, 0.45f, 0.45f, 0.45f, true);
        }
    }

    private static final float[] sp = new float[2];

    /** Torn hot edge along a cut, as wide as the hull's visible row there (texture row profile). */
    private void edge(Texture et, float v, float ly, float rot, float heat, float alpha, Texture src) {
        float x0 = 0.3f, x1 = 0.7f;
        if (ModArt.span(src, Math.min(0.999f, Math.max(0, v)), sp) != null) { x0 = sp[0]; x1 = sp[1]; }
        float ew = (x1 - x0) * w;
        if (ew < 8) return;
        float lx = ((x0 + x1) / 2 - 0.5f) * w;
        float eh = Math.max(14.0f, Math.min(ew * 0.18f, w * 0.06f));
        a.set(lx, ly).applyRotatation(Math.toRadians(spin)).add(position);
        ModFx.sprTex(et, a.x, a.y, ew * 1.04f, eh, rot, 1, 0.75f + 0.25f * heat, 0.6f + 0.4f * heat, alpha, false, 0, 0, 1, 1);
    }

    @Override
    public void onDestroyed(boolean z) {
        if (removed) return;
        try {
            float s = Math.max(w, h);
            ModLive.fx("fx_explosion_big_sheet", 8, 64, position.x, position.y, s * 1.3f, 1100, 1.0f, 0.75f, 0.45f, true);
            debris(position, speed, s, 6);
            ObjectRegistry.INSTANCE.soundManager.playRandomExplode();
            if (z) ModLoot.fromWreck(this);
            if (derelict) ModDerelict.onPieceDestroyed(this, z);
        } catch (Throwable t) {
            // a wreck always goes away
        }
        live.remove(this);
        super.onDestroyed(false);
    }

    // ------------------------------------------------------------------ spawning
    static final ArrayList<ModWreck> live = new ArrayList<ModWreck>();
    static final int MAX = 36;

    /** Size class from the physic diameter: 0 small, 1 medium, 2 cruiser-size, 3 capital. */
    static int sizeClass(Element e) {
        if (ModTitan.isTitanClass(e) || ModCapitals.cap(e) != null) return 3;
        float p = e.getPhysicDimension() == null ? 0 : e.getPhysicDimension().x;
        if (p < 100) return 0;
        if (p < 300) return 1;
        if (p < 900) return 2;
        return 3;
    }

    private static int playerClass(PlayerShip ps) {
        ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
        int c = h != null ? h.cls : ModShips.originalClass(ps.shipSpec);
        if (c == ModShips.TITAN || c == ModShips.CAPITAL) return 3;
        if (c == ModShips.CRUISER || c == ModShips.BATTLECRUISER || c == ModShips.BATTLESHIP || c == ModShips.INDUSTRIAL) return 2;
        return c == ModShips.DESTROYER ? 1 : 0;
    }

    /** Smali hook at the start of Element.onDestroyed (every element, every cause). */
    public static void onDestroyed(Element e, boolean z) {
        if (e == null || e.removed || e instanceof ModWreck || e instanceof fr.testudo.spacecorsair.business.projectiles.Projectile) return;
        try {
            if (ObjectRegistry.INSTANCE.game.mapMode) return;
            if (e.isPlayer && e instanceof PlayerShip) {
                PlayerShip ps = (PlayerShip) e;
                if (ps.shipSpec == null) return;
                Drawable d = ps.getDrawableObject();
                int cls = playerClass(ps);
                String art = d == null ? null : ModArt.artOf(d.myTexture);
                if (ModLive.alienArt(art)) { spores(e, d); return; }
                if (cls >= 2 && d != null) breakUp(e, d, cls, true, 3800);
                else if (d != null) ModLive.fx("vfx_explosion_sheet", 8, 64, e.position.x, e.position.y, ModLive.sizeOf(d) * 1.6f, 900, 1, 0.8f, 0.5f, true);
                return;
            }
            boolean ship = e instanceof Ennemis || e instanceof fr.testudo.spacecorsair.business.world.civil.CivilShip;
            if (!ship || Mod.isDrone(e)) return;
            Drawable d = e.getDrawableObject();
            if (d == null || d.myTexture == null) return;
            String art = ModArt.artOf(d.myTexture);
            if (ModLive.alienArt(art) || e instanceof fr.testudo.spacecorsair.business.ennemis.AlienRat
                || e instanceof fr.testudo.spacecorsair.business.ennemis.UfoAlienShip) {
                spores(e, d);
                if (!(sizeClass(e) >= 2)) return;
                return;          // living hulls dissolve: no metal pieces
            }
            int cls = sizeClass(e);
            if (cls < 2) return;
            boolean elite = e instanceof Ennemis && ((Ennemis) e).elite;
            boolean boss = ModBoss.kindOf(e) >= 0;
            ModCapitals.Cap cap = ModCapitals.cap(e);
            ModWreck[] made = breakUpArt(e, d, cap != null && cap.f != null ? "wreck_cap_" + cap.f.key : art == null ? null : "wreck_" + art);
            if (made == null) made = breakUp(e, d, cls, false, 0);
            if (made != null) {
                for (ModWreck w : made) {
                    if (w == null) continue;
                    w.srcLevel = e.level;
                    w.srcClass = cls;
                    w.srcElite = elite;
                    w.srcBoss = boss;
                }
            }
        } catch (Throwable t) {
            // the stock death always happens
        }
    }

    /** v33 piece bands of the hand-drawn art (v ranges, overlapping so the jagged break is never clipped). */
    private static final float[][] BANDS2 = {{0, 0.56f}, {0.44f, 1}};
    private static final float[][] BANDS3 = {{0, 0.4f}, {0.3f, 0.7f}, {0.6f, 1}};

    /**
     * Hand-drawn wreck pieces <prefix>_a, _b (and _c): full-canvas images on the hull sprite's canvas, a = bow. Each piece
     * shows its band of the canvas at the hull's own anchor. Null when the art does not exist (cut the sprite instead).
     */
    private static ModWreck[] breakUpArt(Element e, Drawable d, String prefix) {
        if (prefix == null || ModArt.lazyTex(prefix + "_a") == null || ModArt.lazyTex(prefix + "_b") == null) return null;
        int n = ModArt.lazyTex(prefix + "_c") != null ? 3 : 2;
        float W, H;
        if (d instanceof ModFx.Sprite) { W = ((ModFx.Sprite) d).w; H = ((ModFx.Sprite) d).h; }
        else if (d.dimensions != null) { W = d.dimensions.x; H = d.dimensions.y; }
        else return null;
        float s = Math.max(W, H);
        ModLive.fx("fx_explosion_big_sheet", 8, 64, e.position.x, e.position.y, s * 1.35f, 1300, 1.0f, 0.8f, 0.5f, true);
        debris(e.position, e.speed, s, 8);
        boolean[] grp = new boolean[1];
        float[][] bands = n == 3 ? BANDS3 : BANDS2;
        ModWreck[] out = new ModWreck[n];
        for (int i = 0; i < n; i++) {
            ModWreck w = new ModWreck();
            w.group = grp;
            w.art = prefix + "_" + (char) ('a' + i);
            w.preDrawn = true;
            w.tint = 1.0f;
            w.u0 = 0; w.u1 = 1;
            w.v0 = bands[i][0]; w.v1 = bands[i][1];
            w.cutTop = i > 0;                     // vents at the break
            w.cutBottom = i < n - 1;
            w.w = W;
            w.h = H * (w.v1 - w.v0);
            place(w, e, H, s);
            out[i] = w;
            add(w);
        }
        return out;
    }

    /** Position, slow break-apart drift and mass of a piece cut from the hull e (band v0..v1 of a sprite H high). */
    private static void place(ModWreck w, Element e, float H, float size) {
        float ly = ((w.v0 + w.v1) / 2 - 0.5f) * H;
        a.set(0, ly).applyRotatation(Math.toRadians(e.spin));
        w.position.setSameAs(e.position).add(a);
        w.spin = e.spin;
        // apart along the long axis, plus a little of the hull's own drift and a slow tumble; heavier hulls drift slower
        float push = (0.25f + (float) Math.random() * 0.25f) * Math.min(1.0f, 400.0f / Math.max(400.0f, size) + 0.3f);
        float len = Math.max(1, (float) Math.sqrt(a.x * a.x + a.y * a.y));
        w.speed.set(e.speed.x * 0.3f + a.x / len * push, e.speed.y * 0.3f + a.y / len * push);
        float v2 = w.speed.x * w.speed.x + w.speed.y * w.speed.y;
        if (v2 > MAX_DRIFT * MAX_DRIFT) w.speed.multiply(MAX_DRIFT / (float) Math.sqrt(v2));
        w.spinSpeed = (float) (Math.random() - 0.5) * 0.05f;
        w.phys.set(Math.min(w.w, w.h) * 0.8f, Math.min(w.w, w.h) * 0.8f);
        w.mass = massFor(size);
        w.maxLife = Math.max(300.0f, e.maxLife * 0.2f);
        w.life = w.maxLife;
        w.level = e.level;
        w.updateSapCoords();
    }

    /** Metal chunks (debris_sheet cells) flung out from a point. */
    static void debris(Vector2 at, Vector2 v, float s, int n) {
        for (int i = 0; i < n; i++) {
            double ang = Math.random() * Math.PI * 2;
            float sp = s * (0.3f + (float) Math.random() * 0.6f);
            ModLive.chunk("debris_sheet", 4, 4, (int) (Math.random() * 16), at.x, at.y, s * (0.1f + (float) Math.random() * 0.1f), 1800,
                v.x * 100 + (float) Math.cos(ang) * sp, v.y * 100 + (float) Math.sin(ang) * sp);
        }
    }

    /** Spore dissolve for living hulls (no explosion debris). */
    static void spores(Element e, Drawable d) {
        float s = ModLive.sizeOf(d);
        ModLive.fx("fx_spore_sheet", 4, 16, e.position.x, e.position.y, s * 1.5f, 1300, 0.65f, 1.0f, 0.55f, true);
        ModLive.fx("fx_ichor_sheet", 4, 16, e.position.x, e.position.y, s * 0.9f, 800, 0.6f, 0.3f, 1.0f, true);
    }

    /** Cut the hull's sprite across its long axis into 2 (3 for capitals) pieces flying apart. */
    static ModWreck[] breakUp(Element e, Drawable d, int cls, boolean visualOnly, long lifeMs) {
        Texture t = d.myTexture;
        if (t == null || t.name <= 0) return null;
        float W, H;
        if (d instanceof ModFx.Sprite) { W = ((ModFx.Sprite) d).w; H = ((ModFx.Sprite) d).h; }
        else { W = d.dimensions.x; H = d.dimensions.y; }
        int n = cls >= 3 ? 3 : 2;
        float[] cuts = n == 2 ? new float[]{0, 0.44f + (float) Math.random() * 0.12f, 1}
            : new float[]{0, 0.3f + (float) Math.random() * 0.08f, 0.6f + (float) Math.random() * 0.08f, 1};
        ModWreck[] out = new ModWreck[n];
        boolean[] grp = new boolean[1];
        float s = Math.max(W, H);
        ModLive.fx("fx_explosion_big_sheet", 8, 64, e.position.x, e.position.y, s * 1.35f, 1300, 1.0f, 0.8f, 0.5f, true);
        debris(e.position, e.speed, s, 8);
        for (int i = 0; i < n; i++) {
            ModWreck w = new ModWreck();
            w.group = grp;
            w.tex = t;
            w.u0 = 0; w.u1 = 1;
            w.v0 = cuts[i]; w.v1 = cuts[i + 1];
            w.cutTop = i > 0;
            w.cutBottom = i < n - 1;
            w.w = W;
            w.h = H * (w.v1 - w.v0);
            w.burnA[0] = w.cutTop ? 0.9f : 0.0f;          // burnt black at a cut, the far end untouched
            w.burnA[1] = w.cutBottom ? 0.9f : 0.0f;
            place(w, e, H, s);
            w.visualOnly = visualOnly;
            w.lifeMs = lifeMs;
            out[i] = w;
            add(w);
        }
        return out;
    }

    static void add(ModWreck w) {
        w.lastVx = w.speed.x;
        w.lastVy = w.speed.y;
        if (w.visualOnly) {
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(w);
            return;
        }
        live.add(w);
        if (live.size() > MAX) {
            for (int i = 0; i < live.size() && live.size() > MAX; i++) {
                ModWreck old = live.get(i);
                if (old.derelict) continue;
                old.vanish();
                i--;
            }
        }
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(w);
    }

    /** Sector change (ModCaps.tick): the previous level's pieces are gone with it. */
    static void onLevel() {
        live.clear();
    }
}
