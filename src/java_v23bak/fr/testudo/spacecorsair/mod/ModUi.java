package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import fr.testudo.spacecorsair.activity.adapters.SpaceObjectAdapter;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * List tools for the Android screens.
 * Ships screen: rarity filter, Ship tree (every hull grouped by class and tech, with its status), Inbox.
 * Inventory / shop / sell lists: rarity filter, sort mode, "Sell junk" (sell tab only), Inbox.
 * Each list keeps its own filter; the bar only shows buttons that apply to the visible list.
 */
public class ModUi {
    private static final String TAG = "modToolbar";
    private static final String SHIPS = "SHIPS";
    private static final Map<String, LootRarety> filters = new HashMap<String, LootRarety>();
    private static final Map<String, Integer> sorts = new HashMap<String, Integer>();
    private static final String[] SORT_NAMES = {"Rarity", "Level", "Value", "Name"};
    private static List<SpaceObjectType> lastShips = new ArrayList<SpaceObjectType>();

    private static final Comparator<SpaceObjectType> SHIP_ORDER = new Comparator<SpaceObjectType>() {
        public int compare(SpaceObjectType a, SpaceObjectType b) {
            int d = ModShips.rank(a) - ModShips.rank(b);
            return d != 0 ? d : level(a) - level(b);
        }
    };

    private static int level(SpaceObjectType t) {
        GearSpec g = t.getGearSpec();
        return g == null ? 0 : g.level;
    }

    private static Comparator<SpaceObject> itemOrder(final int mode) {
        return new Comparator<SpaceObject>() {
            public int compare(SpaceObject a, SpaceObject b) {
                SpaceObjectType x = a.getSpaceObjectType(), y = b.getSpaceObjectType();
                int r = y.getRarety().getRaretySort() - x.getRarety().getRaretySort();
                switch (mode) {
                    case 1: { int d = level(y) - level(x); return d != 0 ? d : r; }
                    case 2: { long d = (long) b.getTotalSellPrice() - (long) a.getTotalSellPrice(); return d > 0 ? 1 : d < 0 ? -1 : r; }
                    case 3: return String.valueOf(x.getLocalizedLabel()).compareToIgnoreCase(String.valueOf(y.getLocalizedLabel()));
                    default: { if (r != 0) return r; return level(y) - level(x); }
                }
            }
        };
    }

