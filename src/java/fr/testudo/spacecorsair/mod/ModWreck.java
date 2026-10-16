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
    private final Vector2 phys = new Vector2(), vis = new Vector2();
    private final ModFx.Sprite spr = new ModFx.Sprite();
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

    @Override
    public void doPhysic(long j) {
        super.doPhysic(j);
        if (visualOnly && System.currentTimeMillis() - born > lifeMs) {
            vanish();
        }
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
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(position, false, spr, spin, false, alpha, tint, tint * 0.94f, tint * 0.9f);
        // torn hot edges along the cuts (cool down over ~20 s)
        float heat = derelict ? 0.25f : Math.max(0.25f, 1.0f - (now - born) / 20000.0f);
        Texture et = ModArt.ready("wreck_edge");
        if (et != null) {
            float eh = Math.max(24.0f, w * 0.11f);
            if (cutTop) {
                a.set(0, -h / 2).applyRotatation(Math.toRadians(spin)).add(position);
                ModFx.sprTex(et, a.x, a.y, w * 1.02f, eh, spin, 1, 0.75f + 0.25f * heat, 0.6f + 0.4f * heat, alpha, false, 0, 0, 1, 1);
            }
            if (cutBottom) {
                a.set(0, h / 2).applyRotatation(Math.toRadians(spin)).add(position);
                ModFx.sprTex(et, a.x, a.y, w * 1.02f, eh, spin + 180, 1, 0.75f + 0.25f * heat, 0.6f + 0.4f * heat, alpha, false, 0, 0, 1, 1);
            }
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
            ModWreck[] made = breakUp(e, d, cls, false, 0);
            if (made != null) {
                boolean elite = e instanceof Ennemis && ((Ennemis) e).elite;
                boolean boss = ModBoss.kindOf(e) >= 0;
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
            float ly = ((w.v0 + w.v1) / 2 - 0.5f) * H;
            a.set(0, ly).applyRotatation(Math.toRadians(e.spin));
            w.position.setSameAs(e.position).add(a);
            w.spin = e.spin;
            // apart along the long axis, plus the hull's own drift and a tumble
            float push = 0.35f + (float) Math.random() * 0.35f;
            float len = Math.max(1, (float) Math.sqrt(a.x * a.x + a.y * a.y));
            w.speed.set(e.speed.x * 0.6f + a.x / len * push, e.speed.y * 0.6f + a.y / len * push);
            w.spinSpeed = (float) (Math.random() - 0.5) * 0.12f;
            w.phys.set(Math.min(W, w.h) * 0.8f, Math.min(W, w.h) * 0.8f);
            w.maxLife = Math.max(300.0f, e.maxLife * 0.2f);
            w.life = w.maxLife;
            w.level = e.level;
            w.visualOnly = visualOnly;
            w.lifeMs = lifeMs;
            w.updateSapCoords();
            out[i] = w;
            add(w);
        }
        return out;
    }

    static void add(ModWreck w) {
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
