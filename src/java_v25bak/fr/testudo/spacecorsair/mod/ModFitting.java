package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import fr.testudo.spacecorsair.activity.viewgroup.SpaceObjectListener;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.Hyperdrive.HyperdriveEngineSpec;
import fr.testudo.spacecorsair.business.loot.stuff.booster.BoosterSpec;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.loot.stuff.shield.ShieldSpec;
import fr.testudo.spacecorsair.business.player.Inventory;
import fr.testudo.spacecorsair.business.player.PlayerGear;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/**
 * v25 EVE-style fitting view for the My Ship screen (MyShipActivity).
 *
 * An overlay is added on top of the activity content; the original views stay underneath and every action goes
 * through them (performClick on the original slot icons, Details, Inventory, Cash shop, Ships buttons) or through
 * the activity's own SpaceObjectListener.onEquip (the inventory list's Equip flow). The overlay hides itself while
 * the original inventory / cash-shop popup is open, and the CLASSIC / FITTING toggle (remembered in prefs) shows the
 * untouched original screen. Entry point: {@link #attach(Activity)}, idempotent and cheap.
 */
public final class ModFitting {
    private ModFitting() {}

    static final String TAG = "modFitting";
    static final String TAG_BTN = "modFittingBtn";
    private static final String PREF = "fitClassic";

    static final int BG = 0xFF050B16, CYAN = 0xFF6AD0FF, GREY = 0xFFB0C4DA, DIM = 0xFF4A5868, PANEL = 0xCC0B1A2E;
    static final int HIGH_C = 0xFFFF8A5C, MID_C = 0xFF6AD0FF, LOW_C = 0xFF9BE15D, GOOD = 0xFF41FF16, BAD = 0xFFFF5A4A;

    // slots
    static final int LASER = 0, MISSILE = 1, SHIELD = 2, BOOSTER = 3, HYPER = 4, HULL = 5, N = 6;
    static final String[] SLOT_NAME = {"WEAPON", "LAUNCHER", "SHIELD", "BOOSTER", "HYPERDRIVE", "HULL"};
    static final String[] SLOT_GROUP = {"HIGH SLOT", "HIGH SLOT", "MID SLOT", "MID SLOT", "LOW SLOT", "HULL"};
    static final int[] SLOT_COLOR = {HIGH_C, HIGH_C, MID_C, MID_C, LOW_C, GREY};
    /** Tile angle around the ring, degrees clockwise from the top. */
    static final float[] SLOT_ANGLE = {-36, 36, -90, 90, 142, -142};
    /** The original view each slot taps (MyShipActivity_ wires these ids to showLaser / showMissile / ...). */
    static final String[] ORIG_ID = {"imgLaser", "imgMissile", "imgShield", "imgBooster", "imgHyperdrive", "txtShowShips"};

    // ------------------------------------------------------------------ cached art (decoded once)
    private static boolean uiArtTried;
    private static Bitmap artBg, artRing, artSlot, artSlotEmpty;
    private static String shipKey;
    private static Bitmap shipArt;

    private static void loadUiArt(Context c) {
        if (uiArtTried) return;
        uiArtTried = true;
        artBg = ModArt.decode(c, "ui_fit_bg", 1024);
        artRing = ModArt.decode(c, "ui_fit_ring", 1024);
        artSlot = ModArt.decode(c, "ui_fit_slot", 128);
        artSlotEmpty = ModArt.decode(c, "ui_fit_slot_empty", 128);
    }

    // ================================================================== entry points

    /**
     * Hook: every activity resume (ModScroll.hook). Does nothing unless the activity is the My Ship screen; on that
     * screen it adds the overlay once and refreshes it. Safe to call any number of times.
     */
    public static void attach(Activity a) {
        if (busy) return;   // re-entrant call while the overlay is being built
        ViewGroup root = null;
        busy = true;
        try {
            if (a == null || !a.getClass().getName().contains("MyShipActivity")) return;
            root = (ViewGroup) a.findViewById(android.R.id.content);
            if (root == null) return;
            View v = root.findViewWithTag(TAG);
            Overlay o;
            if (v instanceof Overlay) {
                o = (Overlay) v;
            } else {
                if (!ready()) return;
                if (a.getResources().getConfiguration().screenWidthDp < 480) return;   // too narrow: keep the original
                o = new Overlay(a, root);
            }
            o.tick(true);
        } catch (Throwable t) {
            try {
                View v = root == null ? null : root.findViewWithTag(TAG);
                fail(v instanceof Overlay ? (Overlay) v : null);
            } catch (Throwable t2) {
                // nothing more to do
            }
        } finally {
            busy = false;
        }
    }

    private static boolean busy;

    /** Optional extra hook (e.g. after MyShipActivity.updateUI): forces a rebuild of the overlay data. */
    public static void refresh(Activity a) {
        attach(a);
    }

