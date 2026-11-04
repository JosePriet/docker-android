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

        void drawInfo(Canvas c, RectF r, long now) {
            p.setShader(null);
            p.setColor(PANEL);
            c.drawRect(r, p);
            p.setColor(EDGE);
            c.drawRect(r.left, r.top, r.left + 2 * dp, r.bottom, p);
            if (rf == null) return;
            float x = r.left + 20 * dp, y = r.top + 34 * dp, w = r.width() - 40 * dp;
            int n = Integer.parseInt(rf[0]), st = Integer.parseInt(rf[1]);
            boolean max = rf[2].length() == 0;

            text(c, ModLang.tr("RETROFIT BAY"), x, y, 20, CYAN);
            y += 24 * dp;
            text(c, name == null ? "" : name, x, y, 15, WHITE);
            y += 26 * dp;

            // refit level: 10 segments
            text(c, ModLang.tr("Refit level") + "  " + n + " / " + ModV35.REFIT_MAX, x, y, 12, TEXT);
            y += 8 * dp;
            float gap = 3 * dp, segW = (w - gap * (ModV35.REFIT_MAX - 1)) / ModV35.REFIT_MAX;
            boolean blink = ((now / 450) & 1) == 0;
            for (int i = 0; i < ModV35.REFIT_MAX; i++) {
                float sx = x + i * (segW + gap);
                p.setColor(i < n ? GOLD : i == n && !max && blink ? 0x806AD0FF : 0xFF1B2A3C);
                c.drawRect(sx, y, sx + segW, y + 10 * dp, p);
                if (i % 2 == 1) { p.setColor(0x60FFFFFF); c.drawRect(sx + segW - 2 * dp, y, sx + segW, y + 10 * dp, p); }   // a form every 2 levels
            }
            y += 32 * dp;

            // forms I..V
            text(c, ModLang.tr("Form"), x, y, 12, TEXT);
            y += 8 * dp;
            float pw = w / ModV35.STAGES;
            for (int s = 1; s <= ModV35.STAGES; s++) {
                float cx = x + pw * (s - 0.5f), cy = y + 14 * dp;
                p.setStyle(s <= st ? Paint.Style.FILL : Paint.Style.STROKE);
                p.setStrokeWidth(2 * dp);
                p.setColor(s <= st ? GOLD : s == st + 1 ? CYAN : EDGE);
                Rect rr = new Rect((int) (cx - 13 * dp), (int) (cy - 13 * dp), (int) (cx + 13 * dp), (int) (cy + 13 * dp));
                c.save();
                c.rotate(45, cx, cy);
                c.drawRect(rr, p);
                c.restore();
                p.setStyle(Paint.Style.FILL);
                tp.setTextSize(11 * dp);
                tp.setColor(s <= st ? BG : TEXT);
                String rn = ROMAN[s];
                c.drawText(rn, cx - tp.measureText(rn) / 2, cy + 4 * dp, tp);
                tp.setTextSize(9 * dp);
                tp.setColor(DIM);
                String lv = (2 * s - 1) + "-" + (2 * s);
                c.drawText(lv, cx - tp.measureText(lv) / 2, cy + 28 * dp, tp);
            }
            y += 52 * dp;

            // gains per level
            y = para(c, ModLang.tr("Each level: ") + rf[5], x, y, w, 11, TEXT) + 6 * dp;
            text(c, ModLang.tr("Rare parts") + ": " + rf[4] + "     " + rf[6] + ": " + rf[7], x, y, 11, DIM);
            y += 16 * dp;

            // next form preview
            float box = Math.min(84 * dp, r.bottom - y - 80 * dp);
            if (box > 40 * dp) {
                RectF b = new RectF(x, y, x + box, y + box);
                p.setColor(0xFF0B1A2E);
                c.drawRect(b, p);
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(1.5f * dp);
                p.setColor(EDGE);
                c.drawRect(b, p);
                p.setStyle(Paint.Style.FILL);
                String cap;
                if (next != null) {
                    float k = Math.min(box * 0.88f / next.getWidth(), box * 0.88f / next.getHeight());
                    float nw = next.getWidth() * k, nh = next.getHeight() * k;
                    RectF nd = new RectF(b.centerX() - nw / 2, b.centerY() - nh / 2, b.centerX() + nw / 2, b.centerY() + nh / 2);
                    drawTinted(c, next, grow(nd, 1.06f), CYAN, (int) (90 + 60 * Math.sin(now / 500.0)));
                    drawTinted(c, next, nd, 0xFF14324A, 255);
                    cap = ModLang.tr("Next form at refit ") + nextAt;
                } else if (st >= ModV35.STAGES || (hull != null && ModV35.stageArt(hull, ModV35.STAGES) != hull.art)) {
                    cap = ModLang.tr("Final form reached");
                } else {
                    cap = ModLang.tr("This hull keeps its shape (no new form art yet)");
                }
                para(c, cap, b.right + 12 * dp, b.top + 16 * dp, w - box - 12 * dp, 11, next != null ? CYAN : DIM);
                y += box + 12 * dp;
            }

            // cost + buttons
            float bh = 44 * dp, by = r.bottom - bh - 18 * dp;
            String cost;
            if (max) cost = ModLang.tr("This hull is fully refitted.");
            else {
                cost = NumberFormat.getNumberInstance(Locale.getDefault()).format(Long.parseLong(rf[2])) + " cr";
                if (!"0".equals(rf[3])) cost += " + " + rf[3] + " " + ModLang.tr("parts");
                if (n + 1 == ModV35.REFIT_MAX) cost += " + 1 " + rf[6];
                cost = ModLang.tr("Next level") + ": " + cost;
            }
            if (status != null && now < statusUntil) para(c, status, x, by - 30 * dp, w, 11, RED);
            else text(c, cost, x, by - 14 * dp, 12, max ? GOLD : WHITE);
            float half = (w - 12 * dp) / 2;
            closeBtn.set(x, by, x + half, by + bh);
            refitBtn.set(x + half + 12 * dp, by, x + w, by + bh);
            button(c, closeBtn, ModLang.tr("Close"), EDGE, TEXT);
            boolean can = !max && !animating();
            button(c, refitBtn, animating() ? ModLang.tr("Refitting...") : ModLang.tr("REFIT"), can ? GOLD : 0xFF3A4656, can ? BG : DIM);
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
            p.setColor(fill);
            c.drawRoundRect(b, 6 * dp, 6 * dp, p);
            tp.setTextSize(15 * dp);
            tp.setColor(ink);
            c.drawText(s, b.centerX() - tp.measureText(s) / 2, b.centerY() + 5 * dp, tp);
        }
    }
}
