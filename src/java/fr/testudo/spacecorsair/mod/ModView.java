package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * 2026-11-18 (owner 11:40: small ships kite big hulls from outside the screen): enemies that fight the player, police
 * included, stay inside the player's visible screen. The visible half-size follows the camera zoom (big hulls see
 * farther): GameRenderer looks from camZ = (screen height / 2) / tan(fov / 2) at the z = 0 plane and the world is drawn
 * at z = -curZDecal, so the half-height in world units is (camZ + curZDecal) * tan(fov / 2).
 */
public final class ModView {
    private ModView() {}

    /** Kept inside this share of the visible half-size (a margin so the whole hull and its shots show). */
    static final float INSIDE = 0.85f;
    private static long at;
    private static float halfW = 1e9f, halfH = 1e9f;

    private static void refresh() {
        long now = System.currentTimeMillis();
        if (now - at < 250) return;
        at = now;
        try {
            float t = (float) Math.tan(GameRenderer.fov_radians / 2.0f);
            float h = (GameRenderer.camZ + ObjectRegistry.INSTANCE.camera.curZDecal) * t;
            if (t > 0 && h > 100) { halfH = h; halfW = h * Math.max(0.3f, GameRenderer.aspect); }
        } catch (Throwable x) {
            halfW = halfH = 1e9f;   // renderer not ready: no limit
        }
    }

    /** Smaller visible half-size (world units): the radius an enemy can sit at and stay on screen in every direction. */
    static float radius() {
        refresh();
        return Math.min(halfW, halfH) * INSIDE;
    }

    /** True when {@code p} is outside the visible screen (with the INSIDE margin, minus {@code pad} for a big hull). */
    static boolean outside(Vector2 p, float pad) {
        refresh();
        Vector2 c;
        try { c = ObjectRegistry.INSTANCE.camera.centerPosition; } catch (Throwable x) { return false; }
        if (c == null) return false;
        return Math.abs(p.x - c.x) > halfW * INSIDE - pad || Math.abs(p.y - c.y) > halfH * INSIDE - pad;
    }

    static boolean outside(Element e) { return e != null && outside(e.position, 0); }
}