    // ================================================================== hooks
    public static List<SpaceObjectType> ships(Activity activity) {
        // top strip between the currency counters and the level box: the bottom-left area holds the ship stat bars
        ensureBar(activity, Gravity.TOP | Gravity.CENTER_HORIZONTAL);
        ModScroll.attach(activity);
        LootRarety f = filters.get(SHIPS);
        List<SpaceObjectType> out = new ArrayList<SpaceObjectType>();
        for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) {
            if (ModDev.hidden(t)) continue;
            if (f == null || t.getRarety() == f) out.add(t);
        }
        if (out.isEmpty()) for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) if (!ModDev.hidden(t)) out.add(t);
        Collections.sort(out, SHIP_ORDER);
        lastShips = out;
        return out;
    }

    public static List items(Activity activity, List list, SpaceObjectAdapter.ItemContext ctx) {
        ensureBar(activity, Gravity.BOTTOM | Gravity.RIGHT);
        if (list == null) return null;
        String k = key(ctx);
        LootRarety f = filters.get(k);
        List<SpaceObject> out = new ArrayList<SpaceObject>();
        for (Object o : list) {
            SpaceObject so = (SpaceObject) o;
            if (f == null || so.getSpaceObjectType().getRarety() == f) out.add(so);
        }
        Integer m = sorts.get(k);
        Collections.sort(out, itemOrder(m == null ? 0 : m));
        return out;
    }

    private static String key(SpaceObjectAdapter.ItemContext ctx) {
        return ctx == null ? "INVENTORY" : ctx.name();
    }

    /** Which list the bar currently controls, or null when no list is visible. */
    private static String activeKey(Activity a) {
        if (a.getClass().getName().contains("ShipsActivity")) return SHIPS;
        Class<?> c = a.getClass();
        while (c != null && c != Object.class) {
            for (Field f : c.getDeclaredFields()) {
                if (!ListView.class.isAssignableFrom(f.getType())) continue;
                try {
                    f.setAccessible(true);
                    ListView lv = (ListView) f.get(a);
                    if (lv == null || !lv.isShown()) continue;
                    ListAdapter ad = lv.getAdapter();
                    if (ad instanceof SpaceObjectAdapter) {
                        Field cf = SpaceObjectAdapter.class.getDeclaredField("itemContext");
                        cf.setAccessible(true);
                        return key((SpaceObjectAdapter.ItemContext) cf.get(ad));
                    }
                } catch (Exception e) {
                    // ignore this field
                }
            }
            c = c.getSuperclass();
        }
        return null;
    }

    // ================================================================== toolbar
    private static Button button(Activity a, String tag) {
        Button b = new Button(a);
        b.setTag(tag);
        b.setAllCaps(false);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
        b.setTextColor(Color.WHITE);
        b.setBackgroundColor(0xCC0B2238);
        int pad = (int) (6 * a.getResources().getDisplayMetrics().density);
        b.setPadding(pad * 2, pad, pad * 2, pad);
        b.setMinWidth(0);
        b.setMinimumWidth(0);
        return b;
    }

    private static void ensureBar(final Activity activity, int gravity) {
        if (activity == null) return;
        try {
            final ViewGroup root = (ViewGroup) activity.findViewById(android.R.id.content);
            if (root == null) return;
            LinearLayout bar = (LinearLayout) root.findViewWithTag(TAG);
            if (bar == null) {
                bar = new LinearLayout(activity);
                bar.setTag(TAG);
                bar.setOrientation(LinearLayout.HORIZONTAL);
                int pad = (int) (6 * activity.getResources().getDisplayMetrics().density);
                FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, gravity);
                lp.setMargins(pad, pad, pad, pad);
                final boolean shipsScreen = activity.getClass().getName().contains("ShipsActivity");
                LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                bl.setMargins(pad / 2, 0, pad / 2, 0);
                if (shipsScreen) {
                    Button tree = button(activity, "tree");
                    tree.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { showTree(activity); } });
                    bar.addView(tree, bl);
                }
                Button rar = button(activity, "rarity");
                rar.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        String k = activeKey(activity);
                        if (k == null) return;
                        filters.put(k, next(filters.get(k)));
                        refresh(activity);
                        update(activity);
                    }
                });
                bar.addView(rar, bl);
                if (!shipsScreen) {
                    Button sort = button(activity, "sort");
                    sort.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View v) {
                            String k = activeKey(activity);
                            if (k == null) return;
                            Integer m = sorts.get(k);
                            sorts.put(k, ((m == null ? 0 : m) + 1) % SORT_NAMES.length);
                            refresh(activity);
                            update(activity);
                        }
                    });
                    bar.addView(sort, bl);
                    Button junk = button(activity, "junk");
                    junk.setText("Sell junk");
                    junk.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { sellJunk(activity); } });
                    bar.addView(junk, bl);
                }
                if (activity.getClass().getName().contains("StationActivity")) {
                    Button gift = button(activity, "gift");
                    gift.setText("Gift code");
                    gift.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { ModDev.askCode(activity); } });
                    bar.addView(gift, bl);
                }
                Button rep = button(activity, "rep");
                rep.setText("Standings");
                rep.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { ModComms.showStandings(activity); } });
                bar.addView(rep, bl);
                Button inbox = button(activity, "inbox");
                inbox.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) { ModQol.showInbox(activity); update(activity); }
                });
                bar.addView(inbox, bl);
                root.addView(bar, lp);
                root.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                    public void onGlobalLayout() { update(activity); }
                });
            }
            bar.bringToFront();
            update(activity);
        } catch (Exception e) {
            // never break the screen because of the toolbar
        }
    }

    private static void update(Activity a) {
        try {
            ViewGroup root = (ViewGroup) a.findViewById(android.R.id.content);
            if (root == null) return;
            View bar = root.findViewWithTag(TAG);
            if (bar == null) return;
            if (a.getClass().getName().contains("ShipsActivity")) { fitShipDescriptions(a, root); wireArrows(a, root); testPage(a); }
            String k = activeKey(a);
            setVis(bar, k == null ? View.GONE : View.VISIBLE);
            if (k == null) return;
            // keep the last rows reachable: lists scroll above the toolbar instead of under it
            int h = bar.getHeight();
            if (h > 0) padLists(a, h + (int) (12 * a.getResources().getDisplayMetrics().density));
            LootRarety f = filters.get(k);
            Button rar = (Button) bar.findViewWithTag("rarity");
            if (rar != null) {
                setText(rar, f == null ? "Rarity: All" : "Rarity: " + f.name().charAt(0) + f.name().substring(1).toLowerCase());
                int color = Color.WHITE;
                if (f != null) {
                    try { color = a.getResources().getColor(f.getColor()); } catch (Exception e) { color = Color.WHITE; }
                }
                rar.setTextColor(color);
            }
            Button sort = (Button) bar.findViewWithTag("sort");
            if (sort != null) { Integer m = sorts.get(k); setText(sort, "Sort: " + SORT_NAMES[m == null ? 0 : m]); }
            Button junk = (Button) bar.findViewWithTag("junk");
            if (junk != null) setVis(junk, "SELL".equals(k) ? View.VISIBLE : View.GONE);
            Button tree = (Button) bar.findViewWithTag("tree");
            if (tree != null) { int n = newShips().size(); setText(tree, n > 0 ? "Ship tree (" + n + " NEW)" : "Ship tree"); tree.setTextColor(n > 0 ? 0xFF41FF16 : Color.WHITE); }
            Button inbox = (Button) bar.findViewWithTag("inbox");
            if (inbox != null) { int u = ModQol.unread(); setText(inbox, u > 0 ? "Inbox (" + u + ")" : "Inbox"); inbox.setTextColor(u > 0 ? 0xFF41FF16 : Color.WHITE); }
        } catch (Exception e) {
            // ignore
        }
    }

    /** Ship pages are fixed-height: cap the description box and let it scroll so it never covers the stat bars or BUY. */
    private static void fitShipDescriptions(Activity a, ViewGroup root) {
        try {
            int id = a.getResources().getIdentifier("textShipDesc", "id", a.getPackageName());
            if (id == 0) return;
            int maxH = (int) (a.getResources().getDisplayMetrics().heightPixels * 0.40f);
            java.util.ArrayList<View> found = new java.util.ArrayList<View>();
            collect(root, id, found);
            for (View v : found) {
                if (!(v instanceof android.widget.TextView)) continue;
                android.widget.TextView tv = (android.widget.TextView) v;
                if (tv.getMaxHeight() == maxH) continue;
                tv.setMaxHeight(maxH);
                // no scrollbar: ship_item.xml declares none, and enabling one later NPEs in View.onDrawScrollBars
                tv.setMovementMethod(new android.text.method.ScrollingMovementMethod());
                ModScroll.track(tv);
            }
        } catch (Exception e) {
            // never break the ships screen
        }
    }

    /** The ship page arrows were decoration only: tapping them now turns the page. */
    private static void wireArrows(final Activity a, ViewGroup root) {
        try {
            int next = a.getResources().getIdentifier("imgNext", "id", a.getPackageName());
            int prev = a.getResources().getIdentifier("imgPrevious", "id", a.getPackageName());
            java.util.ArrayList<View> found = new java.util.ArrayList<View>();
            if (next != 0) collect(root, next, found);
            int nNext = found.size();
            if (prev != 0) collect(root, prev, found);
            for (int i = 0; i < found.size(); i++) {
                View v = found.get(i);
                if (v.getTag() != null && "modArrow".equals(v.getTag())) continue;
                final int step = i < nNext ? 1 : -1;
                v.setTag("modArrow");
                v.setClickable(true);
                v.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        try {
                            Field f = null;
                            for (Class<?> c = a.getClass(); c != null && f == null; c = c.getSuperclass()) f = hasField(c, "shipsPager");
                            if (f == null) return;
                            f.setAccessible(true);
                            android.support.v4.view.ViewPager vp = (android.support.v4.view.ViewPager) f.get(a);
                            if (vp != null) vp.setCurrentItem(vp.getCurrentItem() + step);
                        } catch (Exception e) {
                            // arrows are a convenience
                        }
                    }
                });
            }
        } catch (Exception e) {
            // never break the ships screen
        }
    }

    private static Activity testPaged;

    /** Emulator tests only: open the ships pager on the hull named in /data/local/tmp/corsair_page (enum name). */
    private static void testPage(Activity a) {
        if (a == testPaged) return;
        String v = ModDev.testValue("corsair_page");
        if (v == null || v.length() == 0) return;
        try {
            Field f = null, g = null;
            for (Class<?> c = a.getClass(); c != null && (f == null || g == null); c = c.getSuperclass()) {
                if (f == null) f = hasField(c, "shipsPager");
                if (g == null) g = hasField(c, "shipPagerAdapter");
            }
            if (f == null || g == null) return;
            f.setAccessible(true);
            g.setAccessible(true);
            Object ad = g.get(a);
            android.support.v4.view.ViewPager vp = (android.support.v4.view.ViewPager) f.get(a);
            if (ad == null || vp == null) return;
            Field sf = ad.getClass().getDeclaredField("ships");
            sf.setAccessible(true);
            java.util.List<?> ships = (java.util.List<?>) sf.get(ad);
            for (int i = 0; i < ships.size(); i++) {
                Object o = ships.get(i);
                if (o instanceof Enum && v.equals(((Enum<?>) o).name())) { vp.setCurrentItem(i); testPaged = a; return; }
            }
            testPaged = a;
        } catch (Exception e) {
            testPaged = a;
        }
    }

    private static Field hasField(Class<?> c, String name) {
        try {
            return c.getDeclaredField(name);
        } catch (Exception e) {
            return null;
        }
    }

    private static void collect(View v, int id, java.util.List<View> out) {
        if (v.getId() == id) out.add(v);
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) collect(g.getChildAt(i), id, out);
        }
    }

    private static void padLists(Activity a, int bottom) {
        Class<?> c = a.getClass();
        while (c != null && c != Object.class) {
            for (Field f : c.getDeclaredFields()) {
                if (!ListView.class.isAssignableFrom(f.getType())) continue;
                try {
                    f.setAccessible(true);
                    ListView lv = (ListView) f.get(a);
                    if (lv == null || lv.getPaddingBottom() == bottom) continue;
                    lv.setClipToPadding(false);
                    lv.setPadding(lv.getPaddingLeft(), lv.getPaddingTop(), lv.getPaddingRight(), bottom);
                } catch (Exception e) {
                    // ignore this field
                }
            }
            c = c.getSuperclass();
        }
    }

    private static void setVis(View v, int vis) { if (v.getVisibility() != vis) v.setVisibility(vis); }
    private static void setText(Button b, String s) { if (!s.contentEquals(b.getText())) b.setText(s); }

    private static LootRarety next(LootRarety f) {
        LootRarety[] all = LootRarety.values();
        if (f == null) return all[0];
        if (f.ordinal() == all.length - 1) return null;
        return all[f.ordinal() + 1];
    }

    private static void refresh(Activity activity) {
        String[] names = {"updateUI", "updateListviews", "initPager"};
        for (String n : names) {
            try {
                Method m = activity.getClass().getMethod(n);
                m.invoke(activity);
                return;
            } catch (Exception e) {
                // try next
            }
        }
    }

    // ================================================================== sell junk (station sell tab)
    private static void sellJunk(final Activity a) {
        try {
            Field sf = ModQol.findField(a.getClass(), "currentStation");
            if (sf == null) return;
            sf.setAccessible(true);
            final Object station = sf.get(a);
            Field bl = ModQol.findField(station.getClass(), "buyList");
            bl.setAccessible(true);
            final Collection buyList = (Collection) bl.get(station);
            final int lvl = ObjectRegistry.INSTANCE.game.playerInfo.level;
            final List<SpaceObject> junk = new ArrayList<SpaceObject>();
            long total = 0;
            for (SpaceObject so : ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getContent()) {
                SpaceObjectType t = so.getSpaceObjectType();
                GearSpec g = t.getGearSpec();
                if (!buyList.contains(t) || g == null || !t.isEquipable()) continue;
                if (t.getRarety() != LootRarety.BASIC || g.level >= lvl) continue;
                junk.add(so);
                total += so.getTotalSellPrice();
            }
            if (junk.isEmpty()) {
                new AlertDialog.Builder(a).setTitle("Sell junk").setMessage("No Common gear below your level to sell.").setPositiveButton("OK", null).show();
                return;
            }
            new AlertDialog.Builder(a).setTitle("Sell junk")
                .setMessage("Sell " + junk.size() + " stacks of Common gear below level " + lvl + " for about " + total + " credits?")
                .setPositiveButton("Sell", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        try {
                            Field inv = ModQol.findField(station.getClass(), "inventory");
                            inv.setAccessible(true);
                            Object sInv = inv.get(station);
                            Method add = sInv.getClass().getMethod("addObject", SpaceObject.class);
                            for (SpaceObject so : junk) {
                                SpaceObject copy = new SpaceObject(so.getSpaceObjectType(), so.getQuantity());
                                ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.sell(copy);
                                add.invoke(sInv, copy);
                            }
                            ObjectRegistry.INSTANCE.soundManager.playCashTransactionSound();
                            for (String n : new String[]{"updateTexts", "updateListviews"}) {
                                try { Method m = a.getClass().getMethod(n); m.invoke(a); } catch (Exception e) { /* next */ }
                            }
                        } catch (Exception e) {
                            // leave the rest
                        }
                    }
                })
                .setNegativeButton("Cancel", null).show();
        } catch (Exception e) {
            // ignore
        }
    }

    // ================================================================== ship tree
    private static SharedPreferences prefs() {
        try {
            return ObjectRegistry.INSTANCE.game.context.getSharedPreferences("modqol", 0);
        } catch (Exception e) {
            return null;
        }
    }

    static Set<String> newShips() {
        Set<String> s = new HashSet<String>();
        SharedPreferences p = prefs();
        if (p == null) return s;
        for (String n : p.getString("newShips", "").split(",")) if (n.length() > 0) s.add(n);
        return s;
    }

    /** Called on level-up: hulls of that level get a NEW badge until the tree is opened. */
    public static void markNewShips(int level) {
        SharedPreferences p = prefs();
        if (p == null) return;
        Set<String> s = newShips();
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) if (level(t) == level && !pi.availShips.contains(t) && !ModDev.isDev(t) && !t.name().startsWith("hullSecret")) s.add(t.name());
        StringBuilder sb = new StringBuilder();
        for (String n : s) sb.append(n).append(',');
        p.edit().putString("newShips", sb.toString()).commit();
    }

    private static int treeShow; // 0 all, 1 owned, 2 can buy, 3 locked
    private static final String[] SHOW = {"Show: All", "Show: Owned", "Show: Can buy", "Show: Locked"};

    private static void showTree(final Activity a) {
        try {
            final float dp = a.getResources().getDisplayMetrics().density;
            final Set<String> fresh = newShips();
            SharedPreferences p = prefs();
            if (p != null) p.edit().putString("newShips", "").commit();
            final Dialog d = new Dialog(a, android.R.style.Theme_Black_NoTitleBar);
            LinearLayout outer = new LinearLayout(a);
            outer.setOrientation(LinearLayout.VERTICAL);
            outer.setBackgroundColor(0xF2050B16);
            int pad = (int) (10 * dp);
            outer.setPadding(pad, pad, pad, pad);
            LinearLayout head = new LinearLayout(a);
            head.setOrientation(LinearLayout.HORIZONTAL);
            head.setGravity(Gravity.CENTER_VERTICAL);
            TextView title = new TextView(a);
            title.setText("SHIP TREE");
            title.setTextColor(0xFF6AD0FF);
            title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
            head.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            Button show = button(a, "show");
            show.setText(SHOW[treeShow]);
            head.addView(show);
            Button close = button(a, "close");
            close.setText("Close");
            head.addView(close);
            outer.addView(head);
            TextView legend = new TextView(a);
            legend.setText("Classes left to right in licence order. Tech I needs any hull of the previous class; Tech II needs a Tech I of the same class.  "
                + "Green = owned, cyan = flying, yellow = can buy now, grey = locked.");
            legend.setTextColor(0xFFB0C4DA);
            legend.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
            outer.addView(legend);
            final LinearLayout body = new LinearLayout(a);
            body.setOrientation(LinearLayout.VERTICAL);
            ScrollView sv = new ScrollView(a);
            sv.addView(body);
            outer.addView(sv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1));
            close.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { d.dismiss(); update(a); } });
            show.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    treeShow = (treeShow + 1) % SHOW.length;
                    ((Button) v).setText(SHOW[treeShow]);
                    fillTree(a, d, body, fresh, dp);
                }
            });
            fillTree(a, d, body, fresh, dp);
            d.setContentView(outer);
            d.show();
        } catch (Exception e) {
            // ignore
        }
    }

    private static int state(SpaceObjectType t) {
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        if (pi.playerGear.playerShip == t) return 0;
        if (pi.availShips.contains(t)) return 1;
        boolean lvl = level(t) <= pi.level;
        boolean lic = ModShips.licenceOk(t);
        boolean cash = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.canAfford(t);
        return lvl && lic && cash ? 2 : lvl && lic ? 3 : 4;
    }

    private static void fillTree(final Activity a, final Dialog d, LinearLayout body, Set<String> fresh, float dp) {
        body.removeAllViews();
        List<SpaceObjectType> all = new ArrayList<SpaceObjectType>();
        for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) if (!ModDev.hidden(t)) all.add(t);
        Collections.sort(all, SHIP_ORDER);
        String cls = null;
        LinearLayout row = null;
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        for (final SpaceObjectType t : all) {
            int st = state(t);
            boolean pass = treeShow == 0 || (treeShow == 1 && st <= 1) || (treeShow == 2 && st == 2) || (treeShow == 3 && st >= 3);
            if (!pass) continue;
            String c = ModShips.className(t);
            if (!c.equals(cls)) {
                cls = c;
                TextView h = new TextView(a);
                h.setText(c.toUpperCase());
                h.setTextColor(0xFFFFD93F);
                h.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                h.setPadding(0, (int) (10 * dp), 0, (int) (4 * dp));
                body.addView(h);
                HorizontalScrollView hs = new HorizontalScrollView(a);
                row = new LinearLayout(a);
                row.setOrientation(LinearLayout.HORIZONTAL);
                hs.addView(row);
                body.addView(hs);
            }
            LinearLayout card = new LinearLayout(a);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setGravity(Gravity.CENTER_HORIZONTAL);
            int pad = (int) (6 * dp);
            card.setPadding(pad, pad, pad, pad);
            GradientDrawable bg = new GradientDrawable();
            bg.setColor(0xFF0B1A2E);
            int border = st == 0 ? 0xFF6AD0FF : st == 1 ? 0xFF41FF16 : st == 2 ? 0xFFFFD93F : 0xFF4A5868;
            bg.setStroke((int) (2 * dp), border);
            bg.setCornerRadius(8 * dp);
            card.setBackgroundDrawable(bg);
            ImageView iv = new ImageView(a);
            try { iv.setImageResource(t.getDrawableId()); } catch (Exception e) { /* none */ }
            ModArt.shipIcon(iv, t);
            if (st >= 3) iv.setAlpha(110);
            card.addView(iv, new LinearLayout.LayoutParams((int) (64 * dp), (int) (64 * dp)));
            TextView nm = new TextView(a);
            nm.setText((fresh.contains(t.name()) ? "NEW " : "") + t.getLocalizedLabel());
            int rc = Color.WHITE;
            try { rc = a.getResources().getColor(t.getRarety().getColor()); } catch (Exception e) { rc = Color.WHITE; }
            nm.setTextColor(fresh.contains(t.name()) ? 0xFF41FF16 : rc);
            nm.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
            card.addView(nm);
            TextView sub = new TextView(a);
            String s = ModShips.techName(t) + " · Lv " + level(t);
            if (st == 0) s += "\nFLYING";
            else if (st == 1) s += "\nOwned";
            else if (st == 2) s += "\nCan buy";
            else if (level(t) > pi.level) s += "\nNeeds level " + level(t);
            else if (!ModShips.licenceOk(t)) s += "\nLicence: " + ModShips.licenceTextOf(t);
            else s += "\nNot enough credits";
            sub.setText(s);
            sub.setTextColor(0xFFB0C4DA);
            sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 9);
            sub.setGravity(Gravity.CENTER_HORIZONTAL);
            card.addView(sub);
            card.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    d.dismiss();
                    jumpTo(a, t);
                }
            });
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams((int) (112 * dp), ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(0, 0, (int) (6 * dp), 0);
            row.addView(card, lp);
        }
        if (body.getChildCount() == 0) {
            TextView none = new TextView(a);
            none.setText("No ships match this filter.");
            none.setTextColor(Color.WHITE);
            body.addView(none);
        }
    }

    /** Page the ships screen to a hull (clears the rarity filter if it hides it). */
    private static void jumpTo(Activity a, SpaceObjectType t) {
        try {
            if (!lastShips.contains(t)) {
                filters.remove(SHIPS);
                refresh(a);
            }
            int idx = lastShips.indexOf(t);
            if (idx < 0) return;
            Field f = ModQol.findField(a.getClass(), "shipsPager");
            f.setAccessible(true);
            Object pager = f.get(a);
            Method m = pager.getClass().getMethod("setCurrentItem", int.class);
            m.invoke(pager, idx);
            update(a);
        } catch (Exception e) {
            // ignore
        }
    }
}
