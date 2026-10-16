package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.List;

/**
 * v30 derelict sites (ChatGPT derelicts.json, 12 sites with a lore reason each). A site is a cluster of pre-broken hulls
 * a few thousand units off the sector's main station: physical, lootable when the player shoots them apart (ModLoot,
 * derelict odds). Entering the sector shows the site's entry line; flying close shows its scan text. A fully looted
 * site is back after RESPAWN_MS.
 */
public final class ModDerelict {
    private ModDerelict() {}

    static final long RESPAWN_MS = 3L * 3600 * 1000;
    private static final ArrayList<ModWreck> pieces = new ArrayList<ModWreck>();
    private static int site = -1;
    private static boolean scanned;
    private static int scanTick;
    private static final Vector2 anchor = new Vector2();

    private static String txt(String[][] t, int i) {
        return t[ModLang.spanish() ? 1 : 0][i];
    }

    private static float sizeOf(String art) {
        for (ModShips.Hull h : ModShips.HULLS) if (h != null && art.equals(h.art)) return h.size * 1.6f;
        if (art.equals("orig_croiseur_gentil")) return 900;
        if (art.equals("orig_alien_blatte")) return 700;
        if (art.equals("orig_alien_rat0")) return 170;
        if (art.equals("orig_police")) return 280;
        return 260;
    }

