package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.Application;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.Layout;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AbsListView;
import android.widget.ScrollView;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * Always-visible scrollbars on every screen: ScrollViews and lists stop fading their (game-styled) scrollbar,
 * and scrollable description boxes (TextViews with a ScrollingMovementMethod, e.g. ship descriptions) get a
 * drawn thumb in the view overlay. The overlay is used because enabling a TextView's built-in scrollbar after
 * inflation leaves it without a ScrollBarDrawable and crashes in View.onDrawScrollBars (v16.7 Ships tab).
 */
public final class ModScroll {
    private ModScroll() {}

    private static boolean registered;
    private static final Map<View, Boolean> decors = new WeakHashMap<View, Boolean>();
    private static final Map<TextView, Drawable> thumbs = new WeakHashMap<TextView, Drawable>();

    /** Hook: CommonActivity.onResume, and ModUi.ships for the Ships screen. */
    public static void attach(Activity a) {
        try {
            if (!registered) {
                registered = true;
                a.getApplication().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
                    public void onActivityResumed(Activity act) { hook(act); }
                    public void onActivityCreated(Activity act, Bundle b) {}
                    public void onActivityStarted(Activity act) {}
                    public void onActivityPaused(Activity act) { ModSound.stopAll(); }
                    public void onActivityStopped(Activity act) {}
                    public void onActivitySaveInstanceState(Activity act, Bundle b) {}
                    public void onActivityDestroyed(Activity act) {}
                });
            }
            hook(a);
        } catch (Throwable t) {
            // scrollbars are cosmetic
        }
    }

    private static void hook(Activity a) {
        ModTitan.attachUi(a);
        ModComms.attachUi(a);
        ModFitting.attach(a);
        ModLang.watch(a);
        try {
            final View decor = a.getWindow().getDecorView();
            if (decors.containsKey(decor)) {
                scan(decor);
                return;
            }
            decors.put(decor, Boolean.TRUE);
            ViewTreeObserver vto = decor.getViewTreeObserver();
            vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                public void onGlobalLayout() {
                    try { scan(decor); } catch (Throwable t) { /* cosmetic */ }
                }
            });
            vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
                public boolean onPreDraw() {
                    try { place(); } catch (Throwable t) { /* cosmetic */ }
                    return true;
                }
            });
            scan(decor);
        } catch (Throwable t) {
            // cosmetic
        }
    }

    private static void scan(View v) {
        if (v instanceof ScrollView || v instanceof AbsListView) {
            // only views inflated with a scrollbar have its drawable; never switch one on here
            if (v.isVerticalScrollBarEnabled() && v.isScrollbarFadingEnabled()) v.setScrollbarFadingEnabled(false);
        } else if (v instanceof TextView && ((TextView) v).getMovementMethod() instanceof ScrollingMovementMethod) {
            track((TextView) v);
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) scan(g.getChildAt(i));
        }
    }

    /** Gives a scrollable TextView a permanent thumb (idempotent). */
    public static void track(TextView tv) {
        try {
            if (thumbs.containsKey(tv)) return;
            float d = tv.getResources().getDisplayMetrics().density;
            GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{0xFF70CBF0, 0xFF358DB5});
            g.setCornerRadius(3 * d);
            g.setBounds(0, 0, 0, 0);
            Object overlay = View.class.getMethod("getOverlay").invoke(tv);   // API 18+
            Method add = overlay.getClass().getMethod("add", Drawable.class);
            add.invoke(overlay, g);
            thumbs.put(tv, g);
        } catch (Throwable t) {
            thumbs.put(tv, null);   // no overlay on this device: text still scrolls by touch
        }
    }

    private static void place() {
        if (thumbs.isEmpty()) return;
        // every UI frame (pre-draw): iterate in place, nothing below touches the map
        for (Map.Entry<TextView, Drawable> e : thumbs.entrySet()) {
            TextView tv = e.getKey();
            Drawable g = e.getValue();
            if (tv == null || g == null || tv.getWidth() == 0) continue;
            Layout l = tv.getLayout();
            int extent = tv.getHeight();
            int range = l == null ? 0 : l.getHeight() + tv.getTotalPaddingTop() + tv.getTotalPaddingBottom();
            int left = 0, top = 0, right = 0, bottom = 0;
            if (range > extent + 2) {
                float d = tv.getResources().getDisplayMetrics().density;
                int pad = (int) (6 * d);
                int avail = extent - 2 * pad;
                int th = Math.max((int) (24 * d), avail * extent / range);
                if (th > avail) th = avail;
                float f = Math.max(0f, Math.min(1f, tv.getScrollY() / (float) (range - extent)));
                // overlay drawables are drawn in the view's scrolled coordinates
                top = tv.getScrollY() + pad + (int) ((avail - th) * f);
                bottom = top + th;
                right = tv.getScrollX() + tv.getWidth() - (int) (3 * d);
                left = right - (int) (4 * d);
            }
            android.graphics.Rect b = g.getBounds();
            if (b.left != left || b.top != top || b.right != right || b.bottom != bottom) {
                g.setBounds(left, top, right, bottom);
                tv.invalidate();
            }
        }
    }
}
