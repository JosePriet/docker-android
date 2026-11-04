package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.Random;

/**
 * v44 (owner 2026-11-04 13:57): refits get their own station screen instead of a pop-up. The left half is a dock bay
 * with the hull at its current form; buying a level sends gantry arms in to weld it, and every 2 levels (a new stage)
 * the hull is rebuilt into its next form under a scan line. The right half shows level, stage pips, gains, cost and
 * a silhouette of the next form. Same ModV35.summary / buy as the old panel (ModRefitPanel stays as the fallback).
 */
public final class ModRefitScreen {
    private ModRefitScreen() {}

    public static void show(Activity a) {
        try {
            if (ModV35.summary() == null || ModV35.currentShip() == null) { ModRefitPanel.show(a); return; }
            final Dialog d = new Dialog(a, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
            Bay bay = new Bay(a, d);
            d.setContentView(bay);
            d.show();
        } catch (Throwable t) {
            ModRefitPanel.show(a);
        }
    }

    static final int BG = 0xFF050B16, CYAN = 0xFF6AD0FF, GOLD = 0xFFE8B84A, TEXT = 0xFFB0C4DA, DIM = 0xFF7F8EA0, EDGE = 0xFF24384F,
        PANEL = 0xCC0A1626, RED = 0xFFFF6B6B, WHITE = 0xFFFFFFFF;
    static final long LEVEL_MS = 2400, STAGE_MS = 4600;
    static final String[] ROMAN = {"0", "I", "II", "III", "IV", "V"};

    static final class Bay extends View {
        final Activity act;
        final Dialog dlg;
        final float dp;
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        final TextPaint tp = new TextPaint(Paint.ANTI_ALIAS_FLAG);
        final Random rnd = new Random();
        final RectF refitBtn = new RectF(), closeBtn = new RectF();
        SpaceObjectType ship;
        ModShips.Hull hull;
        String name, status;
        long statusUntil;
        String[] rf;
        Bitmap cur, old, next;            // current form, the form being replaced (anim), next form preview
        String curArt, nextArt;
        Bitmap emblem, crest;             // v44 b (owner 14:19): faction emblem behind the hull, hull crest (crest_<art>, GPT art) in the bay
        int nextAt;                       // refit level of the next form, 0 = none
        // animation
        long animStart, animMs;
        boolean stageAnim;
        int animLevel, animStage;
        final float[][] weld = new float[48][2];   // opaque hull points, bitmap-normalized
        int weldN;
        final float[][] edge = new float[3][2];    // hull edge (left, right) at the 3 gantry rows, bitmap-normalized
        // particles: x, y, vx, vy, life, max
        final float[][] spark = new float[160][6];
        long lastFrame;
        final long born = System.currentTimeMillis();

        Bay(Activity a, Dialog d) {
            super(a);
            act = a;
            dlg = d;
            dp = a.getResources().getDisplayMetrics().density;
            tp.setTypeface(Typeface.DEFAULT_BOLD);
            setBackgroundColor(BG);
            reload();
        }

        void reload() {
            rf = ModV35.summary();
            ship = ModV35.currentShip();
            hull = ModShips.hull(ship);
            name = ModShips.label(ship);
            if (name == null) { try { name = ship.getLocalizedLabel(); } catch (Throwable e) { name = ""; } }
            int lv = level();
            if (emblem == null) {
                String fk = ModShips.factionKey(hull);
                emblem = bitmap(fk.length() > 0 ? "emblem_" + fk : "emblem_independent");
                if (hull != null && ModArt.assetExists("crest_" + hull.art)) crest = bitmap("crest_" + hull.art);
            }
            String ca = hull == null ? null : ModV35.stageArt(hull, ModV35.stage(lv));
            if (ca == null || !ca.equals(curArt)) {
                curArt = ca;
                cur = bitmap(ca);
                if (cur == null) cur = stockBitmap();
                sampleWeld(cur);
            }
            nextAt = 0;
            nextArt = null;
            next = null;
            if (hull != null) {
                for (int s = ModV35.stage(lv) + 1; s <= ModV35.STAGES; s++) {
                    String n = ModV35.stageArt(hull, s);
                    if (n != null && !n.equals(ca)) { nextArt = n; nextAt = 2 * s - 1; break; }
                }
                if (nextArt != null) next = bitmap(nextArt);
            }
        }

        int level() {
            return ModV35.level(ship);
        }

        Bitmap bitmap(String n) {
            return n == null ? null : ModArt.decode(getContext(), n, 512);
        }

        Bitmap stockBitmap() {
            try {
                return android.graphics.BitmapFactory.decodeResource(getResources(), ship.getDrawableId());
            } catch (Throwable e) {
                return null;
            }
        }

        void sampleWeld(Bitmap b) {
            weldN = 0;
            for (int j = 0; j < 3; j++) { edge[j][0] = 0.3f; edge[j][1] = 0.7f; }
            if (b == null) return;
            for (int j = 0; j < 3; j++) {   // the gantry clamps meet the hull at its edge
                int y = (int) (b.getHeight() * (0.25f + 0.25f * j));
                int l = -1, r = -1;
                for (int x = 0; x < b.getWidth(); x++) if ((b.getPixel(x, y) >>> 24) > 128) { if (l < 0) l = x; r = x; }
                if (l >= 0) { edge[j][0] = l / (float) b.getWidth(); edge[j][1] = r / (float) b.getWidth(); }
            }
            for (int k = 0; k < 600 && weldN < weld.length; k++) {
                int x = rnd.nextInt(b.getWidth()), y = rnd.nextInt(b.getHeight());
                if ((b.getPixel(x, y) >>> 24) > 160) {
                    weld[weldN][0] = x / (float) b.getWidth();
                    weld[weldN][1] = y / (float) b.getHeight();
                    weldN++;
                }
            }
        }

        // ------------------------------------------------------------------ buying
        boolean animating() {
            return animStart > 0 && System.currentTimeMillis() - animStart < animMs;
        }

        void refit() {
            if (animating() || rf == null || rf[2].length() == 0) return;
            int before = level();
            int sBefore = ModV35.stage(before);
            Bitmap was = cur;
            String wasArt = curArt;
            String msg = ModV35.buy();
            ModDev.ev("refitscreen", String.valueOf(msg));
            try {   // the station's credit counter shows the new balance at once
                if (act instanceof fr.testudo.spacecorsair.activity.StationActivity) ((fr.testudo.spacecorsair.activity.StationActivity) act).updateTexts();
            } catch (Throwable t) { /* refreshes on the next screen */ }
            int after = level();
            if (after <= before) {
                status = msg != null ? msg : ModLang.tr("Refit failed.");
                statusUntil = System.currentTimeMillis() + 3500;
                return;
            }
            reload();
            animLevel = after;
            animStage = ModV35.stage(after);
            stageAnim = animStage > sBefore && curArt != null && !curArt.equals(wasArt) && was != null;
            old = stageAnim ? was : null;
            animMs = stageAnim ? STAGE_MS : LEVEL_MS;
            animStart = System.currentTimeMillis();
            ModSound.play(stageAnim ? "warp_in" : "repair", 0.8f, stageAnim ? 0.8f : 1.0f, 300);
            status = null;
        }

        @Override
        public boolean onTouchEvent(MotionEvent e) {
            if (e.getAction() == MotionEvent.ACTION_UP) {
                float x = e.getX(), y = e.getY();
                if (closeBtn.contains(x, y)) { dlg.dismiss(); return true; }
                if (refitBtn.contains(x, y)) { refit(); return true; }
            }
            return true;
        }

        // ------------------------------------------------------------------ drawing
        @Override
        protected void onDraw(Canvas c) {
            long now = System.currentTimeMillis();
            float dt = lastFrame == 0 ? 0.016f : Math.min(0.05f, (now - lastFrame) / 1000f);
            lastFrame = now;
            int W = getWidth(), H = getHeight();
            boolean land = W > H;
            RectF bay = land ? new RectF(0, 0, W * 0.56f, H) : new RectF(0, 0, W, H * 0.5f);
            RectF info = land ? new RectF(W * 0.56f, 0, W, H) : new RectF(0, H * 0.5f, W, H);
            drawBay(c, bay, now, dt);
            drawInfo(c, info, now);
            postInvalidateDelayed(16);
        }

        void drawBay(Canvas c, RectF r, long now, float dt) {
            // floor grid and spotlight
            p.setShader(null);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(1);
            p.setColor(0x1A6AD0FF);
            float step = 32 * dp, off = ((now - born) / 40f) % step;
            for (float x = r.left; x < r.right; x += step) c.drawLine(x, r.top, x, r.bottom, p);
            for (float y = r.top - step + off; y < r.bottom; y += step) c.drawLine(r.left, y, r.right, y, p);
            p.setStyle(Paint.Style.FILL);
            p.setShader(new RadialGradient(r.centerX(), r.centerY(), Math.max(1, r.height() * 0.55f), 0x3A2A6A9A, 0x00050B16, Shader.TileMode.CLAMP));
            c.drawRect(r, p);
            p.setShader(null);
            // bay frame corners
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(2 * dp);
            p.setColor(0x806AD0FF);
            float m = 12 * dp, L = 28 * dp;
            c.drawLine(r.left + m, r.top + m, r.left + m + L, r.top + m, p); c.drawLine(r.left + m, r.top + m, r.left + m, r.top + m + L, p);
            c.drawLine(r.right - m, r.top + m, r.right - m - L, r.top + m, p); c.drawLine(r.right - m, r.top + m, r.right - m, r.top + m + L, p);
            c.drawLine(r.left + m, r.bottom - m, r.left + m + L, r.bottom - m, p); c.drawLine(r.left + m, r.bottom - m, r.left + m, r.bottom - m - L, p);
            c.drawLine(r.right - m, r.bottom - m, r.right - m - L, r.bottom - m, p); c.drawLine(r.right - m, r.bottom - m, r.right - m, r.bottom - m - L, p);
            p.setStyle(Paint.Style.FILL);
            // the faction emblem behind the hull and the hull's crest in the bay corner, slowly breathing
            float br = 0.5f + 0.5f * (float) Math.sin((now - born) / 1800.0);
            if (crest != null) {
                float cs = r.height() * 0.42f;
                p.setAlpha((int) (28 + 14 * br));
                c.drawBitmap(crest, null, new RectF(r.left + 18 * dp, r.top + 18 * dp, r.left + 18 * dp + cs, r.top + 18 * dp + cs), p);
                p.setAlpha(255);
            }
            if (emblem != null) {
                float es = Math.min(r.width(), r.height()) * 0.78f;
                RectF ed = new RectF(r.centerX() - es / 2, r.centerY() - es / 2, r.centerX() + es / 2, r.centerY() + es / 2);
                c.save();
                c.rotate((now - born) / 400f % 360, r.centerX(), r.centerY());   // a slow ring turn
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(1.5f * dp);
                p.setColor(0x306AD0FF);
                c.drawCircle(r.centerX(), r.centerY(), es * 0.56f, p);
                for (int i = 0; i < 24; i++) {
                    double a = i * Math.PI / 12;
                    float r1 = es * 0.56f, r2 = es * (i % 3 == 0 ? 0.6f : 0.58f);
                    c.drawLine(r.centerX() + (float) Math.cos(a) * r1, r.centerY() + (float) Math.sin(a) * r1, r.centerX() + (float) Math.cos(a) * r2, r.centerY() + (float) Math.sin(a) * r2, p);
                }
                p.setStyle(Paint.Style.FILL);
                c.restore();
                p.setAlpha((int) (34 + 18 * br));
                c.drawBitmap(emblem, null, ed, p);
                p.setAlpha(255);
            }
            if (cur == null) return;

            float t = animating() ? (now - animStart) / (float) animMs : -1;
            float k = Math.min(r.width() * 0.78f / cur.getWidth(), r.height() * 0.86f / cur.getHeight());
            float bob = (float) Math.sin((now - born) / 900.0) * 3 * dp;
            float sw = cur.getWidth() * k, sh = cur.getHeight() * k;
            RectF dst = new RectF(r.centerX() - sw / 2, r.centerY() - sh / 2 + bob, r.centerX() + sw / 2, r.centerY() + sh / 2 + bob);

            // gantry arms: out at rest, in while welding
            float in = t < 0 ? 0 : t < 0.15f ? t / 0.15f : t > 0.88f ? Math.max(0, (1 - t) / 0.12f) : 1;
            in = in * in * (3 - 2 * in);
            drawArms(c, r, dst, in);

            // halo
            float pulse = 0.5f + 0.5f * (float) Math.sin((now - born) / 600.0);
            drawTinted(c, cur, grow(dst, 1.035f), CYAN, (int) (40 + 30 * pulse));

            if (t >= 0 && stageAnim && old != null) {
                drawStageMorph(c, dst, r, t);
            } else {
                p.setColorFilter(null);
                p.setAlpha(255);
                c.drawBitmap(cur, null, dst, p);
                if (t >= 0) drawLevelPulse(c, dst, t);
                else drawIdleScan(c, dst, now);
            }

            // sparks from the weld points while the arms are in
            if (t >= 0 && t < 0.85f && weldN > 0) {
                int n = stageAnim ? 6 : 4;
                for (int i = 0; i < n; i++) {
                    float[] w = weld[rnd.nextInt(weldN)];
                    emit(dst.left + w[0] * dst.width(), dst.top + w[1] * dst.height(), 3);
                }
            }
            drawSparks(c, dt);

            // banner
            if (t >= 0) {
                float bt = stageAnim ? (t - 0.72f) / 0.28f : (t - 0.45f) / 0.55f;
                if (bt > 0) {
                    float a = bt < 0.2f ? bt / 0.2f : bt > 0.8f ? (1 - bt) / 0.2f : 1;
                    String s = stageAnim ? ModLang.tr("NEW FORM: STAGE ") + ROMAN[Math.min(5, animStage)] : ModLang.tr("REFIT LEVEL ") + animLevel;
                    tp.setTextSize(stageAnim ? 26 * dp : 20 * dp);
                    tp.setColor(stageAnim ? GOLD : CYAN);
                    tp.setAlpha((int) (255 * Math.max(0, Math.min(1, a))));
                    tp.setShadowLayer(8 * dp, 0, 0, stageAnim ? 0xFFFF9A2A : 0xFF2A9AFF);
                    float tw = tp.measureText(s);
                    c.drawText(s, r.centerX() - tw / 2, r.bottom - 36 * dp, tp);
                    tp.setShadowLayer(0, 0, 0, 0);
                }
            }
        }

        void drawArms(Canvas c, RectF r, RectF dst, float in) {
            p.setStyle(Paint.Style.FILL);
            for (int side = -1; side <= 1; side += 2) {
                for (int j = 0; j < 3; j++) {
                    float y = dst.top + dst.height() * (0.25f + 0.25f * j);
                    float rest = side < 0 ? r.left + 14 * dp : r.right - 14 * dp;
                    float reach = side < 0 ? dst.left + dst.width() * edge[j][0] - 4 * dp : dst.left + dst.width() * edge[j][1] + 4 * dp;
                    float tip = rest + (reach - rest) * in;
                    p.setColor(0xFF1B2A3C);
                    float th = 7 * dp;
                    c.drawRect(Math.min(rest, tip), y - th / 2, Math.max(rest, tip), y + th / 2, p);
                    p.setColor(0xFF3A5068);
                    c.drawRect(Math.min(rest, tip), y - th / 2, Math.max(rest, tip), y - th / 2 + 2 * dp, p);
                    // clamp head with a hot tip
                    p.setColor(0xFF2A3C52);
                    c.drawRect(tip - 6 * dp, y - 9 * dp, tip + 6 * dp, y + 9 * dp, p);
                    if (in > 0.95f) {
                        p.setColor(0xFFFFE6A0);
                        c.drawCircle(tip + side * -7 * dp, y, (2.5f + rnd.nextFloat() * 2) * dp, p);
                    }
                }
            }
        }

        void drawIdleScan(Canvas c, RectF dst, long now) {
            float u = ((now - born) % 4000) / 4000f;
            float y = dst.top + dst.height() * u;
            p.setShader(new LinearGradient(0, y - 18 * dp, 0, y, 0x006AD0FF, 0x406AD0FF, Shader.TileMode.CLAMP));
            c.drawRect(dst.left, y - 18 * dp, dst.right, y, p);
            p.setShader(null);
        }

        void drawLevelPulse(Canvas c, RectF dst, float t) {
            // a cyan band climbs the hull, a gold flash on completion
            float u = Math.min(1, t / 0.75f);
            float y = dst.bottom - dst.height() * u;
            c.save();
            c.clipRect(dst.left, y - 26 * dp, dst.right, y + 26 * dp);
            drawTinted(c, cur, dst, CYAN, (int) (150 * (1 - Math.abs(u - 0.5f))));
            c.restore();
            if (t > 0.72f && t < 0.95f) drawTinted(c, cur, dst, GOLD, (int) (120 * (1 - (t - 0.72f) / 0.23f)));
        }

        void drawStageMorph(Canvas c, RectF dst, RectF r, float t) {
            p.setColorFilter(null);
            p.setAlpha(255);
            float sk = Math.min(r.width() * 0.78f / old.getWidth(), r.height() * 0.86f / old.getHeight());
            float ow = old.getWidth() * sk, oh = old.getHeight() * sk;
            RectF od = new RectF(dst.centerX() - ow / 2, dst.centerY() - oh / 2, dst.centerX() + ow / 2, dst.centerY() + oh / 2);
            if (t < 0.18f) {
                c.drawBitmap(old, null, od, p);
                drawTinted(c, old, od, CYAN, (int) (140 * t / 0.18f));   // power-up glow
                return;
            }
            if (t < 0.72f) {
                // the scan line rebuilds the hull: new form above it, old below, a wireframe glow at the line
                float u = (t - 0.18f) / 0.54f;
                float top = Math.min(dst.top, od.top), bot = Math.max(dst.bottom, od.bottom);
                float y = top + (bot - top) * u;
                c.save();
                c.clipRect(r.left, y, r.right, r.bottom);
                c.drawBitmap(old, null, od, p);
                drawTinted(c, old, od, CYAN, 70);
                c.restore();
                c.save();
                c.clipRect(r.left, r.top, r.right, y);
                c.drawBitmap(cur, null, dst, p);
                c.restore();
                c.save();
                c.clipRect(r.left, y - 40 * dp, r.right, y + 6 * dp);
                drawTinted(c, cur, dst, WHITE, 200);
                c.restore();
                p.setShader(new LinearGradient(0, y - 30 * dp, 0, y + 4 * dp, 0x006AD0FF, 0x906AD0FF, Shader.TileMode.CLAMP));
                c.drawRect(r.left + 20 * dp, y - 30 * dp, r.right - 20 * dp, y + 2 * dp, p);
                p.setShader(null);
                p.setColor(WHITE);
                c.drawRect(r.left + 20 * dp, y, r.right - 20 * dp, y + 2 * dp, p);
                for (int i = 0; i < 3; i++) emit(dst.left + rnd.nextFloat() * dst.width(), y, 2);
                return;
            }
            // new form complete: white flash and a shock ring
            c.drawBitmap(cur, null, dst, p);
            float f = (t - 0.72f) / 0.28f;
            if (f < 0.5f) drawTinted(c, cur, dst, WHITE, (int) (230 * (1 - f / 0.5f)));
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth((10 - 8 * f) * dp);
            p.setColor(GOLD);
            p.setAlpha((int) (200 * (1 - f)));
            c.drawCircle(dst.centerX(), dst.centerY(), Math.max(dst.width(), dst.height()) * (0.35f + 0.6f * f), p);
            p.setStyle(Paint.Style.FILL);
            p.setAlpha(255);
        }

        void drawTinted(Canvas c, Bitmap b, RectF dst, int color, int alpha) {
            if (b == null || alpha <= 0) return;
            p.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            p.setAlpha(Math.min(255, alpha));
            c.drawBitmap(b, null, dst, p);
            p.setColorFilter(null);
            p.setAlpha(255);
        }

        static RectF grow(RectF r, float f) {
            float w = r.width() * (f - 1) / 2, h = r.height() * (f - 1) / 2;
            return new RectF(r.left - w, r.top - h, r.right + w, r.bottom + h);
        }

        void emit(float x, float y, int n) {
            for (int i = 0; i < spark.length && n > 0; i++) {
                float[] s = spark[i];
                if (s[4] > 0) continue;
                double a = rnd.nextDouble() * Math.PI * 2;
                float v = (40 + rnd.nextFloat() * 160) * dp;
                s[0] = x; s[1] = y; s[2] = (float) Math.cos(a) * v; s[3] = (float) Math.sin(a) * v - 40 * dp;
                s[5] = s[4] = 0.3f + rnd.nextFloat() * 0.5f;
                n--;
            }
        }

        void drawSparks(Canvas c, float dt) {
            p.setStrokeWidth(1.6f * dp);
            for (float[] s : spark) {
                if (s[4] <= 0) continue;
                s[4] -= dt;
                s[3] += 260 * dp * dt;
                float x0 = s[0], y0 = s[1];
                s[0] += s[2] * dt;
                s[1] += s[3] * dt;
                float a = Math.max(0, s[4] / s[5]);
                p.setColor(a > 0.6f ? 0xFFFFF4C0 : 0xFFFFB040);
                p.setAlpha((int) (255 * a));
                c.drawLine(x0, y0, s[0], s[1], p);
            }
            p.setAlpha(255);
        }

        // ------------------------------------------------------------------ right side (v44 b: owner 14:18 "more gimmicky")
        int accent() {
            try {
                String k = ModShips.factionKey(hull);
                for (ModCapitals.Faction f : ModCapitals.FACTIONS) if (f.key.equals(k)) return Color.rgb((int) (f.r * 255), (int) (f.g * 255), (int) (f.b * 255));
            } catch (Throwable e) { /* neutral */ }
            return CYAN;
        }

        /** A card: cut top-left corner, header strip with an accent tab and hatching, title in spaced caps. Returns the body top. */
        float card(Canvas c, RectF b, String title, int acc) {
            float cut = 10 * dp, hh = 18 * dp;
            android.graphics.Path pa = new android.graphics.Path();
            pa.moveTo(b.left + cut, b.top); pa.lineTo(b.right, b.top); pa.lineTo(b.right, b.bottom); pa.lineTo(b.left, b.bottom); pa.lineTo(b.left, b.top + cut); pa.close();
            p.setStyle(Paint.Style.FILL);
            p.setColor(0xE00B1A2E);
            c.drawPath(pa, p);
            c.save();
            c.clipPath(pa);
            p.setColor(0xFF10233A);
            c.drawRect(b.left, b.top, b.right, b.top + hh, p);
            p.setColor(0x146AD0FF);
            p.setStrokeWidth(1);
            for (float x = b.right - 70 * dp; x < b.right; x += 6 * dp) c.drawLine(x, b.top + hh, x + hh, b.top, p);
            c.restore();
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(1.2f * dp);
            p.setColor(EDGE);
            c.drawPath(pa, p);
            p.setStyle(Paint.Style.FILL);
            p.setColor(acc);
            c.drawRect(b.left + cut + 2 * dp, b.top + 5 * dp, b.left + cut + 6 * dp, b.top + hh - 5 * dp, p);
            tp.setTextSize(9.5f * dp);
            tp.setColor(acc);
            c.drawText(title, b.left + cut + 11 * dp, b.top + hh - 5.5f * dp, tp);
            return b.top + hh + 6 * dp;
        }

        void drawInfo(Canvas c, RectF r, long now) {
            p.setShader(null);
            p.setColor(PANEL);
            c.drawRect(r, p);
            // faint hex lattice behind the cards
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(1);
            p.setColor(0x0E6AD0FF);
            float hx = 22 * dp;
            for (float yy = r.top; yy < r.bottom + hx; yy += hx * 0.866f) {
                int row = (int) ((yy - r.top) / (hx * 0.866f));
                for (float xx = r.left + (row % 2) * hx / 2; xx < r.right + hx; xx += hx) c.drawCircle(xx, yy, hx * 0.45f, p);
            }
            p.setStyle(Paint.Style.FILL);
            p.setColor(EDGE);
            c.drawRect(r.left, r.top, r.left + 2 * dp, r.bottom, p);
            if (rf == null) return;
            int acc = accent();
            float pad = 14 * dp, x = r.left + pad, w = r.width() - 2 * pad, y = r.top + pad;
            int n = Integer.parseInt(rf[0]), st = Integer.parseInt(rf[1]);
            boolean max = rf[2].length() == 0;

            // header plate: emblem, bay title, hull name
            RectF hb = new RectF(x, y, x + w, y + 46 * dp);
            p.setShader(new LinearGradient(hb.left, 0, hb.right, 0, (acc & 0x00FFFFFF) | 0x50000000, 0x100B1A2E, Shader.TileMode.CLAMP));
            c.drawRect(hb, p);
            p.setShader(null);
            p.setColor(acc);
            c.drawRect(hb.left, hb.top, hb.left + 3 * dp, hb.bottom, p);
            float ex = hb.left + 10 * dp;
            if (emblem != null) {
                float es = 38 * dp;
                c.drawBitmap(emblem, null, new RectF(ex, hb.centerY() - es / 2, ex + es, hb.centerY() + es / 2), p);
                ex += es + 8 * dp;
            }
            text(c, ModLang.tr("RETROFIT BAY"), ex, hb.top + 16 * dp, 9, acc);
            text(c, name == null ? "" : name.toUpperCase(), ex, hb.top + 37 * dp, 17, WHITE);
            y = hb.bottom + 10 * dp;

            // progress to ELITE: chevron track, form waypoints every 2 levels, ELITE cap
            text(c, ModLang.tr("PROGRESS TO ELITE"), x, y + 9 * dp, 9, DIM);
            String pr = n + " / " + ModV35.REFIT_MAX;
            tp.setTextSize(11 * dp);
            c.drawText(pr, x + w - 58 * dp - tp.measureText(pr), y + 9 * dp, tp);
            y += 16 * dp;
            float capW = 52 * dp, tw = w - capW - 6 * dp, th = 14 * dp;
            float seg = tw / ModV35.REFIT_MAX;
            for (int i = 0; i < ModV35.REFIT_MAX; i++) {
                float sx = x + i * seg;
                android.graphics.Path ch = new android.graphics.Path();
                ch.moveTo(sx, y); ch.lineTo(sx + seg - 3 * dp, y); ch.lineTo(sx + seg + 2 * dp, y + th / 2); ch.lineTo(sx + seg - 3 * dp, y + th);
                ch.lineTo(sx, y + th); ch.lineTo(sx + 5 * dp, y + th / 2); ch.close();
                boolean on = i < n, nx = i == n && !max;
                p.setColor(on ? GOLD : nx && ((now / 450) & 1) == 0 ? 0xA06AD0FF : 0xFF1B2A3C);
                c.drawPath(ch, p);
            }
            if (n > 0) {   // sheen running along the filled part
                float fx = x + seg * n, u = ((now - born) % 2200) / 2200f;
                float sx = x + (fx - x) * u;
                c.save();
                c.clipRect(x, y, fx, y + th);
                p.setShader(new LinearGradient(sx - 30 * dp, 0, sx + 30 * dp, 0, new int[] {0x00FFFFFF, 0x90FFFFFF, 0x00FFFFFF}, null, Shader.TileMode.CLAMP));
                c.drawRect(x, y, fx, y + th, p);
                p.setShader(null);
                c.restore();
            }
            for (int s = 1; s <= ModV35.STAGES; s++) {   // waypoint diamonds under the track
                float cx = x + seg * (2 * s) - seg / 2, cy = y + th + 12 * dp;
                c.save();
                c.rotate(45, cx, cy);
                p.setStyle(s <= st ? Paint.Style.FILL : Paint.Style.STROKE);
                p.setStrokeWidth(1.5f * dp);
                p.setColor(s <= st ? GOLD : s == st + 1 ? CYAN : EDGE);
                c.drawRect(cx - 7 * dp, cy - 7 * dp, cx + 7 * dp, cy + 7 * dp, p);
                c.restore();
                p.setStyle(Paint.Style.FILL);
                tp.setTextSize(8 * dp);
                tp.setColor(s <= st ? BG : TEXT);
                c.drawText(ROMAN[s], cx - tp.measureText(ROMAN[s]) / 2, cy + 3 * dp, tp);
            }
            RectF cap = new RectF(x + w - capW, y - 4 * dp, x + w, y + th + 4 * dp);   // ELITE badge
            float glow = max ? 0.6f + 0.4f * (float) Math.sin((now - born) / 400.0) : 0;
            if (max) {
                p.setColor(GOLD);
                p.setAlpha((int) (90 * glow));
                c.drawRoundRect(grow(cap, 1.25f), 6 * dp, 6 * dp, p);
                p.setAlpha(255);
            }
            p.setColor(max ? GOLD : 0xFF1B2A3C);
            c.drawRoundRect(cap, 4 * dp, 4 * dp, p);
            p.setStyle(Paint.Style.STROKE);
            p.setColor(max ? WHITE : GOLD);
            p.setStrokeWidth(1.2f * dp);
            c.drawRoundRect(cap, 4 * dp, 4 * dp, p);
            p.setStyle(Paint.Style.FILL);
            tp.setTextSize(10 * dp);
            tp.setColor(max ? BG : GOLD);
            String el = ModLang.tr("ELITE");
            c.drawText(el, cap.centerX() - tp.measureText(el) / 2, cap.centerY() + 3.5f * dp, tp);
            y += th + 30 * dp;

            // cards: per level | turrets, then materials | next form
            float gap = 8 * dp, cw = (w - gap) / 2;
            float bh = 34 * dp, by = r.bottom - bh - pad;
            float rowH = (by - 24 * dp - y - gap) / 2;
            RectF c1 = new RectF(x, y, x + cw, y + rowH), c2 = new RectF(x + cw + gap, y, x + w, y + rowH);
            RectF c3 = new RectF(x, y + rowH + gap, x + cw, y + 2 * rowH + gap), c4 = new RectF(x + cw + gap, y + rowH + gap, x + w, y + 2 * rowH + gap);

            float yy = card(c, c1, ModLang.tr("EACH LEVEL"), acc);
            for (String g : rf[5].split(", ")) {
                if (yy > c1.bottom - 8 * dp) break;
                String gs = g.trim();
                int plus = gs.lastIndexOf(" +");
                String stat = plus > 0 ? gs.substring(0, plus) : gs, val = plus > 0 ? gs.substring(plus + 1) : "";
                boolean fac = val.contains("(");
                if (fac) val = val.substring(0, val.indexOf(' ') > 0 ? val.indexOf(' ') : val.length());
                RectF chip = new RectF(c1.left + 8 * dp, yy, c1.left + 40 * dp, yy + 13 * dp);
                p.setColor(fac ? acc : 0xFF1F4A2A);
                c.drawRoundRect(chip, 3 * dp, 3 * dp, p);
                tp.setTextSize(8 * dp);
                tp.setColor(fac ? BG : 0xFF8CFF8C);
                c.drawText(val, chip.centerX() - tp.measureText(val) / 2, chip.bottom - 3.5f * dp, tp);
                tp.setTextSize(9 * dp);
                tp.setColor(fac ? acc : TEXT);
                String sl = android.text.TextUtils.ellipsize(stat, tp, c1.right - chip.right - 14 * dp, android.text.TextUtils.TruncateAt.END).toString();
                c.drawText(sl, chip.right + 6 * dp, chip.bottom - 3 * dp, tp);
                yy += 16 * dp;
            }

            yy = card(c, c2, ModLang.tr("TURRETS"), acc);
            int[] plan = ModV38.turretPlan(hull);
            int nowT = plan != null ? plan[Math.min(5, st)] : guns();
            // v44 c (owner 14:37): locked turret slots stay hidden until the form that unlocks them
            float tr = Math.min(8 * dp, (c2.width() - 16 * dp) / Math.max(1, nowT) / 2 - 2 * dp);
            float rowW = nowT * (tr * 2 + 4 * dp) - 4 * dp, tx = c2.centerX() - rowW / 2;
            for (int i = 0; i < nowT; i++) {
                float cx = tx + tr + i * (tr * 2 + 4 * dp), cy = yy + tr + 2 * dp;
                p.setColor(CYAN);
                c.drawCircle(cx, cy, tr, p);
                p.setColor(BG);
                c.drawCircle(cx, cy, tr * 0.4f, p);
            }
            yy += tr * 2 + 16 * dp;
            String tl = nowT + " " + ModLang.tr("turrets online");
            tp.setTextSize(10 * dp);
            if (yy < c2.bottom - 2 * dp) text(c, tl, c2.centerX() - tp.measureText(tl) / 2, yy, 10, WHITE);

            yy = card(c, c3, ModLang.tr("MATERIALS"), acc);
            long credits = 0;
            try { credits = fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getCredit(); } catch (Throwable e) { /* unknown */ }
            NumberFormat nf = NumberFormat.getNumberInstance(Locale.getDefault());
            long needCr = max ? 0 : Long.parseLong(rf[2]);
            int needP = Integer.parseInt(rf[3]), haveP = Integer.parseInt(rf[4]), needC = !max && n + 1 == ModV35.REFIT_MAX ? 1 : 0, haveC = Integer.parseInt(rf[7]);
            yy = matRow(c, c3, yy, "cr", credits, max ? -1 : needCr, credits >= needCr, GOLD);
            yy = matRow(c, c3, yy, "⬡", haveP, needP > 0 ? needP : -1, haveP >= needP, CYAN);
            if (yy < c3.bottom - 6 * dp) matRow(c, c3, yy, "◆", haveC, needC > 0 ? 1 : -1, haveC >= needC, acc, rf[6]);

            yy = card(c, c4, ModLang.tr("NEXT FORM"), acc);
            float box = Math.min(c4.height() - (yy - c4.top) - 6 * dp, c4.width() * 0.45f);
            if (box > 20 * dp) {
                RectF b = new RectF(c4.left + 8 * dp, yy, c4.left + 8 * dp + box, yy + box);
                p.setColor(0xFF07101C);
                c.drawRect(b, p);
                p.setColor(0x206AD0FF);   // holo scan lines
                for (float sy = b.top; sy < b.bottom; sy += 3 * dp) c.drawRect(b.left, sy, b.right, sy + 1, p);
                String cap2;
                int col = DIM;
                if (next != null) {
                    float k = Math.min(box * 0.9f / next.getWidth(), box * 0.9f / next.getHeight());
                    float nw = next.getWidth() * k, nh = next.getHeight() * k;
                    RectF nd = new RectF(b.centerX() - nw / 2, b.centerY() - nh / 2, b.centerX() + nw / 2, b.centerY() + nh / 2);
                    drawTinted(c, next, grow(nd, 1.06f), CYAN, (int) (90 + 60 * Math.sin(now / 500.0)));
                    drawTinted(c, next, nd, 0xFF14324A, 255);
                    cap2 = ModLang.tr("STAGE ") + ROMAN[Math.min(5, (nextAt + 1) / 2)] + "\n" + ModLang.tr("Evolves at refit ") + nextAt;
                    col = CYAN;
                } else if (st >= ModV35.STAGES || (hull != null && ModV35.stageArt(hull, ModV35.STAGES) != hull.art)) {
                    cap2 = ModLang.tr("Final form reached");
                    col = GOLD;
                } else {
                    cap2 = ModLang.tr("This hull keeps its shape (no new form art yet)");
                }
                para(c, cap2, b.right + 8 * dp, b.top + 11 * dp, c4.right - b.right - 14 * dp, 9, col);
            }

            // status / buttons
            if (status != null && now < statusUntil) para(c, status, x, by - 8 * dp, w, 10, RED);
            float half = (w - gap) / 2;
            closeBtn.set(x, by, x + half, by + bh);
            refitBtn.set(x + half + gap, by, x + w, by + bh);
            button(c, closeBtn, ModLang.tr("Close"), EDGE, TEXT);
            boolean can = !max && !animating();
            button(c, refitBtn, max ? ModLang.tr("ELITE") : animating() ? ModLang.tr("Refitting...") : ModLang.tr("REFIT") + "  " + compact(Long.parseLong(rf[2])) + " cr", can ? GOLD : 0xFF3A4656, can ? BG : DIM);
        }

        int guns() {
            try {
                return hull != null && hull.spec != null ? hull.spec.canonCount : 2;
            } catch (Throwable e) {
                return 2;
            }
        }

        /** 964,405,949 -> 964M (1 decimal under 10: 7.7M); K, M, B. */
        static String compact(long v) {
            String[] u = {"", "K", "M", "B", "T"};
            double d = v;
            int i = 0;
            while (Math.abs(d) >= 1000 && i < u.length - 1) { d /= 1000; i++; }
            if (i == 0) return String.valueOf(v);
            return (Math.abs(d) < 10 ? String.format(Locale.US, "%.1f", d).replace(".0", "") : String.valueOf((long) d)) + u[i];
        }

        /** The full number when it fits the width, else the short form (owner 14:37). */
        String fit(long v, float w) {
            String full = NumberFormat.getNumberInstance(Locale.getDefault()).format(v);
            return tp.measureText(full) <= w ? full : compact(v);
        }

        /** Materials row: icon, what you have, what the next level needs (green when enough, red when short); need < 0 = none. */
        float matRow(Canvas c, RectF b, float y, String icon, long have, long need, boolean ok, int col) {
            return matRow(c, b, y, icon, have, need, ok, col, "");
        }

        float matRow(Canvas c, RectF b, float y, String icon, long have, long need, boolean ok, int col, String label) {
            float fs = 10 * dp, inner = b.width() - 36 * dp;
            tp.setTextSize(fs);
            tp.setColor(col);
            c.drawText(icon, b.left + 8 * dp, y + 10 * dp, tp);
            float nw = 0;
            if (need >= 0) {
                tp.setTextSize(9 * dp);
                String nd = "-" + fit(need, inner * 0.42f);
                tp.setColor(ok ? 0xFF8CFF8C : RED);
                nw = tp.measureText(nd) + 8 * dp;
                c.drawText(nd, b.right - 8 * dp - tp.measureText(nd), y + 10 * dp, tp);
                tp.setTextSize(fs);
            }
            tp.setColor(WHITE);
            String hv = fit(have, inner - nw);
            if (label.length() > 0) hv = android.text.TextUtils.ellipsize(hv + "  " + label, tp, inner - nw, android.text.TextUtils.TruncateAt.END).toString();
            c.drawText(hv, b.left + 28 * dp, y + 10 * dp, tp);
            return y + 16 * dp;
        }

        void text(Canvas c, String s, float x, float y, int sp, int color) {
            tp.setTextSize(sp * dp);
            tp.setColor(color);
            c.drawText(s, x, y, tp);
        }

        float para(Canvas c, String s, float x, float y, float w, int sp, int color) {
            tp.setTextSize(sp * dp);
            tp.setColor(color);
            StaticLayout l = new StaticLayout(s, tp, (int) Math.max(1, w), Layout.Alignment.ALIGN_NORMAL, 1.1f, 0, false);
            c.save();
            c.translate(x, y - sp * dp);
            l.draw(c);
            c.restore();
            return y + l.getHeight();
        }

        void button(Canvas c, RectF b, String s, int fill, int ink) {
            float cut = 10 * dp;
            android.graphics.Path pa = new android.graphics.Path();
            pa.moveTo(b.left + cut, b.top); pa.lineTo(b.right, b.top); pa.lineTo(b.right - cut, b.bottom); pa.lineTo(b.left, b.bottom); pa.close();
            p.setColor(fill);
            c.drawPath(pa, p);
            tp.setTextSize(12 * dp);
            tp.setColor(ink);
            c.drawText(s, b.centerX() - tp.measureText(s) / 2, b.centerY() + 5 * dp, tp);
        }
    }
}