    private static boolean ready() {
        try {
            ObjectRegistry r = ObjectRegistry.INSTANCE;
            return r.game != null && r.game.playerInfo != null && r.game.playerInfo.playerGear != null
                && r.game.playerCurrentShipInventory != null && r.playerShip != null;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Anything went wrong: remove the overlay for good on this activity, the original screen stays usable. */
    private static void fail(Overlay o) {
        try {
            if (o == null) return;
            o.broken = true;
            o.stop();
            o.setVisibility(View.GONE);
            if (o.toggle != null) o.toggle.setVisibility(View.GONE);
        } catch (Throwable t) {
            // nothing more to do
        }
    }

    // ================================================================== helpers

    static float dp(Context c) {
        return c.getResources().getDisplayMetrics().density;
    }

    private static SharedPreferences prefs(Context c) {
        try {
            return c.getSharedPreferences("modqol", 0);
        } catch (Throwable t) {
            return null;
        }
    }

    static boolean classic(Context c, String tv) {
        if ("classic".equals(tv)) return true;
        if (tv != null && tv.startsWith("fit")) return false;
        SharedPreferences p = prefs(c);
        return p != null && p.getBoolean(PREF, false);
    }

    static void setClassic(Context c, boolean v) {
        SharedPreferences p = prefs(c);
        if (p != null) p.edit().putBoolean(PREF, v).commit();
    }

    static View orig(Activity a, String name) {
        try {
            int id = a.getResources().getIdentifier(name, "id", a.getPackageName());
            return id == 0 ? null : a.findViewById(id);
        } catch (Throwable t) {
            return null;
        }
    }

    static boolean click(Activity a, String name) {
        View v = orig(a, name);
        if (v == null) return false;
        try {
            return v.performClick();
        } catch (Throwable t) {
            return false;
        }
    }

    static Field field(Class<?> c, String name) {
        for (; c != null && c != Object.class; c = c.getSuperclass()) {
            try {
                Field f = c.getDeclaredField(name);
                f.setAccessible(true);
                return f;
            } catch (Throwable t) {
                // try the superclass
            }
        }
        return null;
    }

    static TextView text(Context c, float sp, int color, boolean bold) {
        TextView t = new TextView(c);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        t.setIncludeFontPadding(false);
        if (bold) t.setTypeface(Typeface.DEFAULT_BOLD);
        return t;
    }

    static GradientDrawable box(int fill, int stroke, float strokePx, float radiusPx) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(fill);
        if (strokePx > 0) g.setStroke(Math.max(1, (int) strokePx), stroke);
        g.setCornerRadius(radiusPx);
        return g;
    }

    static Button button(Context c, String label, int color) {
        float d = dp(c);
        Button b = new Button(c);
        b.setText(label);
        b.setAllCaps(false);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
        b.setTypeface(Typeface.DEFAULT_BOLD);
        b.setTextColor(color);
        b.setBackgroundDrawable(box(0xCC0B2238, color, 1.2f * d, 4 * d));
        b.setPadding((int) (10 * d), (int) (4 * d), (int) (10 * d), (int) (4 * d));
        b.setMinWidth(0);
        b.setMinimumWidth(0);
        b.setMinHeight(0);
        b.setMinimumHeight(0);
        return b;
    }

    static int rarityColor(Context c, SpaceObjectType t) {
        try {
            return c.getResources().getColor(t.getRarety().getColor());
        } catch (Throwable e) {
            return Color.WHITE;
        }
    }

    static String label(SpaceObjectType t) {
        try {
            String s = t.getLocalizedLabel();
            return s == null ? t.name() : s;
        } catch (Throwable e) {
            return t.name();
        }
    }

    static SpaceObjectType gear(int slot) {
        PlayerGear g = ObjectRegistry.INSTANCE.game.playerInfo.playerGear;
        switch (slot) {
            case LASER: return g.laser;
            case MISSILE: return g.missile;
            case SHIELD: return g.shield;
            case BOOSTER: return g.booster;
            case HYPER: return g.hyperdriveEngine;
            default: return g.playerShip;
        }
    }

    static GearSpec.Type type(int slot) {
        switch (slot) {
            case LASER: return GearSpec.Type.LASER;
            case MISSILE: return GearSpec.Type.MISSILE;
            case SHIELD: return GearSpec.Type.SHIELD;
            case BOOSTER: return GearSpec.Type.BOOSTER;
            case HYPER: return GearSpec.Type.HYPERDRIVE_ENGINE;
            default: return GearSpec.Type.SHIP;
        }
    }

    /** The game's "nothing fitted" items (no missile mod, no booster, no hyperdrive). */
    static boolean empty(SpaceObjectType t) {
        if (t == null) return true;
        if (t == SpaceObjectType.noMissileMod || t == SpaceObjectType.nopBooster || t == SpaceObjectType.nopHyperdriveEngine) return true;
        GearSpec g = t.getGearSpec();
        if (g instanceof BoosterSpec) return !((BoosterSpec) g).boosterEnabled;
        if (g instanceof HyperdriveEngineSpec) return !((HyperdriveEngineSpec) g).enabled;
        return false;
    }

    static String f1(float v) {
        float r = Math.round(v * 10) / 10.0f;
        return r == (int) r ? String.valueOf((int) r) : String.valueOf(r);
    }

    static String pct(float mult) {
        int p = Math.round((mult - 1) * 100);
        return (p > 0 ? "+" : "") + p + "%";
    }

    /** One-line stats of an item, straight from its spec. */
    static String statLine(SpaceObjectType t) {
        GearSpec g = t == null ? null : t.getGearSpec();
        if (g == null) return "";
        String lv = "Lv " + g.level;
        if (g instanceof LaserSpec) {
            LaserSpec l = (LaserSpec) g;
            return lv + " · DPS " + (int) l.getDps() + " · " + l.damage + " dmg / " + l.reload + " ms";
        }
        if (g instanceof MissileSpec) {
            MissileSpec m = (MissileSpec) g;
            if (empty(t)) return "No launcher fitted";
            return lv + " · " + (int) m.damage + " + " + (int) m.radiusDamage + " dmg · reload " + f1(m.reloadSpeedInMilli / 1000f) + " s · max " + m.maxCountInventory;
        }
        if (g instanceof ShieldSpec) {
            ShieldSpec s = (ShieldSpec) g;
            return lv + " · " + s.capacity + " HP · +" + s.reloadBySec + "/s · delay " + f1(s.deadTime / 1000f) + " s";
        }
        if (g instanceof BoosterSpec) {
            BoosterSpec b = (BoosterSpec) g;
            if (!b.boosterEnabled) return "No booster fitted";
            return lv + " · thrust x" + f1(b.boostPower) + " · " + f1(b.shieldConsumeBySecInPourc) + "% shield/s";
        }
        if (g instanceof HyperdriveEngineSpec) {
            HyperdriveEngineSpec h = (HyperdriveEngineSpec) g;
            if (!h.enabled) return "No hyperdrive fitted";
            return lv + " · " + f1(h.energyCellsPerUnit) + " energy cells / unit";
        }
        if (g instanceof PlayerShipSpec) {
            PlayerShipSpec p = (PlayerShipSpec) g;
            return lv + " · " + ModShips.className(t) + " " + ModShips.techName(t) + " · speed " + p.maxSpeedInformational + " · armour " + p.armorInformational;
        }
        return lv;
    }

    /** Comparable headline number of an item (DPS, shield HP, missile damage, boost, cells), or NaN. */
    static float headline(SpaceObjectType t) {
        GearSpec g = t == null ? null : t.getGearSpec();
        if (g instanceof LaserSpec) return ((LaserSpec) g).getDps();
        if (g instanceof ShieldSpec) return ((ShieldSpec) g).capacity;
        if (g instanceof MissileSpec) return empty(t) ? 0 : ((MissileSpec) g).damage + ((MissileSpec) g).radiusDamage;
        if (g instanceof BoosterSpec) return empty(t) ? 0 : ((BoosterSpec) g).boostPower;
        return Float.NaN;
    }

    /** Sustained laser DPS of the fitted ship, from the live PlayerShip values (hull bonuses included). */
    static float fittedDps(PlayerShip ps) {
        try {
            if (ps.laserSpec == null) return 0;
            float alt = ps.alterationReloadValue > 0 ? ps.alterationReloadValue : 1;
            if (!ModSpecs.isBeam(ps.laserSpec) && ps.shipSpec != null && ps.shipSpec.laserType.useJoystick && ps.playerCannons != null) {
                float s = 0;
                for (int i = 0; i < ps.playerCannons.length; i++) {
                    if (ps.playerCannons[i] != null && ps.playerCannons[i].timeBewteenShootInMilli > 0) {
                        s += ps.playerCannons[i].shootDamage * 1000f / ps.playerCannons[i].timeBewteenShootInMilli;
                    }
                }
                return s / alt;
            }
            if (ps.milleSecBetweenShots <= 0) return 0;
            int shots = ModSpecs.isBeam(ps.laserSpec) ? 1 : 2;   // fixed guns fire a pair (PlayerShip.shoot)
            return shots * ps.bulletDamage * 1000f / ps.milleSecBetweenShots / alt;
        } catch (Throwable t) {
            return 0;
        }
    }

    static int guns(PlayerShip ps) {
        try {
            if (ModSpecs.isBeam(ps.laserSpec)) return 1;
            if (ps.shipSpec.laserType.useJoystick && ps.playerCannons != null) return ps.playerCannons.length;
            return 2;
        } catch (Throwable t) {
            return 0;
        }
    }

    // ================================================================== actions (all through the original screen)

    static void openSlot(Activity a, int slot) {
        if (slot == HULL) {
            if (!click(a, "txtShowShips")) invoke(a, "openShipsActivity");
            return;
        }
        click(a, ORIG_ID[slot]);   // the original selection (updates its details panel underneath)
        Picker.show(a, slot);
    }

    /** Same as the original Details button for this slot. */
    static void details(Activity a, int slot) {
        if (slot == HULL) {
            click(a, "txtShowShips");
            return;
        }
        click(a, ORIG_ID[slot]);
        if (!click(a, "btnEquipedDetails")) invoke(a, "showEquipedDetails");
    }

    /** The inventory list's Equip button: MyShipActivity.spaceObjectListener.onEquip (equipObject + updateUI). */
    static void equip(Activity a, SpaceObject so) {
        try {
            Field f = field(a.getClass(), "spaceObjectListener");
            Object l = f == null ? null : f.get(a);
            if (l instanceof SpaceObjectListener) {
                ((SpaceObjectListener) l).onEquip(so);
                return;
            }
        } catch (Throwable t) {
            // fall back below
        }
        try {
            ObjectRegistry.INSTANCE.game.playerInfo.equipObject(so.getSpaceObjectType());
        } catch (Throwable t) {
            // nothing equipped
        }
        invoke(a, "updateUI");
    }

    static void invoke(Activity a, String name) {
        try {
            Method m = a.getClass().getMethod(name);
            m.invoke(a);
        } catch (Throwable t) {
            // not available
        }
    }

    // ================================================================== overlay

    static final class Overlay extends FrameLayout {
        final Activity act;
        final float d;
        Button toggle;
        boolean broken;
        long sig = Long.MIN_VALUE;
        boolean testDone;
        final String testFit = ModDev.testValue("corsair_fit");   // emulator tests: classic | fit | fit_<slot>
        View lists;   // the original inventory / cash-shop popup (layListviews)
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable poll = new Runnable() {
            public void run() {
                try {
                    tick(false);
                } catch (Throwable t) {
                    fail(Overlay.this);
                }
            }
        };

        // views
        ImageView emblem;
        TextView name, sub, faction, credits, creditsInApp, level;
        Bar hullBar, shieldBar, xpBar, cargoBar, ammoBar;
        RingView ring;
        LinearLayout stats;
        final Tile[] tiles = new Tile[N];

        Overlay(Activity a, ViewGroup root) {
            super(a);
            act = a;
            d = dp(a);
            setTag(TAG);
            setClickable(true);   // the original screen underneath never gets the touches
            loadUiArt(a);
            if (artBg != null) {
                ImageView bg = new ImageView(a);
                bg.setScaleType(ImageView.ScaleType.CENTER_CROP);
                bg.setImageBitmap(artBg);
                addView(bg, new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
                View shade = new View(a);
                shade.setBackgroundColor(0x99050B16);
                addView(shade, new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            } else {
                GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{BG, 0xFF0A1626, BG});
                setBackgroundDrawable(g);
            }
            LinearLayout main = new LinearLayout(a);
            main.setOrientation(LinearLayout.VERTICAL);
            int pad = (int) (8 * d);
            main.setPadding(pad, (int) (4 * d), pad, pad);
            addView(main, new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            main.addView(header(a), new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (46 * d)));
            View line = new View(a);
            line.setBackgroundColor(0x806AD0FF);
            main.addView(line, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Math.max(1, (int) d)));

            LinearLayout body = new LinearLayout(a);
            body.setOrientation(LinearLayout.HORIZONTAL);
            main.addView(body, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1));
            body.addView(left(a), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 27));
            ring = new RingView(a);
            for (int i = 0; i < N; i++) {
                final int slot = i;
                tiles[i] = new Tile(a, slot);
                tiles[i].setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) { openSlot(act, slot); }
                });
                ring.addView(tiles[i]);
            }
            body.addView(ring, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 42));
            body.addView(right(a), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 31));

            root.addView(this, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

            // FITTING button on the classic screen
            toggle = button(a, "FITTING", CYAN);
            toggle.setTag(TAG_BTN);
            toggle.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    setClassic(act, false);
                    tick(true);
                }
            });
            FrameLayout.LayoutParams tl = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.CENTER_HORIZONTAL);
            tl.topMargin = (int) (6 * d);
            root.addView(toggle, tl);
            toggle.setVisibility(View.GONE);
        }

        private View header(Activity a) {
            LinearLayout h = new LinearLayout(a);
            h.setOrientation(LinearLayout.HORIZONTAL);
            h.setGravity(Gravity.CENTER_VERTICAL);
            emblem = new ImageView(a);
            emblem.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams el = new LinearLayout.LayoutParams((int) (36 * d), (int) (36 * d));
            el.rightMargin = (int) (8 * d);
            h.addView(emblem, el);
            LinearLayout t = new LinearLayout(a);
            t.setOrientation(LinearLayout.VERTICAL);
            name = text(a, 17, Color.WHITE, true);
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            t.addView(name);
            sub = text(a, 11, GREY, false);
            sub.setSingleLine(true);
            sub.setEllipsize(TextUtils.TruncateAt.END);
            sub.setPadding(0, (int) (3 * d), 0, 0);
            t.addView(sub);
            h.addView(t, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
            faction = text(a, 12, CYAN, true);
            faction.setSingleLine(true);
            faction.setEllipsize(TextUtils.TruncateAt.END);
            LinearLayout.LayoutParams fl = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
            fl.leftMargin = (int) (14 * d);
            h.addView(faction, fl);
            credits = text(a, 12, Color.WHITE, true);
            credits.setGravity(Gravity.CENTER_VERTICAL);
            credits.setCompoundDrawablePadding((int) (4 * d));
            credits.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { if (!click(act, "txtCredits")) invoke(act, "showInAppCredits"); }
            });
            h.addView(credits);
            creditsInApp = text(a, 12, Color.WHITE, true);
            creditsInApp.setGravity(Gravity.CENTER_VERTICAL);
            creditsInApp.setCompoundDrawablePadding((int) (4 * d));
            creditsInApp.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { if (!click(act, "txtCreditsInApp")) invoke(act, "showInAppCredits"); }
            });
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            cl.leftMargin = (int) (12 * d);
            h.addView(creditsInApp, cl);
            level = text(a, 12, CYAN, true);
            LinearLayout.LayoutParams ll = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            ll.leftMargin = (int) (12 * d);
            h.addView(level, ll);
            Button classic = button(a, "CLASSIC", GREY);
            classic.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    setClassic(act, true);
                    tick(true);
                }
            });
            LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            bl.leftMargin = (int) (12 * d);
            h.addView(classic, bl);
            return h;
        }

        private TextView section(Context c, String s) {
            TextView t = text(c, 11, CYAN, true);
            t.setText(s);
            t.setPadding(0, (int) (8 * d), 0, (int) (3 * d));
            return t;
        }

        private View left(Activity a) {
            LinearLayout l = new LinearLayout(a);
            l.setOrientation(LinearLayout.VERTICAL);
            l.setPadding(0, (int) (2 * d), (int) (8 * d), 0);
            l.addView(section(a, "SHIP STATUS"));
            hullBar = new Bar(a, "HULL", 0xFF4ADE6A);
            shieldBar = new Bar(a, "SHIELD", CYAN);
            xpBar = new Bar(a, "XP", 0xFFFFD93F);
            LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (17 * d));
            bl.bottomMargin = (int) (4 * d);
            l.addView(hullBar, bl);
            l.addView(shieldBar, new LinearLayout.LayoutParams(bl));
            l.addView(xpBar, new LinearLayout.LayoutParams(bl));
            l.addView(section(a, "CARGO HOLD"));
            cargoBar = new Bar(a, "CARGO", 0xFFE0A050);
            cargoBar.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { if (!click(act, "txtShowInventory")) invoke(act, "showPopupInventory"); }
            });
            l.addView(cargoBar, new LinearLayout.LayoutParams(bl));
            ammoBar = new Bar(a, "MISSILES", HIGH_C);
            l.addView(ammoBar, new LinearLayout.LayoutParams(bl));
            View sp = new View(a);
            l.addView(sp, new LinearLayout.LayoutParams(1, 0, 1));
            l.addView(action(a, "INVENTORY", "txtShowInventory", "showPopupInventory"));
            l.addView(action(a, "CASH SHOP", "txtShowStore", "showPopupStore"));
            l.addView(action(a, "SHIPS", "txtShowShips", "openShipsActivity"));
            return l;
        }

        private View action(Activity a, String label, final String id, final String method) {
            Button b = button(a, label, Color.WHITE);
            b.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { if (!click(act, id)) invoke(act, method); }
            });
            b.setPadding((int) (10 * d), (int) (7 * d), (int) (10 * d), (int) (7 * d));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.topMargin = (int) (5 * d);
            b.setLayoutParams(lp);
            return b;
        }

        private View right(Activity a) {
            ScrollView sv = new ScrollView(a);
            sv.setFillViewport(false);
            sv.setBackgroundDrawable(box(0x990B1A2E, 0x406AD0FF, d, 6 * d));
            stats = new LinearLayout(a);
            stats.setOrientation(LinearLayout.VERTICAL);
            int p = (int) (8 * d);
            stats.setPadding(p, 0, p, p);
            sv.addView(stats);
            FrameLayout f = new FrameLayout(a);
            f.setPadding((int) (8 * d), (int) (6 * d), 0, 0);
            f.addView(sv, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            return f;
        }

        // -------------------------------------------------------------- update loop

        void stop() {
            handler.removeCallbacks(poll);
        }

        @Override
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            stop();
        }

        /** Visibility (classic / popup lists) and data refresh when anything changed. Cheap when nothing did. */
        void tick(boolean force) {
            stop();
            if (broken || act.isFinishing()) return;
            if (lists == null) lists = orig(act, "layListviews");
            boolean listsOpen = lists != null && lists.getVisibility() == View.VISIBLE;
            boolean cls = classic(act, testFit);
            int want = (!cls && !listsOpen) ? View.VISIBLE : View.GONE;
            if (getVisibility() != want) {
                setVisibility(want);
                if (want == View.VISIBLE) force = true;
            }
            int tw = (cls && !listsOpen) ? View.VISIBLE : View.GONE;
            if (toggle != null && toggle.getVisibility() != tw) toggle.setVisibility(tw);
            if (want == View.VISIBLE) {
                ViewGroup parent = (ViewGroup) getParent();
                if (parent != null && parent.getChildAt(parent.getChildCount() - 1) != this && parent.getChildAt(parent.getChildCount() - 1) != toggle) bringToFront();
                long s = signature();
                if (force || (s != sig && act.hasWindowFocus())) {
                    sig = s;
                    bind();
                }
                testPick();
            }
            if (getWindowToken() != null || force) handler.postDelayed(poll, act.hasWindowFocus() ? 400 : 1200);
        }

        private long signature() {
            ObjectRegistry r = ObjectRegistry.INSTANCE;
            PlayerInfo pi = r.game.playerInfo;
            PlayerGear g = pi.playerGear;
            Inventory inv = r.game.playerCurrentShipInventory;
            PlayerShip ps = r.playerShip;
            long h = 17;
            h = h * 31 + System.identityHashCode(g.playerShip);
            h = h * 31 + System.identityHashCode(g.laser);
            h = h * 31 + System.identityHashCode(g.missile);
            h = h * 31 + System.identityHashCode(g.shield);
            h = h * 31 + System.identityHashCode(g.booster);
            h = h * 31 + System.identityHashCode(g.hyperdriveEngine);
            h = h * 31 + pi.level;
            h = h * 31 + pi.curXp;
            h = h * 31 + inv.getCredit();
            h = h * 31 + inv.getCreditInApp();
            h = h * 31 + inv.getTotalWeight();
            h = h * 31 + inv.getCapacityInTon();
            h = h * 31 + inv.getMissileCount();
            if (ps != null) {
                h = h * 31 + (int) ps.life;
                h = h * 31 + (int) ps.maxLife;
                if (ps.shield != null) {
                    h = h * 31 + (int) ps.shield.capacity;
                    h = h * 31 + (int) ps.shield.currentValue;
                }
            }
            return h;
        }

        private void testPick() {
            if (testDone) return;
            testDone = true;
            String tv = testFit;
            if (tv == null || !tv.startsWith("fit_")) return;
            String s = tv.substring(4).toUpperCase(Locale.US);
            for (int i = 0; i < N; i++) {
                if (SLOT_NAME[i].equals(s)) {
                    final int slot = i;
                    handler.postDelayed(new Runnable() { public void run() { try { openSlot(act, slot); } catch (Throwable t) { /* test only */ } } }, 800);
                }
            }
        }

        // -------------------------------------------------------------- data binding (only when something changed)

        void bind() {
            ObjectRegistry r = ObjectRegistry.INSTANCE;
            PlayerInfo pi = r.game.playerInfo;
            Inventory inv = r.game.playerCurrentShipInventory;
            PlayerShip ps = r.playerShip;
            SpaceObjectType ship = pi.playerGear.playerShip;
            ModShips.Hull hull = ModShips.hull(ship);
            PlayerShipSpec spec = ship.getGearSpec() instanceof PlayerShipSpec ? (PlayerShipSpec) ship.getGearSpec() : null;

            // header
            name.setText(hull != null ? hull.name : label(ship));
            name.setTextColor(rarityColor(act, ship));
            StringBuilder sb = new StringBuilder();
            sb.append(ModShips.className(ship));
            String tech = ModShips.techName(ship);
            if (tech.length() > 0) sb.append(" · ").append(tech);
            if (hull != null && hull.role != null && hull.role.length() > 0) sb.append(" · ").append(hull.role);
            if (spec != null && spec.sizeInformational != null) {
                try { sb.append(" · ").append(spec.sizeInformational.getLocalizedLabel()); } catch (Throwable t) { /* no label */ }
            }
            sub.setText(sb.toString());
            int fi = factionIndex(hull);
            if (hull == null) { int g = ModShipTree.group(ship); if (g < ModShipTree.IND) fi = g; }
            if (fi >= 0) {
                ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
                faction.setText(f.name.toUpperCase(Locale.US));
                faction.setTextColor(Color.rgb((int) (f.r * 255), (int) (f.g * 255), (int) (f.b * 255)));
                Bitmap em = ModComms.asset(act, "emblem_" + f.key);
                emblem.setImageBitmap(em);
                emblem.setVisibility(em != null ? View.VISIBLE : View.GONE);
            } else {
                String fn = hull != null && hull.faction.length() > 0 ? hull.faction : "Independent";
                faction.setText(fn.toUpperCase(Locale.US));
                faction.setTextColor(GREY);
                emblem.setImageBitmap(null);
                emblem.setVisibility(View.GONE);
            }
            NumberFormat nf = NumberFormat.getNumberInstance(Locale.getDefault());
            credits.setText(nf.format(inv.getCredit()));
            creditsInApp.setText(nf.format(inv.getCreditInApp()));
            setIcon(credits, "imgCredits");
            setIcon(creditsInApp, "imgCreditsInApp");
            level.setText("LV " + pi.level);

            // left bars
            if (ps != null) {
                hullBar.set(ps.maxLife > 0 ? ps.life / ps.maxLife : 0, (int) ps.life + " / " + (int) ps.maxLife);
                if (ps.shield != null) shieldBar.set(ps.shield.capacity > 0 ? ps.shield.currentValue / ps.shield.capacity : 0, (int) ps.shield.currentValue + " / " + (int) ps.shield.capacity);
            }
            xpBar.set(pi.nextLevelXp > 0 ? (float) pi.curXp / pi.nextLevelXp : 0, (int) (pi.nextLevelXp > 0 ? pi.curXp * 100 / pi.nextLevelXp : 0) + "%");
            int cap = inv.getCapacityInTon();
            cargoBar.set(cap > 0 ? (float) inv.getTotalWeight() / cap : 0, inv.getTotalWeight() + " / " + cap + " t");
            GearSpec mg = pi.playerGear.missile == null ? null : pi.playerGear.missile.getGearSpec();
            MissileSpec ms = mg instanceof MissileSpec ? (MissileSpec) mg : null;
            int mc = inv.getMissileCount();
            int mmax = ms == null ? 0 : ms.maxCountInventory;
            ammoBar.set(mmax > 0 ? (float) mc / mmax : 0, empty(pi.playerGear.missile) ? mc + " (no launcher)" : mc + " / " + mmax);

            // ring + tiles
            ring.setShip(act, ship, hull, spec);
            for (int i = 0; i < N; i++) tiles[i].bind(gear(i));

            // stats
            buildStats(ps, pi, inv, ship, hull, spec);
        }

        private void setIcon(TextView tv, String id) {
            if (tv.getCompoundDrawables()[0] != null) return;
            try {
                View v = orig(act, id);
                if (!(v instanceof ImageView)) return;
                Drawable dr = ((ImageView) v).getDrawable();
                if (dr == null || dr.getConstantState() == null) return;
                Drawable c = dr.getConstantState().newDrawable(act.getResources()).mutate();
                int s = (int) (16 * d);
                c.setBounds(0, 0, s, s);
                tv.setCompoundDrawables(c, null, null, null);
            } catch (Throwable t) {
                // text only
            }
        }

        private void buildStats(PlayerShip ps, PlayerInfo pi, Inventory inv, SpaceObjectType ship, ModShips.Hull hull, PlayerShipSpec spec) {
            stats.removeAllViews();
            Context c = act;
            stats.addView(section(c, "DEFENSE"));
            if (ps != null) {
                row("Hull HP", (int) ps.life + " / " + (int) ps.maxLife);
                if (ps.shield != null) {
                    row("Shield HP", (int) ps.shield.currentValue + " / " + (int) ps.shield.capacity);
                    row("Shield regen", "+" + f1(ps.shield.reloadUnitBySec) + " /s");
                    row("Regen delay", f1(ps.shield.reloadTime / 1000f) + " s");
                }
            }
            if (spec != null) row("Armour rating", spec.armorInformational + " / 100");
            if (hull != null && hull.hullRegen > 0) row("Hull repair", f1(hull.hullRegen * 100) + "% /s");

            stats.addView(section(c, "OFFENSE"));
            if (ps != null && ps.laserSpec != null) {
                String mount = "";
                try { mount = spec.laserType.getLocalizedLabel(); } catch (Throwable t) { mount = ""; }
                if (ModSpecs.isBeam(ps.laserSpec)) mount = "Beam";
                row("Guns", guns(ps) + (mount.length() > 0 ? " · " + mount : ""));
                row("Damage / shot", String.valueOf((int) ps.bulletDamage));
                row("Cycle time", ps.milleSecBetweenShots + " ms");
                row("Laser DPS (item)", String.valueOf((int) ps.laserSpec.getDps()));
                row("Fitted DPS (est.)", String.valueOf(Math.round(fittedDps(ps))));
            }
            SpaceObjectType mt = pi.playerGear.missile;
            if (!empty(mt) && ps != null && ps.missileSpec != null) {
                row("Missile damage", (int) ps.missileSpec.damage + " + " + (int) ps.missileSpec.radiusDamage);
                row("Missile reload", f1(ps.milleSecBetweenMissileShots / 1000f) + " s");
                if (spec != null) row("Launchers", String.valueOf(spec.missileCount));
                row("Missiles", inv.getMissileCount() + " / " + ps.missileSpec.maxCountInventory);
            } else {
                row("Missiles", "no launcher");
            }

            stats.addView(section(c, "NAVIGATION"));
            if (spec != null) {
                row("Top speed", spec.maxSpeedInformational + " / 100");
                row("Agility", spec.agilityInformational + " / 100");
                row("Mass", String.valueOf(spec.mass));
            }
            SpaceObjectType bt = pi.playerGear.booster;
            BoosterSpec bs = bt != null && bt.getGearSpec() instanceof BoosterSpec ? (BoosterSpec) bt.getGearSpec() : null;
            row("Booster", empty(bt) || bs == null ? "none" : "x" + f1(bs.boostPower) + " · " + f1(bs.shieldConsumeBySecInPourc) + "% sh/s");
            SpaceObjectType ht = pi.playerGear.hyperdriveEngine;
            HyperdriveEngineSpec hs = ht != null && ht.getGearSpec() instanceof HyperdriveEngineSpec ? (HyperdriveEngineSpec) ht.getGearSpec() : null;
            row("Hyperdrive", empty(ht) || hs == null ? "none" : f1(hs.energyCellsPerUnit) + " cells/unit");

            stats.addView(section(c, "CARGO"));
            row("Hold", inv.getTotalWeight() + " / " + inv.getCapacityInTon() + " t");
            if (hull != null && hull.cargo != 1) row("Hull cargo bonus", pct(hull.cargo));

            if (hull != null) {
                StringBuilder b = new StringBuilder();
                if (hull.dmg != 1) b.append("Laser damage ").append(pct(hull.dmg)).append('\n');
                if (hull.reload != 1) b.append("Laser reload time ").append(pct(hull.reload)).append('\n');
                if (hull.shieldCap != 1) b.append("Shield capacity ").append(pct(hull.shieldCap)).append('\n');
                if (hull.shieldRegen != 1) b.append("Shield regeneration ").append(pct(hull.shieldRegen)).append('\n');
                if (hull.shieldDelay != 1) b.append("Shield recovery delay ").append(pct(hull.shieldDelay)).append('\n');
                if (hull.missileReload != 1) b.append("Missile reload time ").append(pct(hull.missileReload)).append('\n');
                if (hull.skill != null && hull.skill.length() > 0 || b.length() > 0) {
                    stats.addView(section(c, "HULL BONUSES"));
                    if (b.length() > 0) {
                        TextView t = text(c, 11, Color.WHITE, false);
                        t.setText(b.toString().trim());
                        t.setLineSpacing(2 * d, 1);
                        stats.addView(t);
                    }
                    if (hull.skill != null && hull.skill.length() > 0) {
                        TextView t = text(c, 10, GREY, false);
                        t.setText(Html.fromHtml(hull.skill));
                        t.setPadding(0, (int) (4 * d), 0, 0);
                        stats.addView(t);
                    }
                }
            }
        }

        private void row(String k, String v) {
            LinearLayout r = new LinearLayout(act);
            r.setOrientation(LinearLayout.HORIZONTAL);
            r.setPadding(0, (int) (2 * d), 0, (int) (2 * d));
            TextView a = text(act, 11, GREY, false);
            a.setText(k);
            r.addView(a, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            TextView b = text(act, 11, Color.WHITE, true);
            b.setText(v);
            b.setGravity(Gravity.RIGHT);
            r.addView(b);
            stats.addView(r);
        }
    }

    static int factionIndex(ModShips.Hull h) {
        if (h == null) return -1;
        for (int i = 0; i < ModCapitals.FACTIONS.length; i++) {
            ModCapitals.Faction f = ModCapitals.FACTIONS[i];
            if (f.name.equals(h.faction) || (h.secret != null && f.key.equals(h.secret))) return i;
        }
        return -1;
    }

    // ================================================================== bar (no allocation in onDraw)

    static final class Bar extends View {
        final String label;
        final Paint bg = new Paint(Paint.ANTI_ALIAS_FLAG), fill = new Paint(Paint.ANTI_ALIAS_FLAG), txt = new Paint(Paint.ANTI_ALIAS_FLAG), edge = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        final float d;
        float frac;
        String value = "";

        Bar(Context c, String label, int color) {
            super(c);
            this.label = label;
            d = dp(c);
            bg.setColor(0xFF101A28);
            fill.setColor((color & 0x00FFFFFF) | 0xB0000000);
            edge.setStyle(Paint.Style.STROKE);
            edge.setStrokeWidth(Math.max(1, d));
            edge.setColor((color & 0x00FFFFFF) | 0x70000000);
            txt.setColor(Color.WHITE);
            txt.setTextSize(10 * c.getResources().getDisplayMetrics().scaledDensity);
            txt.setTypeface(Typeface.DEFAULT_BOLD);
        }

        void set(float f, String v) {
            if (Float.isNaN(f)) f = 0;
            f = Math.max(0, Math.min(1, f));
            if (f == frac && v.equals(value)) return;
            frac = f;
            value = v;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            float w = getWidth(), h = getHeight(), rad = 3 * d;
            r.set(0, 0, w, h);
            c.drawRoundRect(r, rad, rad, bg);
            if (frac > 0) {
                r.set(0, 0, Math.max(2 * rad, w * frac), h);
                c.drawRoundRect(r, rad, rad, fill);
            }
            r.set(0, 0, w, h);
            c.drawRoundRect(r, rad, rad, edge);
            float y = h / 2 - (txt.descent() + txt.ascent()) / 2;
            txt.setTextAlign(Paint.Align.LEFT);
            c.drawText(label, 5 * d, y, txt);
            txt.setTextAlign(Paint.Align.RIGHT);
            c.drawText(value, w - 5 * d, y, txt);
        }
    }

    // ================================================================== slot tile

    static final class Tile extends LinearLayout {
        final int slot;
        final FrameLayout iconBox;
        final ImageView icon;
        final TextView name, caption;
        final float d;
        SpaceObjectType shown;
        boolean shownEmpty;

        Tile(Context c, int slot) {
            super(c);
            this.slot = slot;
            d = dp(c);
            setOrientation(VERTICAL);
            setGravity(Gravity.CENTER_HORIZONTAL);
            setClickable(true);
            iconBox = new FrameLayout(c);
            icon = new ImageView(c);
            icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
            int ip = (int) (7 * d);
            FrameLayout.LayoutParams il = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
            il.setMargins(ip, ip, ip, ip);
            iconBox.addView(icon, il);
            addView(iconBox, new LayoutParams((int) (46 * d), (int) (46 * d)));
            name = text(c, 9, Color.WHITE, true);
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            name.setGravity(Gravity.CENTER_HORIZONTAL);
            name.setPadding((int) (3 * d), (int) (2 * d), (int) (3 * d), (int) (1 * d));
            name.setBackgroundDrawable(box(0xB0050B16, 0, 0, 3 * d));
            LayoutParams nl = new LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            nl.topMargin = (int) (2 * d);
            addView(name, nl);
            caption = text(c, 8, SLOT_COLOR[slot], true);
            caption.setText(SLOT_NAME[slot]);
            caption.setGravity(Gravity.CENTER_HORIZONTAL);
            caption.setPadding(0, (int) (1 * d), 0, 0);
            addView(caption);
        }

        void bind(SpaceObjectType t) {
            boolean e = slot != HULL && empty(t);
            if (t == shown && e == shownEmpty) return;
            shown = t;
            shownEmpty = e;
            Context c = getContext();
            int rc = t == null ? DIM : rarityColor(c, t);
            Bitmap art = e ? artSlotEmpty : artSlot;
            if (art != null) {
                iconBox.setBackgroundDrawable(new BitmapDrawable(c.getResources(), art));
            } else {
                GradientDrawable g = new GradientDrawable();
                g.setShape(GradientDrawable.OVAL);
                if (e) {
                    g.setColor(0x80050B16);
                    g.setStroke(Math.max(1, (int) (1.5f * d)), DIM, 3 * d, 3 * d);
                } else {
                    g.setGradientType(GradientDrawable.RADIAL_GRADIENT);
                    g.setColors(new int[]{0xFF16304A, 0xFF0B1A2E});
                    g.setGradientRadius(23 * d);
                    g.setStroke(Math.max(1, (int) (2 * d)), rc);
                }
                iconBox.setBackgroundDrawable(g);
            }
            if (t != null && !e) {
                try {
                    ModShips.Hull hh = slot == HULL ? ModShips.hull(t) : null;
                    if (hh != null && shipArt != null && hh.art.equals(shipKey)) {
                        icon.setImageBitmap(shipArt);   // decoded once for the ring (RingView.setShip runs first)
                    } else if (slot == HULL) {
                        icon.setImageResource(t.getDrawableId());
                    } else {
                        icon.setImageResource(ModIcons.id(t));
                        ModIcons.applyImage(icon);
                    }
                } catch (Throwable x) {
                    icon.setImageDrawable(null);
                }
                icon.setAlpha(255);
                ModShips.Hull h = slot == HULL ? ModShips.hull(t) : null;
                name.setText(h != null ? h.name : label(t));
                name.setTextColor(rc);
            } else {
                icon.setImageDrawable(null);
                name.setText("empty");
                name.setTextColor(DIM);
            }
        }
    }

    // ================================================================== fitting ring + ship art

    static final class RingView extends ViewGroup {
        final float d;
        final Paint glow = new Paint(Paint.ANTI_ALIAS_FLAG), line = new Paint(Paint.ANTI_ALIAS_FLAG), faint = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG), label = new Paint(Paint.ANTI_ALIAS_FLAG), bmp = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        final Paint turret = new Paint(Paint.ANTI_ALIAS_FLAG), missile = new Paint(Paint.ANTI_ALIAS_FLAG), markerFill = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF oval = new RectF(), ringDst = new RectF(), shipDst = new RectF(), tmp = new RectF();
        final Path hex = new Path();
        float[] ticks = new float[0];
        float cx, cy, radius;
        // ship
        Bitmap shipBitmap;
        Drawable shipDrawable;
        float shipW = 1, shipH = 1;
        float[] turretsF = new float[0], missilesF = new float[0];   // fractions of the sprite, centre = 0
        int nTurrets, nMissiles;
        float[] turretsPx = new float[0], missilesPx = new float[0];
        Object boundShip;

        RingView(Context c) {
            super(c);
            d = dp(c);
            setWillNotDraw(false);
            line.setStyle(Paint.Style.STROKE);
            line.setStrokeWidth(1.5f * d);
            line.setColor(0x996AD0FF);
            faint.setStyle(Paint.Style.STROKE);
            faint.setStrokeWidth(Math.max(1, d));
            faint.setColor(0x406AD0FF);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeWidth(3 * d);
            arc.setStrokeCap(Paint.Cap.ROUND);
            label.setColor(GREY);
            label.setTextAlign(Paint.Align.CENTER);
            label.setTypeface(Typeface.DEFAULT_BOLD);
            label.setTextSize(8 * c.getResources().getDisplayMetrics().scaledDensity);
            turret.setStyle(Paint.Style.STROKE);
            turret.setStrokeWidth(1.8f * d);
            turret.setColor(CYAN);
            missile.setStyle(Paint.Style.FILL);
            missile.setColor(0xFFFF9A3C);
            markerFill.setStyle(Paint.Style.FILL);
            markerFill.setColor(0x80050B16);
        }

        void setShip(Context c, SpaceObjectType t, ModShips.Hull h, PlayerShipSpec spec) {
            Object key = spec != null ? spec : t;
            shipBitmap = null;
            shipDrawable = null;
            if (h != null) {
                if (!h.art.equals(shipKey)) {
                    shipKey = h.art;
                    shipArt = ModArt.decode(c, h.art, 512);
                }
                shipBitmap = shipArt;
            }
            if (shipBitmap != null) {
                shipW = shipBitmap.getWidth();
                shipH = shipBitmap.getHeight();
            } else {
                try {
                    int id = spec != null && spec.image != null ? spec.image.drawable : t.getDrawableId();
                    shipDrawable = c.getResources().getDrawable(id);
                } catch (Throwable e) {
                    try { shipDrawable = c.getResources().getDrawable(t.getDrawableId()); } catch (Throwable e2) { shipDrawable = null; }
                }
                if (shipDrawable != null) {
                    shipW = Math.max(1, shipDrawable.getIntrinsicWidth());
                    shipH = Math.max(1, shipDrawable.getIntrinsicHeight());
                }
            }
            // hardpoints in sprite fractions: world units / drawableSize, +y = stern (same mapping as src/genhw.py)
            nTurrets = 0;
            nMissiles = 0;
            if (spec != null && spec.drawableSize > 0) {
                float s = spec.drawableSize;
                if (spec.laserType != null && spec.laserType.useJoystick && spec.canonPos != null) {
                    int n = Math.min(spec.canonCount, spec.canonPos.length);
                    if (turretsF.length < n * 2) turretsF = new float[n * 2];
                    for (int i = 0; i < n; i++) {
                        Vector2 v = spec.canonPos[i];
                        if (v == null) continue;
                        turretsF[nTurrets * 2] = v.x / s;
                        turretsF[nTurrets * 2 + 1] = v.y / s;
                        nTurrets++;
                    }
                }
                if (spec.missileExitPoint != null) {
                    int n = Math.min(Math.max(1, spec.missileCount), spec.missileExitPoint.length);
                    if (missilesF.length < n * 2) missilesF = new float[n * 2];
                    for (int i = 0; i < n; i++) {
                        Vector2 v = spec.missileExitPoint[i];
                        if (v == null) continue;
                        missilesF[nMissiles * 2] = v.x / s;
                        missilesF[nMissiles * 2 + 1] = v.y / s;
                        nMissiles++;
                    }
                }
            }
            boundShip = key;
            layoutShip();
            invalidate();
        }

        private void layoutShip() {
            float box = radius * 1.0f;   // ship sits inside the inner ring
            if (box <= 0) return;
            float sc = Math.min(box / shipW, box / shipH);   // aspect-correct, never stretched
            float w = shipW * sc, h = shipH * sc;
            shipDst.set(cx - w / 2, cy - h / 2, cx + w / 2, cy + h / 2);
            if (shipDrawable != null) shipDrawable.setBounds((int) shipDst.left, (int) shipDst.top, (int) shipDst.right, (int) shipDst.bottom);
            if (turretsPx.length < nTurrets * 2) turretsPx = new float[nTurrets * 2];
            for (int i = 0; i < nTurrets; i++) {
                turretsPx[i * 2] = cx + turretsF[i * 2] * w;
                turretsPx[i * 2 + 1] = cy + turretsF[i * 2 + 1] * h;
            }
            if (missilesPx.length < nMissiles * 2) missilesPx = new float[nMissiles * 2];
            for (int i = 0; i < nMissiles; i++) {
                missilesPx[i * 2] = cx + missilesF[i * 2] * w;
                missilesPx[i * 2 + 1] = cy + missilesF[i * 2 + 1] * h;
            }
        }

        @Override
        protected void onSizeChanged(int w, int h, int ow, int oh) {
            super.onSizeChanged(w, h, ow, oh);
            cx = w / 2f;
            cy = h / 2f;
            radius = Math.max(10, Math.min(w, h) / 2f - 4 * d);
            ringDst.set(cx - radius, cy - radius, cx + radius, cy + radius);
            glow.setShader(new RadialGradient(cx, cy, radius, new int[]{0x406AD0FF, 0x186AD0FF, 0x00000000}, new float[]{0f, 0.6f, 1f}, Shader.TileMode.CLAMP));
            // tick marks every 5 degrees, longer every 30
            int n = 72;
            ticks = new float[n * 4];
            for (int i = 0; i < n; i++) {
                double a = Math.toRadians(i * 5);
                float r0 = radius * (i % 6 == 0 ? 0.90f : 0.93f), r1 = radius * 0.96f;
                ticks[i * 4] = cx + (float) Math.sin(a) * r0;
                ticks[i * 4 + 1] = cy - (float) Math.cos(a) * r0;
                ticks[i * 4 + 2] = cx + (float) Math.sin(a) * r1;
                ticks[i * 4 + 3] = cy - (float) Math.cos(a) * r1;
            }
            hex.reset();
            float hr = radius * 0.66f;
            for (int i = 0; i < 6; i++) {
                double a = Math.toRadians(i * 60 + 30);
                float x = cx + (float) Math.cos(a) * hr, y = cy + (float) Math.sin(a) * hr;
                if (i == 0) hex.moveTo(x, y); else hex.lineTo(x, y);
            }
            hex.close();
            oval.set(cx - radius * 0.985f, cy - radius * 0.985f, cx + radius * 0.985f, cy + radius * 0.985f);
            layoutShip();
        }

        @Override
        protected void onMeasure(int ws, int hs) {
            int w = MeasureSpec.getSize(ws), h = MeasureSpec.getSize(hs);
            int cs = MeasureSpec.makeMeasureSpec(0, MeasureSpec.UNSPECIFIED);
            for (int i = 0; i < getChildCount(); i++) getChildAt(i).measure(MeasureSpec.makeMeasureSpec((int) (76 * d), MeasureSpec.AT_MOST), cs);
            setMeasuredDimension(w, h);
        }

        @Override
        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            int w = r - l, h = b - t;
            float ccx = w / 2f, ccy = h / 2f, rad = Math.max(10, Math.min(w, h) / 2f - 4 * d);
            for (int i = 0; i < getChildCount(); i++) {
                View v = getChildAt(i);
                int slot = v instanceof Tile ? ((Tile) v).slot : i;
                int cw = v.getMeasuredWidth(), ch = v.getMeasuredHeight();
                double a = Math.toRadians(SLOT_ANGLE[slot % N]);
                // icon centre on the ring at 80% radius; the tile hangs its labels below the icon
                float iconH = 46 * d;
                float px = ccx + (float) Math.sin(a) * rad * 0.80f;
                float py = ccy - (float) Math.cos(a) * rad * 0.80f;
                int x = Math.round(px - cw / 2f), y = Math.round(py - iconH / 2f);
                x = Math.max(0, Math.min(w - cw, x));
                y = Math.max(0, Math.min(h - ch, y));
                v.layout(x, y, x + cw, y + ch);
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            if (radius <= 0) return;
            if (artRing != null) {
                float sc = Math.min(ringDst.width() / artRing.getWidth(), ringDst.height() / artRing.getHeight());
                float w = artRing.getWidth() * sc, h = artRing.getHeight() * sc;
                tmp.set(cx - w / 2, cy - h / 2, cx + w / 2, cy + h / 2);
                c.drawBitmap(artRing, null, tmp, bmp);
            } else {
                c.drawCircle(cx, cy, radius, glow);
                c.drawCircle(cx, cy, radius * 0.985f, faint);
                c.drawCircle(cx, cy, radius * 0.88f, line);
                c.drawLines(ticks, faint);
                c.drawPath(hex, faint);
                c.drawCircle(cx, cy, radius * 0.56f, faint);
            }
            // slot group arcs (0 deg = top for the labels, Canvas arcs start at 3 o'clock)
            arc.setColor(HIGH_C & 0xC0FFFFFF);
            c.drawArc(oval, -90 - 58, 116, false, arc);
            arc.setColor(MID_C & 0xC0FFFFFF);
            c.drawArc(oval, 180 - 16, 32, false, arc);
            c.drawArc(oval, -16, 32, false, arc);
            arc.setColor(LOW_C & 0xC0FFFFFF);
            c.drawArc(oval, 90 - 62, 34, false, arc);
            arc.setColor(GREY & 0x90FFFFFF);
            c.drawArc(oval, 90 + 28, 34, false, arc);
            label.setColor(HIGH_C);
            c.drawText("HIGH", cx, cy - radius * 0.985f + label.getTextSize() + 5 * d, label);
            label.setColor(LOW_C);
            c.drawText("LOW", cx, cy + radius * 0.985f - 6 * d, label);
            label.setColor(MID_C);
            c.drawText("MID", cx - radius * 0.985f + 16 * d, cy - 30 * d, label);
            c.drawText("MID", cx + radius * 0.985f - 16 * d, cy - 30 * d, label);
            // ship
            if (shipBitmap != null) c.drawBitmap(shipBitmap, null, shipDst, bmp);
            else if (shipDrawable != null) shipDrawable.draw(c);
            // hardpoints: turret = cyan ring, missile tube = orange square
            float tr = 4.5f * d, ms = 3.2f * d;
            for (int i = 0; i < nTurrets; i++) {
                c.drawCircle(turretsPx[i * 2], turretsPx[i * 2 + 1], tr, markerFill);
                c.drawCircle(turretsPx[i * 2], turretsPx[i * 2 + 1], tr, turret);
            }
            for (int i = 0; i < nMissiles; i++) {
                c.drawRect(missilesPx[i * 2] - ms, missilesPx[i * 2 + 1] - ms, missilesPx[i * 2] + ms, missilesPx[i * 2 + 1] + ms, missile);
            }
        }
    }

    // ================================================================== slot picker (fit from cargo)

    static final class Picker {
        private Picker() {}

        static void show(final Activity a, final int slot) {
            try {
                final float d = dp(a);
                final Dialog dlg = new Dialog(a);
                dlg.requestWindowFeature(Window.FEATURE_NO_TITLE);
                dlg.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                LinearLayout outer = new LinearLayout(a);
                outer.setOrientation(LinearLayout.VERTICAL);
                int p = (int) (12 * d);
                outer.setPadding(p, p, p, p);
                outer.setBackgroundDrawable(box(BG, CYAN, 1.5f * d, 8 * d));

                LinearLayout head = new LinearLayout(a);
                head.setOrientation(LinearLayout.HORIZONTAL);
                head.setGravity(Gravity.CENTER_VERTICAL);
                TextView title = text(a, 15, SLOT_COLOR[slot], true);
                title.setText(SLOT_GROUP[slot] + "  ·  " + SLOT_NAME[slot]);
                head.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
                Button close = button(a, "CLOSE", GREY);
                head.addView(close);
                outer.addView(head);

                // fitted item
                final SpaceObjectType cur = gear(slot);
                LinearLayout fitted = itemRow(a, cur, null, d);
                Button det = button(a, "DETAILS", CYAN);
                det.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) { dlg.dismiss(); details(a, slot); }
                });
                if (cur != null && !empty(cur)) fitted.addView(det);
                TextView ft = text(a, 10, GREY, true);
                ft.setText("FITTED");
                ft.setPadding(0, (int) (10 * d), 0, (int) (3 * d));
                outer.addView(ft);
                fitted.setBackgroundDrawable(box(PANEL, SLOT_COLOR[slot] & 0x80FFFFFF, d, 6 * d));
                outer.addView(fitted);

                TextView ct = text(a, 10, GREY, true);
                ct.setText("IN CARGO — TAP FIT TO SWAP (the fitted item returns to your hold)");
                ct.setPadding(0, (int) (12 * d), 0, (int) (3 * d));
                outer.addView(ct);

                LinearLayout list = new LinearLayout(a);
                list.setOrientation(LinearLayout.VERTICAL);
                ScrollView sv = new ScrollView(a);
                sv.addView(list);
                outer.addView(sv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1));

                List<SpaceObject> items = candidates(slot);
                final float curH = headline(cur);
                for (final SpaceObject so : items) {
                    LinearLayout r = itemRow(a, so.getSpaceObjectType(), so, d);
                    float hv = headline(so.getSpaceObjectType());
                    if (!Float.isNaN(hv) && !Float.isNaN(curH) && hv != curH) {
                        TextView delta = text(a, 11, hv > curH ? GOOD : BAD, true);
                        delta.setText((hv > curH ? "+" : "") + f1(hv - curH));
                        delta.setPadding(0, 0, (int) (8 * d), 0);
                        r.addView(delta);
                    }
                    Button fit = button(a, "FIT", GOOD);
                    boolean ok = so.getSpaceObjectType().canEquip();
                    if (!ok) {
                        fit.setEnabled(false);
                        fit.setText("LV " + so.getSpaceObjectType().getGearSpec().level);
                        fit.setTextColor(DIM);
                    }
                    fit.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View v) {
                            try {
                                equip(a, so);
                            } catch (Throwable t) {
                                // the original flow reports its own errors
                            }
                            dlg.dismiss();   // onDismiss refreshes the overlay
                        }
                    });
                    r.addView(fit);
                    LinearLayout.LayoutParams rl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                    rl.bottomMargin = (int) (4 * d);
                    r.setBackgroundDrawable(box(0x800B1A2E, 0x306AD0FF, d, 6 * d));
                    list.addView(r, rl);
                }
                if (items.isEmpty()) {
                    TextView none = text(a, 12, GREY, false);
                    none.setText("No " + SLOT_NAME[slot].toLowerCase(Locale.US) + " in your cargo hold. Buy one at a station market or the cash shop.");
                    none.setPadding(0, (int) (8 * d), 0, (int) (8 * d));
                    list.addView(none);
                }

                LinearLayout foot = new LinearLayout(a);
                foot.setOrientation(LinearLayout.HORIZONTAL);
                foot.setGravity(Gravity.RIGHT);
                foot.setPadding(0, (int) (8 * d), 0, 0);
                Button inv = button(a, "OPEN INVENTORY", Color.WHITE);
                inv.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        dlg.dismiss();
                        if (!click(a, "txtShowInventory")) invoke(a, "showPopupInventory");
                        attach(a);
                    }
                });
                foot.addView(inv);
                outer.addView(foot);

                close.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) { dlg.dismiss(); }
                });
                dlg.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
                    public void onDismiss(android.content.DialogInterface di) { refresh(a); }
                });
                dlg.setContentView(outer);
                android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
                dlg.show();
                dlg.getWindow().setLayout((int) Math.min(dm.widthPixels * 0.66f, 620 * d), (int) (dm.heightPixels * 0.9f));
            } catch (Throwable t) {
                // no picker: the original screen still works (CLASSIC)
            }
        }

        static List<SpaceObject> candidates(int slot) {
            List<SpaceObject> out = new ArrayList<SpaceObject>();
            GearSpec.Type want = type(slot);
            try {
                for (SpaceObject so : ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getContentAsList()) {
                    SpaceObjectType t = so.getSpaceObjectType();
                    GearSpec g = t == null ? null : t.getGearSpec();
                    if (g == null || g.gearType != want || !t.isEquipable()) continue;
                    out.add(so);
                }
            } catch (Throwable t) {
                // empty list
            }
            Collections.sort(out, new Comparator<SpaceObject>() {
                public int compare(SpaceObject x, SpaceObject y) {
                    SpaceObjectType a = x.getSpaceObjectType(), b = y.getSpaceObjectType();
                    boolean ea = a.canEquip(), eb = b.canEquip();
                    if (ea != eb) return ea ? -1 : 1;
                    float ha = headline(a), hb = headline(b);
                    if (!Float.isNaN(ha) && !Float.isNaN(hb) && ha != hb) return hb > ha ? 1 : -1;
                    int r = b.getRarety().getRaretySort() - a.getRarety().getRaretySort();
                    return r != 0 ? r : b.getGearSpec().level - a.getGearSpec().level;
                }
            });
            return out;
        }

        static LinearLayout itemRow(Activity a, SpaceObjectType t, SpaceObject so, float d) {
            LinearLayout r = new LinearLayout(a);
            r.setOrientation(LinearLayout.HORIZONTAL);
            r.setGravity(Gravity.CENTER_VERTICAL);
            int p = (int) (6 * d);
            r.setPadding(p, p, p, p);
            ImageView iv = new ImageView(a);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            if (t != null && !empty(t)) {
                try {
                    iv.setImageResource(ModIcons.id(t));
                    ModIcons.applyImage(iv);
                } catch (Throwable e) {
                    // no icon
                }
            }
            r.addView(iv, new LinearLayout.LayoutParams((int) (36 * d), (int) (36 * d)));
            LinearLayout col = new LinearLayout(a);
            col.setOrientation(LinearLayout.VERTICAL);
            col.setPadding((int) (8 * d), 0, (int) (8 * d), 0);
            TextView nm = text(a, 13, t == null ? DIM : rarityColor(a, t), true);
            String n = t == null || empty(t) ? "Empty slot" : label(t);
            if (so != null && so.getQuantity() > 1) n += "  x" + so.getQuantity();
            nm.setText(n);
            col.addView(nm);
            TextView st = text(a, 10, GREY, false);
            st.setText(t == null ? "" : statLine(t));
            st.setPadding(0, (int) (3 * d), 0, 0);
            col.addView(st);
            r.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            return r;
        }
    }
}
