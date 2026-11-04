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
            hexPad(c, r, now);

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
            c.drawText(android.text.TextUtils.ellipsize(title, tp, b.width() - cut - 16 * dp, android.text.TextUtils.TruncateAt.END).toString(), b.left + cut + 11 * dp, b.top + hh - 5.5f * dp, tp);
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

            // v44 d (owner 15:13, War Robots upgrade screen as the reference): one comparison table, now vs after the
            // refit, real numbers, two colours (white now, green after), zebra rows instead of boxed cards, one CTA.
            int[] plan = ModV38.turretPlan(hull);
            int nowT = plan != null ? plan[Math.min(5, st)] : guns();
            int stNext = max ? st : ModV35.stage(n + 1);
            boolean newTurret = plan != null && !max && plan[Math.min(5, stNext)] > nowT;
            boolean evolves = !max && stNext > st && next != null && nextAt == n + 1;
            final int GREEN = 0xFF7CFF8C;

            String intro = max ? ModLang.tr("This hull has reached ELITE: every refit and form is unlocked.")
                : ModLang.tr("Each refit strengthens this hull. Every second refit evolves it into a new form.");
            // fit: rows + form must end above the REQUIRED line; drop the intro, then tighten rows, when space is short
            float[][] rows = ModV35.preview();
            int nr = rows.length + (newTurret ? 1 : 0);
            float formH = cur != null && (next != null || max) ? 44 * dp : 0;
            float limit = r.bottom - pad - 38 * dp - 24 * dp;
            if (y + 34 * dp + nr * 34 * dp + formH <= limit) y = para(c, intro, x, y + 2 * dp, w, 9, DIM) + 8 * dp;
            // rows like the reference: icon tile, big value, small label, green delta on the right, thin level bar
            float rh = Math.max(28 * dp, Math.min(34 * dp, (limit - y - formH) / Math.max(1, nr))), tile = 24 * dp;
            for (float[] row : rows) {
                int k = (int) row[0], kind = (int) row[3];
                String delta = kind == 1 ? "-" + String.format(Locale.US, "%.2f s", (row[1] - row[2]) / 1000f)
                    : kind == 2 ? "+" + Math.round(row[2] - row[1]) + "%" : "+" + value(row[2] - row[1], 0);
                statRow(c, x, y, w, rh, tile, k, value(row[1], kind), ModLang.tr(ModV35.statName(k)), max ? "" : delta, GREEN, acc, n, max);
                y += rh;
            }
            if (newTurret) {
                float pulse = 0.6f + 0.4f * (float) Math.sin((now - born) / 300.0);
                int gold = Color.argb((int) (255 * pulse), Color.red(GOLD), Color.green(GOLD), Color.blue(GOLD));
                statRow(c, x, y, w, rh, tile, -1, String.valueOf(nowT), ModLang.tr("Turrets"), "+" + (plan[Math.min(5, stNext)] - nowT) + " " + ModLang.tr("NEW"), gold, GOLD, -1, max);
                y += rh;
            }
            if (cur != null && (next != null || max)) {   // form: current and next silhouettes, hidden
                float fh = 44 * dp, bx = fh - 8 * dp;
                statIcon(c, x, y + (fh - tile) / 2, tile, -2, evolves ? GOLD : acc);
                text(c, ModLang.tr("Form") + " " + (st > 0 ? ROMAN[st] : "0"), x + tile + 8 * dp, y + fh / 2 + 4 * dp, 12, WHITE);
                float hox = x + w - (next != null ? 2 * bx + 16 * dp : bx);
                holo(c, cur, new RectF(hox, y + 4 * dp, hox + bx, y + 4 * dp + bx), DIM, now, false);
                if (next != null) {
                    float ax = hox + bx + 8 * dp, ay = y + 4 * dp + bx / 2;
                    android.graphics.Path ar = new android.graphics.Path();
                    ar.moveTo(ax - 4 * dp, ay - 5 * dp); ar.lineTo(ax + 4 * dp, ay); ar.lineTo(ax - 4 * dp, ay + 5 * dp); ar.close();
                    p.setColor(evolves ? GOLD : CYAN);
                    c.drawPath(ar, p);
                    holo(c, next, new RectF(hox + bx + 16 * dp, y + 4 * dp, hox + 2 * bx + 16 * dp, y + 4 * dp + bx), evolves ? GOLD : CYAN, now, true);
                    String nl = evolves ? ModLang.tr("Evolves at the next refit") : ModLang.tr("Evolves at refit ") + nextAt;
                    text(c, nl, x + tile + 8 * dp, y + fh / 2 + 16 * dp, 8, evolves ? GOLD : CYAN);
                } else {
                    text(c, ModLang.tr("Final form reached"), x + tile + 8 * dp, y + fh / 2 + 16 * dp, 8, GOLD);
                }
                y += fh;
            } else if (y < r.bottom - 120 * dp) {
                y = para(c, ModLang.tr("This hull keeps its shape (no new form art yet)"), x, y + 14 * dp, w, 9, DIM);
            }

            // materials: what the refit takes, red when short
            float bh = 38 * dp, by = r.bottom - bh - pad;
            if (!max) {
                long credits = 0;
                try { credits = fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getCredit(); } catch (Throwable e) { /* unknown */ }
                long needCr = Long.parseLong(rf[2]);
                int needP = Integer.parseInt(rf[3]), haveP = Integer.parseInt(rf[4]), needC = n + 1 == ModV35.REFIT_MAX ? 1 : 0, haveC = Integer.parseInt(rf[7]);
                float my = by - 12 * dp, mx = x;
                text(c, ModLang.tr("REQUIRED"), mx, my, 8, DIM);
                tp.setTextSize(8 * dp);
                mx += tp.measureText(ModLang.tr("REQUIRED")) + 10 * dp;
                mx = need(c, mx, my, 0, compact(credits) + " / " + compact(needCr), credits >= needCr, GOLD);
                if (needP > 0) mx = need(c, mx, my, 1, haveP + " / " + needP, haveP >= needP, CYAN);
                if (needC > 0) need(c, mx, my, 2, haveC + " / 1 " + rf[6], haveC >= needC, acc);
            }
            if (status != null && now < statusUntil) para(c, status, x, by - 26 * dp, w, 10, RED);
            float bw = w * 0.7f;
            refitBtn.set(x + (w - bw) / 2, by, x + (w + bw) / 2, by + bh);
            boolean can = !max && !animating();
            button(c, refitBtn, max ? ModLang.tr("ELITE") : animating() ? ModLang.tr("Refitting...") : ModLang.tr("REFIT") + "   " + compact(Long.parseLong(rf[2])) + " cr", can ? GOLD : 0xFF3A4656, can ? BG : DIM);
            // close: a small X in the header corner
            float cs = 26 * dp;
            closeBtn.set(r.right - pad - cs, r.top + pad, r.right - pad, r.top + pad + cs);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(2 * dp);
            p.setColor(TEXT);
            float ci = 8 * dp;
            c.drawLine(closeBtn.left + ci, closeBtn.top + ci, closeBtn.right - ci, closeBtn.bottom - ci, p);
            c.drawLine(closeBtn.right - ci, closeBtn.top + ci, closeBtn.left + ci, closeBtn.bottom - ci, p);
            p.setStyle(Paint.Style.FILL);
        }

        /** Icon tile, value (big) over its label (small), delta right-aligned, a thin refit-level bar along the bottom. */
        void statRow(Canvas c, float x, float y, float w, float h, float tile, int k, String val, String label, String delta, int dcol, int icol, int lv, boolean max) {
            statIcon(c, x, y + (h - tile) / 2 - 2 * dp, tile, k, icol);
            float tx = x + tile + 8 * dp;
            text(c, val, tx, y + 14 * dp, 13, WHITE);
            text(c, label, tx, y + 25 * dp, 8, DIM);
            if (delta.length() > 0) {
                tp.setTextSize(11 * dp);
                text(c, delta, x + w - tp.measureText(delta), y + 14 * dp, 11, dcol);
            }
            if (lv < 0) return;   // turret row: no refit bar
            float by = y + h - 5 * dp, bw = x + w - tx;
            p.setColor(0xFF1B2A3C);
            c.drawRect(tx, by, x + w, by + 2 * dp, p);
            p.setColor(max ? GOLD : CYAN);
            c.drawRect(tx, by, tx + bw * lv / ModV35.REFIT_MAX, by + 2 * dp, p);
            if (!max) {
                p.setColor(0xFF7CFF8C);
                c.drawRect(tx + bw * lv / ModV35.REFIT_MAX, by, tx + bw * (lv + 1) / ModV35.REFIT_MAX, by + 2 * dp, p);
            }
        }

        /** The docking pad under the hull: two hex rings in the faction colour, a soft glow, a slow pulse. */
        void hexPad(Canvas c, RectF r, long now) {
            int acc = accent();
            float cx = r.centerX(), cy = r.centerY(), R = Math.min(r.width(), r.height()) * 0.40f;
            float pu = 0.5f + 0.5f * (float) Math.sin((now - born) / 1100.0);
            p.setShader(new RadialGradient(cx, cy, R, (acc & 0x00FFFFFF) | 0x30000000, acc & 0x00FFFFFF, Shader.TileMode.CLAMP));
            c.drawPath(hex(cx, cy, R), p);
            p.setShader(null);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(3 * dp);
            p.setColor((acc & 0x00FFFFFF) | ((int) (120 + 80 * pu) << 24));
            c.drawPath(hex(cx, cy, R), p);
            p.setStrokeWidth(1.5f * dp);
            p.setColor((acc & 0x00FFFFFF) | 0x50000000);
            c.drawPath(hex(cx, cy, R * 0.82f), p);
            p.setStyle(Paint.Style.FILL);
        }

        android.graphics.Path hex(float cx, float cy, float R) {
            android.graphics.Path h = new android.graphics.Path();
            for (int i = 0; i < 6; i++) {
                double a = Math.PI / 6 + i * Math.PI / 3;
                float px = cx + (float) Math.cos(a) * R, py = cy + (float) Math.sin(a) * R;
                if (i == 0) h.moveTo(px, py); else h.lineTo(px, py);
            }
            h.close();
            return h;
        }

        void stripe(Canvas c, float x, float y, float w, float h, int i) {
            p.setColor(i % 2 == 0 ? 0x14FFFFFF : 0x06FFFFFF);
            c.drawRect(x, y, x + w, y + h, p);
        }

        /** Small rounded tile with a glyph per stat (k < 0: -1 turret, -2 form). */
        void statIcon(Canvas c, float x, float y, float s, int k, int col) {
            p.setColor((col & 0x00FFFFFF) | 0x40000000);
            c.drawRoundRect(new RectF(x, y, x + s, y + s), 3 * dp, 3 * dp, p);
            if (k == ModV35.S_SHCAP || k == ModV35.S_SHREGEN) {   // the game's own shield icon
                Bitmap sb = res("ic_shield");
                if (sb != null) {
                    float m = s * 0.16f;
                    c.drawBitmap(sb, null, new RectF(x + m, y + m, x + s - m, y + s - m), bp);
                    if (k == ModV35.S_SHREGEN) { tp.setTextSize(s * 0.42f); tp.setColor(WHITE); c.drawText("+", x + s / 2 - tp.measureText("+") / 2, y + s * 0.66f, tp); }
                    return;
                }
            }
            if (k == ModV35.S_HULL) { hullPlate(c, x, y, s, col); return; }
            String g;
            switch (k) {
                case ModV35.S_DMG: g = "\u25B2"; break;
                case ModV35.S_RELOAD: g = "\u21BB"; break;
                case ModV35.S_SHCAP: g = "\u25C9"; break;
                case ModV35.S_SHREGEN: g = "+"; break;
                case ModV35.S_MISSILE: g = "\u25BA"; break;
                case ModV35.S_CARGO: g = "\u25A3"; break;
                case ModV35.S_REPAIR: g = "\u271A"; break;
                case ModV35.S_HULL: g = "\u25C8"; break;
                case ModV35.S_SPEED: g = "\u00BB"; break;
                case ModV35.S_AGILITY: g = "\u21BA"; break;
                case -1: g = "\u25CE"; break;
                default: g = "\u25C6"; break;
            }
            tp.setTextSize(s * 0.62f);
            tp.setColor(col);
            c.drawText(g, x + s / 2 - tp.measureText(g) / 2, y + s * 0.72f, tp);
        }

        /** 73,000 / 1.25 s / +9% */
        String value(float v, int kind) {
            if (kind == 1) return String.format(Locale.US, "%.2f s", v / 1000f);
            if (kind == 2) return "+" + Math.round(v) + "%";
            if (v < 100) return String.format(Locale.US, "%.1f", v);
            long l = Math.round(v);
            return l >= 1000000 ? compact(l) : NumberFormat.getNumberInstance(Locale.getDefault()).format(l);
        }

        /** Armour plate: bevelled plate in the accent colour, a seam and four rivets. */
        void hullPlate(Canvas c, float x, float y, float s, int col) {
            float m = s * 0.18f, b = s * 0.16f, l = x + m, t = y + m, r = x + s - m, bt = y + s - m;
            android.graphics.Path pl = new android.graphics.Path();
            pl.moveTo(l + b, t); pl.lineTo(r - b, t); pl.lineTo(r, t + b); pl.lineTo(r, bt - b); pl.lineTo(r - b, bt);
            pl.lineTo(l + b, bt); pl.lineTo(l, bt - b); pl.lineTo(l, t + b); pl.close();
            p.setColor(col);
            c.drawPath(pl, p);
            p.setColor(0x66000000);
            float my = (t + bt) / 2;
            c.drawRect(l, my - 0.6f * dp, r, my + 0.6f * dp, p);
            float rv = s * 0.05f, ri = b * 0.9f;
            c.drawCircle(l + ri, t + ri, rv, p); c.drawCircle(r - ri, t + ri, rv, p);
            c.drawCircle(l + ri, bt - ri, rv, p); c.drawCircle(r - ri, bt - ri, rv, p);
            p.setColor(0x55FFFFFF);
            c.drawRect(l + b, t + 1 * dp, r - b, t + 2 * dp, p);
        }

        /** Reactor core: glowing orb with a ring, in the faction colour. */
        void coreIcon(Canvas c, float cx, float cy, float rad, int col) {
            p.setColor((col & 0x00FFFFFF) | 0x50000000);
            c.drawCircle(cx, cy, rad, p);
            p.setColor(col);
            c.drawCircle(cx, cy, rad * 0.55f, p);
            p.setColor(0xFFFFFFFF);
            c.drawCircle(cx - rad * 0.15f, cy - rad * 0.15f, rad * 0.2f, p);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(1.2f * dp);
            p.setColor(col);
            c.drawCircle(cx, cy, rad * 0.85f, p);
            p.setStyle(Paint.Style.FILL);
        }

        final Paint bp = new Paint(Paint.FILTER_BITMAP_FLAG | Paint.ANTI_ALIAS_FLAG);
        final java.util.HashMap<String, Bitmap> resCache = new java.util.HashMap<String, Bitmap>();
        /** A drawable of the game by name (cached; null when missing). */
        Bitmap res(String name) {
            if (resCache.containsKey(name)) return resCache.get(name);
            Bitmap bm = null;
            try {
                int id = getResources().getIdentifier(name, "drawable", getContext().getPackageName());
                if (id != 0) bm = android.graphics.BitmapFactory.decodeResource(getResources(), id);
            } catch (Throwable e) { /* missing */ }
            resCache.put(name, bm);
            return bm;
        }

        /** Material: icon (0 credits, 1 rare parts, 2 core), then have / need in white or red. */
        float need(Canvas c, float x, float y, int kind, String txt, boolean ok, int col) {
            float is = 13 * dp, iy = y - is * 0.78f;
            Bitmap ib = kind == 0 ? res("ic_credits") : kind == 1 ? res("loot_engine_block") : null;
            if (kind == 2) coreIcon(c, x + is / 2, iy + is / 2, is / 2, col);
            else if (ib != null) {
                // loot icons carry a wide glow: crop to the item in the middle
                android.graphics.Rect src = kind == 1 ? new android.graphics.Rect(ib.getWidth() / 4, ib.getHeight() / 4, ib.getWidth() * 3 / 4, ib.getHeight() * 3 / 4) : null;
                c.drawBitmap(ib, src, new RectF(x, iy, x + is, iy + is), bp);
            } else text(c, kind == 0 ? "cr" : "\u2B21", x, y, 9, col);
            float ix = x + is + 4 * dp;
            text(c, txt, ix, y, 9, ok ? WHITE : RED);
            tp.setTextSize(9 * dp);
            return ix + tp.measureText(txt) + 12 * dp;
        }

        /** A hidden-form hologram: dark box with scan lines, the silhouette filled dark with a coloured halo. */
        void holo(Canvas c, Bitmap bm, RectF b, int halo, long now, boolean pulse) {
            p.setColor(0xFF07101C);
            c.drawRect(b, p);
            p.setColor(0x206AD0FF);
            for (float sy = b.top; sy < b.bottom; sy += 3 * dp) c.drawRect(b.left, sy, b.right, sy + 1, p);
            float k = Math.min(b.width() * 0.9f / bm.getWidth(), b.height() * 0.9f / bm.getHeight());
            float nw = bm.getWidth() * k, nh = bm.getHeight() * k;
            RectF nd = new RectF(b.centerX() - nw / 2, b.centerY() - nh / 2, b.centerX() + nw / 2, b.centerY() + nh / 2);
            drawTinted(c, bm, grow(nd, 1.06f), halo, pulse ? (int) (90 + 60 * Math.sin(now / 500.0)) : 80);
            drawTinted(c, bm, nd, 0xFF14324A, 255);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(1);
            p.setColor(EDGE);
            c.drawRect(b, p);
            p.setStyle(Paint.Style.FILL);
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
