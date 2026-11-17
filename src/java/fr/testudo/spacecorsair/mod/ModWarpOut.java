package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.display.RenderElement;
import fr.testudo.spacecorsair.engine.RenderQueue;
import fr.testudo.spacecorsair.display.ShockWave;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * Audit A4 / B4 (owner 2026-11-17): leftover boss illusions, brood and flagship mirror ships warp out over 3 seconds:
 * they stop attacking, fade with a warp effect, then are removed.
 */
final class ModWarpOut {
    private ModWarpOut() {}

    static final long MS = 3000;
    private static final Map<Element, Long> out = new WeakHashMap<Element, Long>();

    static void start(Ennemis e) {
        if (e == null || e.removed) return;
        synchronized (out) {
            if (out.containsKey(e)) return;
            out.put(e, System.currentTimeMillis());
        }
        try {
            e.bulletDamage = 0;
            e.invincible = true;
            e.nextShootAlowed = Long.MAX_VALUE / 2;
            wave(e, 0.5f);
        } catch (Throwable t) {
            // effect only
        }
    }

    static void startAll(java.util.List<? extends Ennemis> l) {
        if (l == null) return;
        for (int i = 0; i < l.size(); i++) start(l.get(i));
    }

    static boolean active(Element e) {
        synchronized (out) { return out.containsKey(e); }
    }

    /** Game thread, every frame: remove the ones whose 3 s are up. */
    static void tick() {
        if (out.isEmpty()) return;
        long now = System.currentTimeMillis();
        ArrayList<Element> done = new ArrayList<Element>();
        synchronized (out) {
            for (Iterator<Map.Entry<Element, Long>> it = out.entrySet().iterator(); it.hasNext(); ) {
                Map.Entry<Element, Long> en = it.next();
                Element e = en.getKey();
                if (e == null) { it.remove(); continue; }
                if (e.removed) { e.invincible = false; it.remove(); continue; }   // S1: the pooled object must not stay invincible
                if (e instanceof Ennemis) ((Ennemis) e).nextShootAlowed = Long.MAX_VALUE / 2;
                if (now - en.getValue() >= MS) { done.add(e); it.remove(); }
            }
        }
        for (Element e : done) {
            try { e.invincible = false; wave(e, 1f); e.remove(); } catch (Throwable t) { /* ignore */ }   // S1: cleared before it goes back to the pool
        }
    }

    /** Sector change: the sector's objects go anyway. */
    static void clear() {
        synchronized (out) {
            for (Element e : out.keySet()) if (e != null) e.invincible = false;   // S1: these go back to the pool too
            out.clear();
        }
    }

    /** ModLive.drawPlain: fades the queue entries [from, to) that the element just added. */
    static void fade(Element e, int from) {
        Long t0;
        synchronized (out) { t0 = out.get(e); }
        if (t0 == null || from < 0) return;
        float a = 1f - Math.min(1f, (System.currentTimeMillis() - t0) / (float) MS);
        try {
            if (fA == null) { fA = RenderElement.class.getDeclaredField("a"); fA.setAccessible(true); fIdx = RenderQueue.class.getDeclaredField("waitingQueueIndex"); fIdx.setAccessible(true); fSize = RenderQueue.class.getDeclaredField("queueSize"); fSize.setAccessible(true); }
            RenderQueue q = ObjectRegistry.INSTANCE.renderQueue;
            int to = fSize.getInt(q);
            RenderElement[] arr = q.objectQueue[fIdx.getInt(q)];
            for (int i = from; i < to && i < arr.length; i++) if (arr[i] != null) fA.setFloat(arr[i], fA.getFloat(arr[i]) * a);
        } catch (Throwable t) {
            // no fade: still removed at 3 s
        }
    }

    static int mark() {
        try {
            if (fSize == null) { fSize = RenderQueue.class.getDeclaredField("queueSize"); fSize.setAccessible(true); }
            return fSize.getInt(ObjectRegistry.INSTANCE.renderQueue);
        } catch (Throwable t) {
            return -1;
        }
    }

    private static Field fA, fIdx, fSize;

    private static void wave(Element e, float k) {
        ShockWave w = GamePools.newShockWave().init(e.position, 40.0f, 260.0f * k, 600.0f);
        w.r = 0.45f; w.g = 0.7f; w.b = 1.0f;
        ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(w);
    }
}
