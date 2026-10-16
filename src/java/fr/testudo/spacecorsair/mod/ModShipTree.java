package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.Html;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import fr.testudo.spacecorsair.activity.viewgroup.SpaceShipItem;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * v25 EVE-style faction ship tree: the entry view of the ships screen (ShipsActivity).
 * A full-screen overlay on the activity's content view (the ViewPager stays underneath): faction selector and info panel
 * on the left, the selected faction's hulls in class columns on the right with canvas-drawn connectors. Tapping a card
 * opens an info card; OPEN pages the ViewPager to that hull (the pager only holds the selected faction, in tree order) and
 * hides the overlay. "◀ TREE" on every ship page, or BACK, brings the tree back.
 * Optional ChatGPT art (assets/modart): ui_tree_bg, ui_tree_card, ui_tree_card_sel, ui_tree_header; code-drawn otherwise.
 * Emulator tests: /data/local/tmp/corsair_tree = faction key (spartan .. warden, independent, dev) preselects a faction.
 */
public final class ModShipTree {
    private ModShipTree() {}

    /** Groups 0..6 are ModCapitals.FACTIONS; then the original game ships and the developers' hull. */
    static final int IND = 7, DEV = 8, GROUPS = 9;
    private static final String TAG = "modShipTree", CATCH = "modTreeKeys", PAGE = "modPageFaction";
    private static final int BG = 0xFF050B16, CYAN = 0xFF6AD0FF, GREEN = 0xFF41FF16, YELLOW = 0xFFFFD93F, GREY = 0xFF4A5868,
        TEXT = 0xFFB0C4DA, DIM = 0xFF7F8EA0, GOLD = 0xFFE8B84A, CARD = 0xE60B1A2E, ORANGE = 0xFFE0A040, RED = 0xFFFF6B6B,
        PURPLE = 0xFFD21AFF, PANEL = 0xCC0A1626, EDGE = 0xFF24384F;
    private static final String[] COLS = {ModLang.tr("FRIGATE"), ModLang.tr("DESTROYER"), ModLang.tr("CRUISER"), ModLang.tr("BATTLECRUISER"), ModLang.tr("BATTLESHIP"), ModLang.tr("CAPITAL / TITAN"), "INDUSTRIAL"};
    // v24 faction texts, generated from src/data/lore_v24.json (factions.<key> in ModCapitals.FACTIONS order, then independent = IND)
    private static final String[] TAGLINE = {
        ModLang.tr("Disciplined fleets; safe passage is a public duty."),
        ModLang.tr("Share the spoils. Never leave a crew behind."),
        ModLang.tr("One living signal can guide a whole migration."),
        ModLang.tr("Every risk priced. Every obligation recorded."),
        ModLang.tr("Repair what you can. Hold while neighbors escape."),
        ModLang.tr("Keep routes open with dependable speed."),
        ModLang.tr("Rescue first. Keep the frontier routes public."),
        ModLang.tr("Civilian workhorses and pirate-market hulls."),
    };
    private static final String[] PANEL_TEXT = {
        ModLang.tr("We defend civilian routes with coordinated formations, layered shields and visible command ships. Force is a public trust, measured by who makes it home."),
        ModLang.tr("Captains earn authority by keeping a crew fed and a ship flying. Salvaged armor, close-range pressure and a hard code make betrayal costly."),
        ModLang.tr("Living hulls carry brood chambers between safe worlds. Shared memory and the survival of the young shape every migration and answer to danger."),
        ModLang.tr("Predictable routes and enforceable contracts are our public good. Symmetrical command hulls protect the core while measured force keeps agreements intact."),
        ModLang.tr("Settlement crews build with replaceable armor, visible braces and parts a belt-side shop can repair. We hold ground until the evacuation is done."),
        ModLang.tr("Our light, efficient hulls move people and cargo between markets. Shared standards and reliable engines turn each successful contract into the next open route."),
        ModLang.tr("Rangers patrol beyond easy support, mark safe passages and answer distress calls. We cooperate on security while resisting tolls that close a public route."),
        ModLang.tr("Unaligned ships trade under local names and practical warranties. Expect civilian refits, salvaged hardware and a seller who values payment more than a flag."),
    };
    private static final String[][] DOCTRINE = {
        {ModLang.tr("Fleet discipline"), ModLang.tr("Layered shields"), ModLang.tr("Escort support")},
        {ModLang.tr("Salvage armor"), ModLang.tr("Close assault"), ModLang.tr("Crew loyalty")},
        {ModLang.tr("Living hulls"), ModLang.tr("Brood survival"), ModLang.tr("Signal swarm")},
        {ModLang.tr("Contract fleets"), ModLang.tr("Protected cores"), ModLang.tr("Measured force")},
        {ModLang.tr("Heavy armor"), ModLang.tr("Field repairs"), ModLang.tr("Hold the line")},
        {ModLang.tr("Fast hulls"), ModLang.tr("Efficient engines"), ModLang.tr("Trade routes")},
        {ModLang.tr("Long patrol"), ModLang.tr("Rescue service"), ModLang.tr("Open routes")},
        {},
    };
    private static final ColorMatrixColorFilter GREYED;
    static {
        ColorMatrix m = new ColorMatrix();
        m.setSaturation(0);
        GREYED = new ColorMatrixColorFilter(m);
    }

    // ================================================================== grouping and order
    static int group(SpaceObjectType t) {
        ModShips.Hull h = ModShips.hull(t);
        if (h == null) {
            // the original game's alien ships (Rat, Ufo, Blatte) belong to the Kre'tari Brood
            if (t != null && t.name().startsWith("alien")) {
                for (int i = 0; i < ModCapitals.FACTIONS.length && i < IND; i++) if ("kretari".equals(ModCapitals.FACTIONS[i].key)) return i;
            }
            return IND;
        }
        if (h.dev) return DEV;
        for (int i = 0; i < ModCapitals.FACTIONS.length && i < IND; i++) if (ModCapitals.FACTIONS[i].name.equals(h.faction)) return i;
        return IND;
    }

    /** Tree column: Frigate, Destroyer, Cruiser, Battlecruiser, Battleship, Capital/Titan, Industrial. */
    static int column(SpaceObjectType t) {
        switch (ModShips.cls(t)) {
            case ModShips.DESTROYER: return 1;
            case ModShips.CRUISER: return 2;
            case ModShips.BATTLECRUISER: return 3;
            case ModShips.BATTLESHIP: return 4;
            case ModShips.CAPITAL: case ModShips.TITAN: return 5;
            case ModShips.INDUSTRIAL: return 6;
            default: return 0;
        }
    }

    private static String label(SpaceObjectType t) {
        String s = ModShips.label(t);
        if (s != null) return s;
        try { return String.valueOf(t.getLocalizedLabel()); } catch (Exception e) { return t.name(); }
    }

    /** Tree order (also the ships pager order): column, tech, level, name. */
    static final Comparator<SpaceObjectType> ORDER = new Comparator<SpaceObjectType>() {
        public int compare(SpaceObjectType a, SpaceObjectType b) {
            int d = column(a) - column(b);
            if (d == 0) d = ModShips.tech(a) - ModShips.tech(b);
            if (d == 0) d = ModUi.level(a) - ModUi.level(b);
            return d != 0 ? d : label(a).compareToIgnoreCase(label(b));
        }
    };