    /** Sector change (ModCaps.tick). */
    static void onLevel(PlayerShip ps) {
        pieces.clear();
        site = -1;
        pending = 0;
        playerHit = false;
        scanned = false;
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            if (id == null) return;
            for (int i = 0; i < ModV30Data.SITE_SECTOR.length; i++) {
                if (!ModV30Data.SITE_SECTOR[i].equals(id.name())) continue;
                SharedPreferences p = ModQol.prefs();
                long done = p == null ? 0 : p.getLong("derelict_done_" + i, 0);
                if (done > 0 && System.currentTimeMillis() - done < RESPAWN_MS) return;
                site = i;
                pending = 90;          // placed once the new sector's station is in the level (ModCaps runs before commit)
                Mod.floatText(ps, txt(ModV30Data.SITE_ENTRY_LINE, i), 0.75f, 0.85f, 1.0f);
                ModQol.post(txt(ModV30Data.SITE_EVENT, i) + ": " + txt(ModV30Data.SITE_HISTORY, i));
                return;
            }
        } catch (Throwable t) {
            // no derelicts this visit
        }
    }

    private static int pending;      // frames left to wait for a station before placing at the sector centre

    private static boolean station() {
        List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        for (int k = 0; k < els.size(); k++) {
            if (els.get(k) instanceof Station) { anchor.setSameAs(els.get(k).position); return true; }
        }
        return false;
    }

    private static void place(int i, LevelId id) {
        anchor.set(0, 0);
        station();
        double dir = ((id.name().hashCode() & 0x7fffffff) % 360) * Math.PI / 180.0;
        anchor.add((float) Math.cos(dir) * 3400, (float) Math.sin(dir) * 3400);
        java.util.Random rnd = new java.util.Random(id.name().hashCode() * 31L + i);
        String[] hulls = ModV30Data.SITE_HULLS[i];
        int[] counts = ModV30Data.SITE_COUNTS[i];
        int lvl = Math.max(1, Math.max(id.levelMax, ObjectRegistry.INSTANCE.game.playerInfo.level));
        int n = 0;
        for (int h = 0; h < hulls.length; h++) {
            for (int c = 0; c < counts[h]; c++, n++) {
                float sz = sizeOf(hulls[h]);
                double a = rnd.nextDouble() * Math.PI * 2;
                float r = 250 + n * 330 + rnd.nextFloat() * 200;
                float x = anchor.x + (float) Math.cos(a) * r, y = anchor.y + (float) Math.sin(a) * r;
                broken(hulls[h], sz, x, y, rnd.nextFloat() * 360, i, lvl, rnd);
                ModArt.ready(hulls[h]);   // decode in the background
            }
        }
    }

    /** One pre-broken hull: two still pieces with a gap, slowly turning. */
    private static void broken(String art, float size, float x, float y, float spin, int siteIdx, int lvl, java.util.Random rnd) {
        float cut = 0.4f + rnd.nextFloat() * 0.2f;
        float gap = size * (0.06f + rnd.nextFloat() * 0.08f);
        for (int k = 0; k < 2; k++) {
            ModWreck w = new ModWreck();
            w.art = art;
            w.u0 = 0; w.u1 = 1;
            w.v0 = k == 0 ? 0 : cut;
            w.v1 = k == 0 ? cut : 1;
            w.cutTop = k == 1;
            w.cutBottom = k == 0;
            w.w = size;
            w.h = size * (w.v1 - w.v0);
            float ly = ((w.v0 + w.v1) / 2 - 0.5f) * size + (k == 0 ? -gap : gap);
            Vector2 o = new Vector2(0, ly).applyRotatation(Math.toRadians(spin));
            w.position.set(x + o.x, y + o.y);
            w.spin = spin + (k == 0 ? -6 : 7) * rnd.nextFloat();
            w.spinSpeed = (rnd.nextFloat() - 0.5f) * 0.01f;
            w.speed.set(0, 0);
            w.getPhysicDimension().set(Math.min(size, w.h) * 0.8f, Math.min(size, w.h) * 0.8f);
            w.maxLife = 1500 + lvl * 250;
            w.life = w.maxLife;
            w.level = lvl;
            w.srcLevel = lvl;
            w.srcClass = size >= 500 ? 3 : 2;
            w.derelict = true;
            w.derelictSite = siteIdx;
            w.tint = 0.5f;
            w.updateSapCoords();
            pieces.add(w);
            ModWreck.add(w);
        }
    }

    /** Emulator test (ModDev.testV30): site n built around the player in the current sector. */
    static void testPlace(PlayerShip ps, int n) {
        if (n < 0 || n >= ModV30Data.SITE_SECTOR.length) return;
        LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
        int lvl = Math.max(1, ObjectRegistry.INSTANCE.game.playerInfo.level);
        java.util.Random rnd = new java.util.Random(n);
        String[] hulls = ModV30Data.SITE_HULLS[n];
        int[] counts = ModV30Data.SITE_COUNTS[n];
        int k = 0;
        site = n;
        scanned = false;
        for (int h = 0; h < hulls.length; h++) {
            for (int c = 0; c < counts[h]; c++, k++) {
                float sz = sizeOf(hulls[h]);
                double a = k * 1.1 + 0.4;
                float r = 700 + k * 260;
                broken(hulls[h], sz, ps.position.x + (float) Math.cos(a) * r, ps.position.y + (float) Math.sin(a) * r, rnd.nextFloat() * 360, n, lvl, rnd);
                ModArt.ready(hulls[h]);
            }
        }
        Mod.floatText(ps, txt(ModV30Data.SITE_ENTRY_LINE, n), 0.75f, 0.85f, 1.0f);
    }

    /** Per frame (ModCaps.tick): the scan text when the player first flies close. */
    static void tick(PlayerShip ps, long j) {
        if (pending > 0 && site >= 0) {
            pending--;
            try {
                if (station() || pending == 0) {
                    pending = 0;
                    place(site, ObjectRegistry.INSTANCE.game.currentLevel.id);
                }
            } catch (Throwable t) {
                pending = 0;
            }
            return;
        }
        if (site < 0 || scanned || ps == null) return;
        scanTick -= j;
        if (scanTick > 0) return;
        scanTick = 400;
        for (int i = 0; i < pieces.size(); i++) {
            ModWreck w = pieces.get(i);
            if (!w.removed && w.position.distance(ps.position) < 900) {
                scanned = true;
                Mod.floatText(ps, (ModLang.spanish() ? "ESCANEO: " : "SCAN: ") + txt(ModV30Data.SITE_SCAN_TEXT, site), 0.6f, 0.9f, 1.0f);
                return;
            }
        }
    }

    /** A derelict piece went down; when the player has cleared the whole site it rests for RESPAWN_MS. */
    private static boolean playerHit;

    static void onPieceDestroyed(ModWreck w, boolean byPlayer) {
        pieces.remove(w);
        if (byPlayer) playerHit = true;
        if (site < 0 || !playerHit) return;
        for (int i = 0; i < pieces.size(); i++) if (!pieces.get(i).removed) return;
        SharedPreferences p = ModQol.prefs();
        if (p != null) p.edit().putLong("derelict_done_" + site, System.currentTimeMillis()).apply();
    }
}