    private static boolean secret(SpaceObjectType t) {
        ModShips.Hull h = ModShips.hull(t);
        return h != null && h.secret != null;
    }

    /** Shown in the tree: everything the pager shows, plus secret ships (greyed) before they are listed. */
    static boolean listed(SpaceObjectType t) {
        return !ModDev.hidden(t) || secret(t);
    }

    static List<SpaceObjectType> shipsOf(int g, boolean tree) {
        List<SpaceObjectType> out = new ArrayList<SpaceObjectType>();
        for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) {
            if (group(t) != g) continue;
            if (tree ? listed(t) : !ModDev.hidden(t)) out.add(t);
        }
        Collections.sort(out, ORDER);
        return out;
    }

    // ================================================================== selection (shared with the pager list in ModUi.ships)
    private static int sel = -1;
    private static WeakReference<Activity> selFor = new WeakReference<Activity>(null);

    /** Selected group; a new ships screen opens on the faction of the hull the player flies. */
    static int ensureSelection(Activity a) {
        if (selFor.get() != a || sel < 0) {
            selFor = new WeakReference<Activity>(a);
            sel = IND;
            try {
                SpaceObjectType cur = ObjectRegistry.INSTANCE.game.playerInfo.playerGear.playerShip;
                if (cur != null) sel = group(cur);
            } catch (Exception e) {
                sel = IND;
            }
            String v = ModDev.testValue("corsair_tree");
            if (v != null && v.length() > 0) {
                if ("independent".equals(v)) sel = IND;
                else if ("dev".equals(v)) sel = DEV;
                else for (int i = 0; i < IND && i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i].key.equals(v)) sel = i;
            }
        }
        return sel;
    }

    static int selected() { return sel; }

    static String groupName(int g) {
        if (g == IND) return ModLang.tr("Independent");
        if (g == DEV) return ModLang.tr("Developers");
        return ModCapitals.FACTIONS[g].name;
    }

    static int groupColor(int g) {
        if (g == IND) return TEXT;
        if (g == DEV) return 0xFF59FF73;
        ModCapitals.Faction f = ModCapitals.FACTIONS[g];
        return Color.rgb((int) (f.r * 255), (int) (f.g * 255), (int) (f.b * 255));
    }

    /** ModLang.tr("Bonded Partner · Friendly (32)"), or a short note for the groups without standing. */
    static String standingText(int g) {
        if (g == IND) return ModLang.tr("Original hulls · no faction standing");
        if (g == DEV) return ModLang.tr("Gift code hull");
        try {
            String k = ModCapitals.FACTIONS[g].key;
            float v = ModRep.standing(k);
            return ModRep.title(k) + " · " + ModLang.tr(ModRep.RANK_NAMES[ModRep.rankOf(v)]) + " (" + Math.round(v) + ")";
        } catch (Exception e) {
            return "";
        }
    }

    // ================================================================== bitmaps (cached, subsampled)
    /** LRU of decoded UI bitmaps (hull thumbnails are ~256 px, ~256 KB each): at most ~8 MB whatever the player browses. */
    private static final Map<String, Bitmap> bitmaps = new java.util.LinkedHashMap<String, Bitmap>(32, 0.75f, true) {
        protected boolean removeEldestEntry(Map.Entry<String, Bitmap> e) { return size() > 32; }
    };
    private static final Set<String> missing = new HashSet<String>();

    private static Bitmap art(Context c, String name, int maxPx) {
        if (name == null || missing.contains(name)) return null;
        Bitmap b = bitmaps.get(name);
        if (b == null) {
            b = ModArt.decode(c, name, maxPx);
            if (b == null) missing.add(name);
            else bitmaps.put(name, b);
        }
        return b;
    }

    private static Bitmap emblem(Context c, int g) {
        if (g == IND) return art(c, "emblem_independent", 128);
        if (g == DEV) return art(c, "emblem_dev", 128);
        return art(c, "emblem_" + ModCapitals.FACTIONS[g].key, 128);
    }

    /** Hull thumbnail (mod art subsampled to ~200 px) or the game's drawable for the original ships. */
    private static void thumb(ImageView iv, SpaceObjectType t) {
        ModShips.Hull h = ModShips.hull(t);
        Bitmap b = h == null ? null : art(iv.getContext(), h.art, 192);
        if (b != null) iv.setImageBitmap(b);
        else {
            try { if (!ModArt.origIcon(iv, t.getDrawableId(), 256)) iv.setImageResource(t.getDrawableId()); } catch (Exception e) { /* no icon */ }
        }
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
    }

    // ================================================================== overlay
    /** The tree overlay of one ships screen. */
    static final class Overlay extends FrameLayout {
        final Activity a;
        final float dp;
        final Set<String> fresh;
        LinearLayout side, grid, facPanel;
        FrameLayout canvas, info;
        ScrollView vs;
        HorizontalScrollView hs;
        View catcher;
        final View[] facButtons = new View[GROUPS];
        int built = -1;
        int panelW;   // inner width of the faction info panel (doctrine chip rows)
        View selCard;
        int treeW;

        Overlay(Activity a, Set<String> fresh) {
            super(a);
            this.a = a;
            this.dp = a.getResources().getDisplayMetrics().density;
            this.fresh = fresh;
        }
    }

    private static WeakReference<Overlay> cur = new WeakReference<Overlay>(null);
    private static boolean ateDown, hookAte;

    private static Overlay overlay(Activity a) {
        Overlay o = cur.get();
        return o != null && o.a == a ? o : null;
    }

    /** Builds the overlay once per ships screen (idempotent: safe from every layout/update tick). UI thread. */
    public static void attach(Activity a) {
        if (a == null || !a.getClass().getName().contains("ShipsActivity")) return;
        try {
            ViewGroup root = (ViewGroup) a.findViewById(android.R.id.content);
            if (root == null) return;
            Overlay o = overlay(a);
            if (o == null || o.getParent() != root) o = build(a, root);
            if (o == null) return;
            if (o.getVisibility() == View.VISIBLE && root.getChildAt(root.getChildCount() - 1) != o) o.bringToFront();
        } catch (Throwable t) {
            // never break the ships screen
        }
    }

    public static boolean shown(Activity a) {
        Overlay o = overlay(a);
        return o != null && o.getVisibility() == View.VISIBLE;
    }

    /** ModLang.tr("◀ TREE") and BACK on a ship page. */
    public static void show(Activity a) {
        attach(a);
        Overlay o = overlay(a);
        if (o == null) return;
        if (o.built != sel) select(o, sel);
        hideInfo(o);
        o.setVisibility(View.VISIBLE);
        ViewParent p = o.getParent();
        if (p instanceof ViewGroup && ((ViewGroup) p).getChildAt(((ViewGroup) p).getChildCount() - 1) != o) o.bringToFront();
    }

    public static void hide(Activity a) {
        Overlay o = overlay(a);
        if (o == null) return;
        hideInfo(o);
        o.setVisibility(View.GONE);
        if (o.catcher != null) o.catcher.requestFocus();
    }

    /** OPEN: select the hull's faction, page the pager to it and hide the tree. */
    static void openShip(Activity a, SpaceObjectType t) {
        sel = group(t);
        hide(a);
        ModUi.jumpTo(a, t);
    }

    /** BACK: closes the info card, or brings the tree back over a ship page. False = let the activity handle it. */
    static boolean handleBack(Activity a) {
        Overlay o = overlay(a);
        if (o == null) return false;
        if (o.getVisibility() == View.VISIBLE) {
            if (o.info != null && o.info.getVisibility() == View.VISIBLE) { hideInfo(o); return true; }
            return false;
        }
        show(a);
        return true;
    }

    /** Optional smali hook (src/patch/hooks21_tree.py): start of ShipsActivity_.onKeyDown; true = consumed. */
    public static boolean onKey(Activity a, int code, KeyEvent e) {
        try {
            if (code != KeyEvent.KEYCODE_BACK) return false;
            if (e != null && e.getRepeatCount() > 0) return hookAte;
            hookAte = handleBack(a);
            return hookAte;
        } catch (Throwable t) {
            return false;
        }
    }

    private static Overlay build(final Activity a, ViewGroup root) {
        final Set<String> fresh = ModUi.newShips();
        try {
            android.content.SharedPreferences p = ModQol.prefs();
            if (p != null && !fresh.isEmpty()) p.edit().putString("newShips", "").commit();
        } catch (Exception e) {
            // NEW badges stay
        }
        ensureSelection(a);
        final Overlay o = new Overlay(a, fresh);
        final float dp = o.dp;
        o.setTag(TAG);
        o.setBackgroundColor(BG);
        o.setClickable(true);   // the pager underneath never gets the touches
        DisplayMetrics dm = a.getResources().getDisplayMetrics();
        int W = dm.widthPixels, H = dm.heightPixels;
        Bitmap bg = art(a, "ui_tree_bg", Math.max(W, H) / 3);
        if (bg != null) {
            ImageView iv = new ImageView(a);
            iv.setScaleType(ImageView.ScaleType.CENTER_CROP);
            iv.setImageBitmap(bg);
            o.addView(iv, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        }
        boolean narrow = W < H;   // the game is landscape-only; keep a usable layout anyway
        LinearLayout main = new LinearLayout(a);
        main.setOrientation(narrow ? LinearLayout.VERTICAL : LinearLayout.HORIZONTAL);
        o.addView(main, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        int sideW = narrow ? W : Math.max((int) (168 * dp), Math.min((int) (220 * dp), (int) (W * 0.22f)));
        o.treeW = narrow ? W : W - sideW;
        ScrollView sideScroll = new ScrollView(a);
        sideScroll.setVerticalScrollBarEnabled(false);
        o.side = new LinearLayout(a);
        o.side.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (8 * dp);
        o.side.setPadding(pad, pad, pad, pad);
        GradientDrawable sbg = new GradientDrawable();
        sbg.setColor(0x99040A14);
        o.side.setBackgroundDrawable(sbg);
        sideScroll.addView(o.side, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        main.addView(sideScroll, narrow ? new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (H * 0.42f))
            : new LinearLayout.LayoutParams(sideW, ViewGroup.LayoutParams.MATCH_PARENT));

        // ---- title
        TextView title = text(a, ModLang.tr("SHIP TREE"), 17, CYAN, true);
        o.side.addView(title);
        TextView who = text(a, "", 10, TEXT, false);
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            who.setText(ModLang.tr("Level ") + pi.level + "  ·  " + NumberFormat.getNumberInstance().format(ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getCredit()) + " cr");
        } catch (Exception e) {
            who.setText("");
        }
        o.side.addView(who);

        // ---- faction selector (emblem grid, 5 per row)
        o.grid = new LinearLayout(a);
        o.grid.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams gl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        gl.topMargin = (int) (6 * dp);
        o.side.addView(o.grid, gl);
        int inner = sideW - 2 * pad;
        o.panelW = inner - 2 * pad;
        int per = 5, m = (int) (3 * dp);
        int bs = Math.min((int) (40 * dp), inner / per - 2 * m);
        LinearLayout row = null;
        int n = 0;
        for (int g = 0; g < GROUPS; g++) {
            if (g == DEV && shipsOf(DEV, true).isEmpty()) continue;
            if (n % per == 0) {
                row = new LinearLayout(a);
                row.setOrientation(LinearLayout.HORIZONTAL);
                o.grid.addView(row);
            }
            n++;
            final int gg = g;
            FrameLayout b = new FrameLayout(a);
            Bitmap em = emblem(a, g);
            if (em != null) {
                ImageView iv = new ImageView(a);
                iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
                iv.setImageBitmap(em);
                int ip = (int) (3 * dp);
                iv.setPadding(ip, ip, ip, ip);
                b.addView(iv, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            } else {
                TextView tv = text(a, g == IND ? "IND" : g == DEV ? "DEV" : ModCapitals.FACTIONS[g].key.substring(0, 3).toUpperCase(), 10, groupColor(g), true);
                tv.setGravity(Gravity.CENTER);
                b.addView(tv, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            }
            boolean anyNew = false;
            for (SpaceObjectType t : shipsOf(g, true)) if (fresh.contains(t.name())) anyNew = true;
            if (anyNew) {
                View dot = new View(a);
                GradientDrawable d = new GradientDrawable();
                d.setShape(GradientDrawable.OVAL);
                d.setColor(GREEN);
                dot.setBackgroundDrawable(d);
                b.addView(dot, new FrameLayout.LayoutParams((int) (7 * dp), (int) (7 * dp), Gravity.TOP | Gravity.RIGHT));
            }
            b.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { sel = gg; select(o, gg); }
            });
            o.facButtons[g] = b;
            LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(bs, bs);
            bl.setMargins(m, m, m, m);
            row.addView(b, bl);
        }

        // ---- faction info panel (filled by select)
        o.facPanel = new LinearLayout(a);
        o.facPanel.setOrientation(LinearLayout.VERTICAL);
        o.facPanel.setPadding(pad, pad, pad, pad);
        o.facPanel.setBackgroundDrawable(box(PANEL, EDGE, dp, 1));
        LinearLayout.LayoutParams fl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        fl.topMargin = (int) (8 * dp);
        o.side.addView(o.facPanel, fl);

        // ---- legend
        TextView legend = new TextView(a);
        legend.setTextSize(TypedValue.COMPLEX_UNIT_SP, 9);
        legend.setTextColor(DIM);
        legend.setText(Html.fromHtml(ModLang.tr("<font color='#6ad0ff'>■</font> flying &nbsp;<font color='#41ff16'>■</font> owned &nbsp;"
            + "<font color='#ffd93f'>■</font> can buy<br><font color='#4a5868'>■</font> locked &nbsp;<font color='#e8b84a'>■</font> secret (Honored)<br>"
            + "Tech I needs any hull of the previous class, Tech II a Tech I of the same class. Tap a ship for details.")));
        LinearLayout.LayoutParams ll = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        ll.topMargin = (int) (8 * dp);
        o.side.addView(legend, ll);

        // ---- standings / inbox (the toolbar is hidden while the tree is up)
        LinearLayout btns = new LinearLayout(a);
        btns.setOrientation(LinearLayout.HORIZONTAL);
        Button st = smallButton(a, ModLang.tr("Standings"), dp);
        st.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { ModComms.showStandings(a); } });
        final Button ib = smallButton(a, inboxLabel(), dp);
        ib.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { ModQol.showInbox(a); ib.setText(inboxLabel()); }
        });
        LinearLayout.LayoutParams b1 = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
        b1.rightMargin = (int) (4 * dp);
        btns.addView(st, b1);
        btns.addView(ib, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        LinearLayout.LayoutParams bl2 = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        bl2.topMargin = (int) (8 * dp);
        o.side.addView(btns, bl2);

        // ---- tree body: 2D scroll
        o.vs = new ScrollView(a);
        o.vs.setFillViewport(true);
        o.hs = new HorizontalScrollView(a);
        o.hs.setFillViewport(true);
        o.vs.addView(o.hs, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        o.canvas = new FrameLayout(a);
        o.canvas.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { hideInfo(o); } });
        o.hs.addView(o.canvas, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        main.addView(o.vs, narrow ? new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1)
            : new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1));

        // ---- info card (EVE hover card), positioned next to the tapped ship
        o.info = new FrameLayout(a);
        o.info.setVisibility(View.GONE);
        o.info.setClickable(true);
        o.addView(o.info, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.LEFT));

        // ---- BACK while a ship page is showing returns to the tree (no smali hook needed while this view has focus)
        View old = root.findViewWithTag(CATCH);
        if (old != null) root.removeView(old);
        View k = new View(a);
        k.setTag(CATCH);
        k.setFocusable(true);
        k.setFocusableInTouchMode(true);
        k.setOnKeyListener(new View.OnKeyListener() {
            public boolean onKey(View v, int code, KeyEvent e) {
                if (code != KeyEvent.KEYCODE_BACK) return false;
                if (e.getAction() == KeyEvent.ACTION_DOWN) {
                    if (e.getRepeatCount() > 0) return ateDown;
                    ateDown = handleBack(a);
                    return ateDown;
                }
                if (e.getAction() == KeyEvent.ACTION_UP) {
                    boolean r = ateDown;
                    ateDown = false;
                    return r;
                }
                return ateDown;
            }
        });
        root.addView(k, new FrameLayout.LayoutParams(1, 1));
        o.catcher = k;

        View prev = root.findViewWithTag(TAG);
        if (prev != null) root.removeView(prev);
        root.addView(o, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        cur = new WeakReference<Overlay>(o);
        select(o, sel);
        k.requestFocus();
        return o;
    }

    private static String inboxLabel() {
        int u = ModQol.unread();
        return u > 0 ? ModLang.tr("Inbox (") + u + ")" : ModLang.tr("Inbox");
    }

    // ================================================================== faction switch: rebuild panel + tree once
    private static void select(Overlay o, int g) {
        Activity a = o.a;
        float dp = o.dp;
        o.built = g;
        hideInfo(o);
        for (int i = 0; i < GROUPS; i++) {
            View b = o.facButtons[i];
            if (b == null) continue;
            b.setBackgroundDrawable(i == g ? box(0x553A7BD5, CYAN, dp, 2) : box(0x66101C2C, EDGE, dp, 1));
        }
        List<SpaceObjectType> ships = shipsOf(g, true);
        // ---- info panel
        o.facPanel.removeAllViews();
        LinearLayout head = new LinearLayout(a);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        Bitmap em = emblem(a, g);
        if (em != null) {
            ImageView iv = new ImageView(a);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            iv.setImageBitmap(em);
            LinearLayout.LayoutParams il = new LinearLayout.LayoutParams((int) (40 * dp), (int) (40 * dp));
            il.rightMargin = (int) (6 * dp);
            head.addView(iv, il);
        }
        LinearLayout names = new LinearLayout(a);
        names.setOrientation(LinearLayout.VERTICAL);
        names.addView(text(a, groupName(g), 13, groupColor(g), true));
        if (g < TAGLINE.length) {
            TextView tg = text(a, TAGLINE[g], 9, GOLD, false);
            tg.setTypeface(Typeface.defaultFromStyle(Typeface.ITALIC));
            tg.setMaxLines(2);
            tg.setEllipsize(TextUtils.TruncateAt.END);
            names.addView(tg);
        }
        names.addView(text(a, standingText(g), 9, YELLOW, false));
        head.addView(names, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        o.facPanel.addView(head);
        if (g < PANEL_TEXT.length) {
            TextView tl = text(a, PANEL_TEXT[g], 9, TEXT, false);
            tl.setMaxLines(5);
            tl.setEllipsize(TextUtils.TruncateAt.END);
            tl.setPadding(0, (int) (4 * dp), 0, 0);
            o.facPanel.addView(tl);
        }
        if (g < DOCTRINE.length && DOCTRINE[g].length > 0) chips(o, DOCTRINE[g], groupColor(g));
        int owned = 0;
        try {
            for (SpaceObjectType t : ships) if (ObjectRegistry.INSTANCE.game.playerInfo.availShips.contains(t)) owned++;
        } catch (Exception e) {
            owned = 0;
        }
        TextView cnt = text(a, ships.size() + ModLang.tr(" ships  ·  ") + owned + " owned", 9, DIM, false);
        cnt.setPadding(0, (int) (4 * dp), 0, 0);
        o.facPanel.addView(cnt);

        // ---- tree
        o.canvas.removeAllViews();
        o.selCard = null;
        int[] count = new int[COLS.length];
        for (SpaceObjectType t : ships) count[column(t)]++;
        int[] xOf = new int[COLS.length];
        int ncol = 0, rows = 0;
        for (int c = 0; c < COLS.length; c++) if (count[c] > 0) { ncol++; rows = Math.max(rows, count[c]); }
        if (ncol == 0) {
            o.canvas.addView(text(a, ModLang.tr("No ships in this faction yet."), 12, TEXT, false), new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER));
            return;
        }
        int pad = (int) (14 * dp), gap = (int) (22 * dp), vgap = (int) (10 * dp);
        int cardW = (o.treeW - 2 * pad - (ncol - 1) * gap) / ncol;
        cardW = Math.max((int) (96 * dp), Math.min((int) (132 * dp), cardW));
        int minH = (int) (100 * dp);
        int cardH = Math.max(minH, (int) (cardW * 0.95f));
        Bitmap cardArt = art(a, "ui_tree_card", 512);
        if (cardArt != null && cardArt.getWidth() > 0) {
            // follow the frame art's aspect (cropped, never stretched, when the content needs more room)
            float asp = cardArt.getHeight() / (float) cardArt.getWidth();
            cardH = Math.max(minH, (int) (cardW * Math.max(0.8f, Math.min(1.25f, asp))));
        }
        int thumb = Math.min(cardW - (int) (24 * dp), cardH - (int) (50 * dp));
        Bitmap hdrArt = art(a, "ui_tree_header", 512);
        int barH = (int) (3 * dp);
        if (hdrArt != null && hdrArt.getWidth() > 0) barH = Math.max((int) (3 * dp), Math.min((int) (14 * dp), cardW * hdrArt.getHeight() / hdrArt.getWidth()));
        int labelH = (int) (16 * dp);
        int barY = pad + labelH;
        int y0 = barY + barH + (int) (10 * dp);
        int width = 2 * pad + ncol * cardW + (ncol - 1) * gap;
        int height = y0 + rows * (cardH + vgap) + pad;
        // which columns the player has reached (owns a hull of that class): their connectors are lit
        boolean[] ownedCol = new boolean[COLS.length];
        try {
            for (SpaceObjectType t : ObjectRegistry.INSTANCE.game.playerInfo.availShips) if (t != null) ownedCol[column(t)] = true;
        } catch (Exception e) {
            // all dim
        }
        int k = 0;
        for (int c = 0; c < COLS.length; c++) if (count[c] > 0) xOf[c] = pad + (k++) * (cardW + gap);

        float[] bright = new float[4 * (3 * ncol + ships.size())];
        float[] dim = new float[bright.length];
        int nb = 0, nd = 0;
        float sw = 2 * dp, spineY = barY + barH / 2f;
        int prevC = -1;
        int[] row = new int[COLS.length];
        for (int c = 0; c < COLS.length; c++) {
            if (count[c] == 0) continue;
            int x = xOf[c];
            // header label + bar
            TextView hl = text(a, COLS[c], 10, TEXT, true);
            hl.setSingleLine(true);
            hl.setEllipsize(TextUtils.TruncateAt.END);
            FrameLayout.LayoutParams hp = new FrameLayout.LayoutParams(cardW, labelH);
            hp.leftMargin = x;
            hp.topMargin = pad;
            o.canvas.addView(hl, hp);
            View bar;
            if (hdrArt != null) {
                ImageView iv = new ImageView(a);
                iv.setScaleType(ImageView.ScaleType.CENTER_CROP);
                iv.setImageBitmap(hdrArt);
                bar = iv;
            } else {
                bar = new View(a);
                bar.setBackgroundColor(ownedCol[c] ? CYAN : 0xFF3A5A78);
            }
            FrameLayout.LayoutParams bp = new FrameLayout.LayoutParams(cardW, barH);
            bp.leftMargin = x;
            bp.topMargin = barY;
            o.canvas.addView(bar, bp);
            // spine: previous column's bar to this one (the Industrial branch is drawn dim: its licence comes from Destroyers)
            if (prevC >= 0) {
                boolean lit = ownedCol[prevC] && c != 6;
                float[] arr = lit ? bright : dim;
                int i = lit ? nb : nd;
                arr[i] = xOf[prevC] + cardW; arr[i + 1] = spineY; arr[i + 2] = x; arr[i + 3] = spineY;
                if (lit) nb += 4; else nd += 4;
            }
            prevC = c;
            // branch: down the left of the column, a tick to every card
            float bx = x - gap * 0.4f;
            float lastY = y0 + (count[c] - 1) * (cardH + vgap) + cardH / 2f;
            boolean litCol = ownedCol[c];
            float[] arr = litCol ? bright : dim;
            int i = litCol ? nb : nd;
            arr[i] = bx; arr[i + 1] = spineY; arr[i + 2] = bx; arr[i + 3] = lastY;
            arr[i + 4] = x - gap; arr[i + 5] = spineY; arr[i + 6] = x; arr[i + 7] = spineY;
            if (litCol) nb += 8; else nd += 8;
        }
        for (SpaceObjectType t : ships) {
            int c = column(t);
            int y = y0 + row[c]++ * (cardH + vgap);
            float cy = y + cardH / 2f;
            int st = ModUi.state(t);
            boolean lit = st <= 2;
            float[] arr = lit ? bright : dim;
            int i = lit ? nb : nd;
            arr[i] = xOf[c] - gap * 0.4f; arr[i + 1] = cy; arr[i + 2] = xOf[c]; arr[i + 3] = cy;
            if (lit) nb += 4; else nd += 4;
            View card = card(o, t, st, cardW, cardH, thumb, cardArt);
            FrameLayout.LayoutParams cp = new FrameLayout.LayoutParams(cardW, cardH);
            cp.leftMargin = xOf[c];
            cp.topMargin = y;
            o.canvas.addView(card, cp);
        }
        Lines lines = new Lines(a, trim(bright, nb), trim(dim, nd), sw);
        o.canvas.addView(lines, 0, new FrameLayout.LayoutParams(width, height));
        o.canvas.setMinimumWidth(width);
        o.canvas.setMinimumHeight(height);
        o.hs.scrollTo(0, 0);
        o.vs.scrollTo(0, 0);
    }

    /** Doctrine tags as small outlined chips, wrapped into rows that fit the panel width. */
    private static void chips(Overlay o, String[] tags, int color) {
        Activity a = o.a;
        float dp = o.dp;
        int padH = (int) (5 * dp), padV = (int) (1.5f * dp), m = (int) (3 * dp);
        int maxW = Math.max((int) (80 * dp), o.panelW);
        LinearLayout row = null;
        int used = 0;
        for (String tag : tags) {
            TextView c = text(a, ModLang.tr(tag).toUpperCase(), 7, color, true);
            c.setSingleLine(true);
            c.setPadding(padH, padV, padH, padV);
            c.setBackgroundDrawable(box(0x33000000 | (color & 0x00FFFFFF), (color & 0x00FFFFFF) | 0xAA000000, dp, 1));
            int w = (int) c.getPaint().measureText(c.getText().toString()) + 2 * padH + m;
            if (row == null || used + w > maxW) {
                row = new LinearLayout(a);
                row.setOrientation(LinearLayout.HORIZONTAL);
                LinearLayout.LayoutParams rl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                rl.topMargin = m;
                o.facPanel.addView(row, rl);
                used = 0;
            }
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            cl.rightMargin = m;
            row.addView(c, cl);
            used += w;
        }
    }

    private static float[] trim(float[] a, int n) {
        float[] r = new float[n];
        System.arraycopy(a, 0, r, 0, n);
        return r;
    }

    /**
     * v24: draws UI frame art without distortion. The four corners keep the source aspect (scaled uniformly by
     * min(width, height) / min(srcW, srcH), or by height / srcH with fitHeight), the edges stretch along their own
     * axis only and the centre fills the rest. A square view gets the exact image.
     */
    static final class Slice extends android.graphics.drawable.Drawable {
        final Bitmap bmp;
        final int l, t, r, b;          // insets in source pixels
        final boolean fitHeight;
        private final Paint p = new Paint(Paint.FILTER_BITMAP_FLAG | Paint.ANTI_ALIAS_FLAG);
        private final android.graphics.Rect sr = new android.graphics.Rect();
        private final android.graphics.RectF dr = new android.graphics.RectF();

        Slice(Bitmap bmp, int l, int t, int r, int b, boolean fitHeight) {
            this.bmp = bmp; this.l = l; this.t = t; this.r = r; this.b = b; this.fitHeight = fitHeight;
        }

        @Override
        public void draw(Canvas c) {
            android.graphics.Rect d = getBounds();
            int W = d.width(), H = d.height(), bw = bmp.getWidth(), bh = bmp.getHeight();
            if (W <= 0 || H <= 0 || bmp.isRecycled()) return;
            float k = fitHeight ? H / (float) bh : Math.min(W, H) / (float) Math.min(bw, bh);
            if ((l + r) * k > W) k = W / (float) (l + r);
            if ((t + b) * k > H) k = Math.min(k, H / (float) (t + b));
            int[] sx = {0, l, bw - r, bw}, sy = {0, t, bh - b, bh};
            float[] dx = {d.left, d.left + l * k, d.right - r * k, d.right};
            float[] dy = {d.top, d.top + t * k, d.bottom - b * k, d.bottom};
            if (fitHeight) { dy[1] = d.top + t * k; dy[2] = d.bottom - b * k; }
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    if (sx[i + 1] <= sx[i] || sy[j + 1] <= sy[j] || dx[i + 1] <= dx[i] || dy[j + 1] <= dy[j]) continue;
                    sr.set(sx[i], sy[j], sx[i + 1], sy[j + 1]);
                    dr.set(dx[i], dy[j], dx[i + 1], dy[j + 1]);
                    c.drawBitmap(bmp, sr, dr, p);
                }
            }
        }

        @Override public void setAlpha(int a) { p.setAlpha(a); }
        @Override public void setColorFilter(android.graphics.ColorFilter cf) { p.setColorFilter(cf); }
        @Override public int getOpacity() { return android.graphics.PixelFormat.TRANSLUCENT; }
    }

    /** Header art (1024x64): the tab + node block on the left stays unscaled in shape, the tick line stretches. */
    static final int HDR_TAB = 292, HDR_END = 18, HDR_SRC_H = 64, HDR_LINE_Y = 47, HDR_TAB_L = 16, HDR_TAB_R = 270;

    /** Connector lines, precomputed; onDraw allocates nothing. */
    static final class Lines extends View {
        private final float[] bright, dim;
        private final Paint pb = new Paint(Paint.ANTI_ALIAS_FLAG), pd = new Paint(Paint.ANTI_ALIAS_FLAG);

        Lines(Context c, float[] bright, float[] dim, float w) {
            super(c);
            this.bright = bright;
            this.dim = dim;
            pb.setColor(0xC06AD0FF);
            pb.setStrokeWidth(w);
            pb.setStrokeCap(Paint.Cap.SQUARE);
            pd.setColor(0x503A6A90);
            pd.setStrokeWidth(w);
            pd.setStrokeCap(Paint.Cap.SQUARE);
        }

        @Override
        protected void onDraw(Canvas c) {
            if (dim.length >= 4) c.drawLines(dim, pd);
            if (bright.length >= 4) c.drawLines(bright, pb);
        }
    }

    // ================================================================== ship card
    private static int stateColor(int st) {
        return st == 0 ? CYAN : st == 1 ? GREEN : st == 2 ? YELLOW : GREY;
    }

    /** Secret ship the player cannot buy yet (not owned, not Honored). */
    private static boolean secretLocked(SpaceObjectType t, int st) {
        return secret(t) && st >= 2 && !ModShips.licenceOk(t);
    }

    private static View card(final Overlay o, final SpaceObjectType t, int st, int w, int h, int thumbPx, Bitmap cardArt) {
        final Activity a = o.a;
        float dp = o.dp;
        boolean sl = secretLocked(t, st);
        FrameLayout card = new FrameLayout(a);
        int border = sl ? 0xFF8A6A2A : stateColor(st);
        if (cardArt != null) {
            ImageView f = new ImageView(a);
            f.setScaleType(ImageView.ScaleType.CENTER_CROP);
            f.setImageBitmap(cardArt);
            card.addView(f, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            View strip = new View(a);
            strip.setBackgroundColor(border);
            card.addView(strip, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (3 * dp), Gravity.BOTTOM));
        } else {
            card.setBackgroundDrawable(box(CARD, border, dp, st <= 2 ? 2 : 1));
        }
        // thumbnail
        ImageView iv = new ImageView(a);
        thumb(iv, t);
        if (sl) {
            iv.setColorFilter(GREYED);
            iv.setAlpha(90);
        } else if (st >= 3) {
            iv.setAlpha(120);
        }
        FrameLayout.LayoutParams tl = new FrameLayout.LayoutParams(thumbPx, thumbPx, Gravity.TOP | Gravity.CENTER_HORIZONTAL);
        tl.topMargin = (int) (16 * dp);
        card.addView(iv, tl);
        // tech badge (top-left, EVE corner)
        int tech = ModShips.tech(t);
        TextView tb = text(a, tech >= 3 ? "III" : tech == 2 ? "II" : "I", 8, Color.WHITE, true);
        tb.setPadding((int) (4 * dp), 0, (int) (4 * dp), 0);
        tb.setBackgroundColor(tech >= 3 ? 0xFF7A45C8 : tech == 2 ? 0xFFC77A16 : 0xFF2E4A66);
        FrameLayout.LayoutParams bl = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.LEFT);
        bl.leftMargin = bl.topMargin = (int) (3 * dp);
        card.addView(tb, bl);
        if (o.fresh.contains(t.name())) {
            TextView nw = text(a, ModLang.tr("NEW"), 8, Color.BLACK, true);
            nw.setPadding((int) (3 * dp), 0, (int) (3 * dp), 0);
            nw.setBackgroundColor(GREEN);
            FrameLayout.LayoutParams nl = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.LEFT);
            nl.leftMargin = (int) (3 * dp);
            nl.topMargin = (int) (17 * dp);
            card.addView(nw, nl);
        }
        // state tag (top-right)
        String tag;
        int tc;
        if (sl) { tag = ModLang.tr("HONORED"); tc = GOLD; }
        else if (st == 0) { tag = ModLang.tr("FLYING"); tc = CYAN; }
        else if (st == 1) { tag = ModLang.tr("OWNED"); tc = GREEN; }
        else if (st == 2) { tag = ModLang.tr("BUY"); tc = YELLOW; }
        else if (st == 3) { tag = ModLang.tr("CREDITS"); tc = ORANGE; }
        else if (!levelOk(t)) { tag = "LV " + ModUi.level(t); tc = RED; }
        else if (ModDev.isDev(t)) { tag = ModLang.tr("GIFT"); tc = DIM; }
        else { tag = ModLang.tr("LICENCE"); tc = DIM; }
        TextView tg = text(a, tag, 8, tc, true);
        FrameLayout.LayoutParams gl = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.RIGHT);
        gl.rightMargin = (int) (4 * dp);
        gl.topMargin = (int) (2 * dp);
        card.addView(tg, gl);
        // name + level/price
        TextView nm = text(a, label(t), 11, sl ? DIM : rarityColor(a, t), true);
        nm.setSingleLine(true);
        nm.setEllipsize(TextUtils.TruncateAt.END);
        nm.setGravity(Gravity.CENTER_HORIZONTAL);
        nm.setPadding((int) (4 * dp), 0, (int) (4 * dp), 0);
        FrameLayout.LayoutParams nl = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM);
        nl.bottomMargin = (int) (17 * dp);
        card.addView(nm, nl);
        TextView sub = text(a, "Lv " + ModUi.level(t) + "  ·  " + shortPrice(t), 9, TEXT, false);
        sub.setSingleLine(true);
        sub.setGravity(Gravity.CENTER_HORIZONTAL);
        FrameLayout.LayoutParams sl2 = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM);
        sl2.bottomMargin = (int) (4 * dp);
        card.addView(sub, sl2);
        // selection ring (last child), toggled by the info card
        Bitmap selArt = art(a, "ui_tree_card_sel", 512);
        View ring;
        if (selArt != null) {
            ImageView r = new ImageView(a);
            r.setScaleType(ImageView.ScaleType.CENTER_CROP);
            r.setImageBitmap(selArt);
            ring = r;
        } else {
            ring = new View(a);
            ring.setBackgroundDrawable(box(0x226AD0FF, Color.WHITE, dp, 2));
        }
        ring.setVisibility(View.GONE);
        card.addView(ring, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        card.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { showInfo(o, t, v); }
        });
        return card;
    }

    private static boolean levelOk(SpaceObjectType t) {
        try {
            return ModUi.level(t) <= ObjectRegistry.INSTANCE.game.playerInfo.level;
        } catch (Exception e) {
            return true;
        }
    }

    private static int rarityColor(Activity a, SpaceObjectType t) {
        try {
            return a.getResources().getColor(t.getRarety().getColor());
        } catch (Exception e) {
            return Color.WHITE;
        }
    }

    private static int price(SpaceObjectType t) {
        try {
            return t.getObjectPrice().getBuyPrice();
        } catch (Exception e) {
            return 0;
        }
    }

    private static String shortPrice(SpaceObjectType t) {
        int p = price(t);
        String s;
        if (p >= 1000000) {
            float m = p / 1000000f;
            s = (m == (int) m ? String.valueOf((int) m) : String.format(java.util.Locale.US, "%.1f", m)) + "M";
        } else if (p >= 1000) s = (p / 1000) + "k";
        else s = String.valueOf(p);
        try {
            if (t.getObjectPrice().inapp) s += " ◆";
        } catch (Exception e) {
            // credits
        }
        return s;
    }

    // ================================================================== info card
    private static void hideInfo(Overlay o) {
        if (o == null) return;
        if (o.info != null && o.info.getVisibility() != View.GONE) o.info.setVisibility(View.GONE);
        if (o.selCard instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) o.selCard;
            g.getChildAt(g.getChildCount() - 1).setVisibility(View.GONE);
        }
        o.selCard = null;
    }

    private static void showInfo(final Overlay o, final SpaceObjectType t, View cardView) {
        final Activity a = o.a;
        float dp = o.dp;
        hideInfo(o);
        if (cardView instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) cardView;
            g.getChildAt(g.getChildCount() - 1).setVisibility(View.VISIBLE);
            o.selCard = cardView;
        }
        int st = ModUi.state(t);
        boolean sl = secretLocked(t, st);
        ModShips.Hull h = ModShips.hull(t);
        int g = group(t);
        o.info.removeAllViews();
        LinearLayout box = new LinearLayout(a);
        box.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (10 * dp);
        box.setPadding(pad, pad, pad, pad);
        box.setBackgroundDrawable(box(0xF7060E1A, CYAN, dp, 1));
        // header: thumbnail + name / class line / faction
        LinearLayout head = new LinearLayout(a);
        head.setOrientation(LinearLayout.HORIZONTAL);
        ImageView iv = new ImageView(a);
        thumb(iv, t);
        if (sl) iv.setColorFilter(GREYED);
        iv.setBackgroundDrawable(box(0xFF0B1A2E, EDGE, dp, 1));
        LinearLayout.LayoutParams il = new LinearLayout.LayoutParams((int) (64 * dp), (int) (64 * dp));
        il.rightMargin = (int) (8 * dp);
        head.addView(iv, il);
        LinearLayout col = new LinearLayout(a);
        col.setOrientation(LinearLayout.VERTICAL);
        col.addView(text(a, label(t), 15, rarityColor(a, t), true));
        String role = ModShips.role(t);
        col.addView(text(a, ModShips.className(t) + "  ·  " + ModShips.techName(t) + (role.length() > 0 ? "  ·  " + role : ""), 10, CYAN, true));
        LinearLayout fr = new LinearLayout(a);
        fr.setOrientation(LinearLayout.HORIZONTAL);
        fr.setGravity(Gravity.CENTER_VERTICAL);
        Bitmap em = emblem(a, g);
        if (em != null) {
            ImageView e = new ImageView(a);
            e.setImageBitmap(em);
            e.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams el = new LinearLayout.LayoutParams((int) (16 * dp), (int) (16 * dp));
            el.rightMargin = (int) (4 * dp);
            fr.addView(e, el);
        }
        fr.addView(text(a, groupName(g) + (g < IND ? "  ·  " + standingText(g) : ""), 9, groupColor(g), false));
        col.addView(fr);
        head.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        box.addView(head);
        // status
        String status;
        int sc;
        if (sl) {
            String fac = h != null && h.secret != null ? ModCapitals.FACTIONS[ModFaction.faction(h.secret)].name : groupName(g);
            status = ModLang.tr("Secret ship: reach Honored with the ") + fac + (ModDev.hidden(t) ? ModLang.tr(" (listed from Trusted)") : "");
            sc = GOLD;
        } else if (st == 0) { status = ModLang.tr("You are flying this ship"); sc = CYAN; }
        else if (st == 1) { status = ModLang.tr("Owned"); sc = GREEN; }
        else if (st == 2) { status = ModLang.tr("Can buy now"); sc = YELLOW; }
        else if (st == 3) { status = ModLang.tr("Not enough credits"); sc = ORANGE; }
        else if (!levelOk(t)) { status = ModLang.tr("Needs level ") + ModUi.level(t); sc = RED; }
        else { status = ModLang.tr("Locked"); sc = DIM; }
        TextView stv = text(a, status, 11, sc, true);
        stv.setPadding(0, (int) (6 * dp), 0, 0);
        box.addView(stv);
        String lic = ModShips.licenceTextOf(t);
        if (lic != null) box.addView(text(a, ModLang.tr("Hull licence: ") + lic + (ModShips.licenceOk(t) ? "  ✓" : ""), 10, YELLOW, false));
        String pr;
        try {
            pr = NumberFormat.getNumberInstance().format(price(t)) + (t.getObjectPrice().inapp ? " ◆" : " cr");
        } catch (Exception e) {
            pr = String.valueOf(price(t));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(ModLang.tr("Level ")).append(ModUi.level(t)).append("  ·  ").append(pr);
        GearSpec gs = t.getGearSpec();
        if (gs instanceof PlayerShipSpec) {
            PlayerShipSpec ps = (PlayerShipSpec) gs;
            sb.append("\nSpeed ").append(ps.maxSpeedInformational).append(ModLang.tr("  ·  Agility ")).append(ps.agilityInformational)
                .append(ModLang.tr("  ·  Armor ")).append(ps.armorInformational).append(ModLang.tr("  ·  Guns ")).append(Math.max(ps.laserCount, ps.canonCount));
            if (ps.missileCount > 0) sb.append(ModLang.tr("  ·  Missiles ")).append(ps.missileCount);
        }
        TextView stats = text(a, sb.toString(), 10, TEXT, false);
        stats.setPadding(0, (int) (4 * dp), 0, 0);
        box.addView(stats);
        if (h != null && h.skill != null) {
            TextView sk = new TextView(a);
            sk.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10);
            sk.setTextColor(TEXT);
            sk.setText(Html.fromHtml(ModLang.tr("<font color='#d21aff'><b>SKILL</b></font> ") + h.skill));
            sk.setMaxLines(5);
            sk.setEllipsize(TextUtils.TruncateAt.END);
            sk.setPadding(0, (int) (4 * dp), 0, 0);
            box.addView(sk);
        }
        // buttons
        LinearLayout btns = new LinearLayout(a);
        btns.setOrientation(LinearLayout.HORIZONTAL);
        btns.setGravity(Gravity.RIGHT);
        Button close = smallButton(a, ModLang.tr("Close"), dp);
        close.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { hideInfo(o); } });
        final boolean canOpen = !ModDev.hidden(t);
        Button open = smallButton(a, canOpen ? ModLang.tr("OPEN ▶") : ModLang.tr("LOCKED"), dp);
        open.setTextColor(canOpen ? CYAN : DIM);
        open.setEnabled(canOpen);
        open.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { if (canOpen) openShip(a, t); } });
        LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        cl.rightMargin = (int) (6 * dp);
        btns.addView(close, cl);
        btns.addView(open);
        LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        bl.topMargin = (int) (8 * dp);
        box.addView(btns, bl);

        // place it beside the card, inside the overlay
        int ow = o.getWidth() > 0 ? o.getWidth() : a.getResources().getDisplayMetrics().widthPixels;
        int oh = o.getHeight() > 0 ? o.getHeight() : a.getResources().getDisplayMetrics().heightPixels;
        int w = Math.min((int) (300 * dp), ow - (int) (16 * dp));
        o.info.addView(box, new FrameLayout.LayoutParams(w, ViewGroup.LayoutParams.WRAP_CONTENT));
        box.measure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY), View.MeasureSpec.makeMeasureSpec(oh, View.MeasureSpec.AT_MOST));
        int hgt = box.getMeasuredHeight();
        int[] cl2 = new int[2], ol = new int[2];
        cardView.getLocationInWindow(cl2);
        o.getLocationInWindow(ol);
        int cx = cl2[0] - ol[0], cy = cl2[1] - ol[1];
        int m = (int) (8 * dp);
        int left = cx + cardView.getWidth() + m;
        if (left + w > ow - m) left = cx - w - m;
        left = Math.max(m, Math.min(ow - w - m, left));
        int top = Math.max(m, Math.min(oh - hgt - m, cy - (int) (10 * dp)));
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) o.info.getLayoutParams();
        lp.leftMargin = left;
        lp.topMargin = top;
        o.info.setLayoutParams(lp);
        o.info.setVisibility(View.VISIBLE);
        o.info.bringToFront();
    }

    // ================================================================== ship pages: faction line + "◀ TREE"
    private static Field fragsF, shipF, nameF, pagerF;

    /** Adds the faction / standing line and the ModLang.tr("◀ TREE") button to every ship page the pager has built. From ModUi.update. */
    static void decoratePages(final Activity a) {
        try {
            if (pagerF == null) pagerF = ModQol.findField(a.getClass(), "shipsPager");
            if (fragsF == null) {
                fragsF = android.support.v4.app.o.class.getDeclaredField("mFragments");
                shipF = SpaceShipItem.class.getDeclaredField("spaceShip");
                nameF = SpaceShipItem.class.getDeclaredField("shipName");
                fragsF.setAccessible(true);
                shipF.setAccessible(true);
                nameF.setAccessible(true);
            }
            if (pagerF == null) return;
            pagerF.setAccessible(true);
            android.support.v4.view.ViewPager vp = (android.support.v4.view.ViewPager) pagerF.get(a);
            if (vp == null || vp.getAdapter() == null || !(vp.getAdapter() instanceof android.support.v4.app.o)) return;
            List<?> frags = (List<?>) fragsF.get(vp.getAdapter());
            if (frags == null) return;
            for (int i = 0; i < frags.size(); i++) {
                Object f = frags.get(i);
                if (!(f instanceof SpaceShipItem)) continue;
                TextView name = (TextView) nameF.get(f);
                SpaceObjectType t = (SpaceObjectType) shipF.get(f);
                if (name == null || t == null || !(name.getParent() instanceof RelativeLayout)) continue;
                RelativeLayout page = (RelativeLayout) name.getParent();
                if (page.findViewWithTag(PAGE) != null) continue;
                page.addView(pageLine(a, t), pageParams());
            }
        } catch (Throwable e) {
            // the page works without it
        }
    }

    private static RelativeLayout.LayoutParams pageParams() {
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
        lp.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
        return lp;
    }

    private static View pageLine(final Activity a, SpaceObjectType t) {
        float dp = a.getResources().getDisplayMetrics().density;
        int g = group(t);
        LinearLayout row = new LinearLayout(a);
        row.setTag(PAGE);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        Button back = smallButton(a, ModLang.tr("◀ TREE"), dp);
        back.setTextColor(CYAN);
        back.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { show(a); } });
        LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        bl.rightMargin = (int) (6 * dp);
        row.addView(back, bl);
        Bitmap em = emblem(a, g);
        if (em != null) {
            ImageView iv = new ImageView(a);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            iv.setImageBitmap(em);
            LinearLayout.LayoutParams il = new LinearLayout.LayoutParams((int) (22 * dp), (int) (22 * dp));
            il.rightMargin = (int) (4 * dp);
            row.addView(iv, il);
        }
        LinearLayout txt = new LinearLayout(a);
        txt.setOrientation(LinearLayout.VERTICAL);
        txt.addView(text(a, groupName(g), 11, groupColor(g), true));
        txt.addView(text(a, standingText(g), 9, TEXT, false));
        row.addView(txt);
        return row;
    }

    // ================================================================== small view helpers
    private static TextView text(Context c, String s, int sp, int color, boolean bold) {
        TextView t = new TextView(c);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(Typeface.DEFAULT_BOLD);
        return t;
    }

    private static GradientDrawable box(int fill, int stroke, float dp, int strokeDp) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(fill);
        d.setStroke(Math.max(1, (int) (strokeDp * dp)), stroke);
        d.setCornerRadius(4 * dp);
        return d;
    }

    private static Button smallButton(Context c, String s, float dp) {
        Button b = new Button(c);
        b.setText(s);
        b.setAllCaps(false);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
        b.setTextColor(Color.WHITE);
        b.setBackgroundDrawable(box(0xCC0B2238, 0xFF2C5A80, dp, 1));
        b.setPadding((int) (10 * dp), (int) (4 * dp), (int) (10 * dp), (int) (4 * dp));
        b.setMinWidth(0);
        b.setMinimumWidth(0);
        b.setMinHeight(0);
        b.setMinimumHeight(0);
        return b;
    }
}
