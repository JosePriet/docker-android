package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
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
 * Ships screen: rarity filter, Standings, Inbox (v25: the faction ship tree, ModShipTree, is the entry view of that screen).
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

    static int level(SpaceObjectType t) {
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
    private static boolean inShips;   // ShipsActivity.initPager is running: its adapter is not set yet

    public static List<SpaceObjectType> ships(Activity activity) {
        inShips = true;
        try {
            return shipList(activity);
        } finally {
            inShips = false;
        }
    }

    private static List<SpaceObjectType> shipList(Activity activity) {
        // top strip between the currency counters and the level box: the bottom-left area holds the ship stat bars
        ensureBar(activity, Gravity.TOP | Gravity.CENTER_HORIZONTAL);
        ModScroll.attach(activity);
        // v25: the pager holds only the faction selected in the ship tree (ModShipTree), in tree order
        int g = ModShipTree.ensureSelection(activity);
        LootRarety f = filters.get(SHIPS);
        List<SpaceObjectType> out = new ArrayList<SpaceObjectType>();
        for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) {
            if (ModDev.hidden(t) || ModShipTree.group(t) != g) continue;
            if (f == null || t.getRarety() == f) out.add(t);
        }
        if (out.isEmpty()) for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) if (!ModDev.hidden(t) && ModShipTree.group(t) == g) out.add(t);
        if (out.isEmpty()) for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) if (!ModDev.hidden(t)) out.add(t);
        Collections.sort(out, ModShipTree.ORDER);
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
                // v25: the ship tree is the ships screen's entry view (ModShipTree); pages return to it with "TREE" or BACK
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
            if (a.getClass().getName().contains("ShipsActivity")) {
                ModShipTree.attach(a);
                fitShipDescriptions(a, root);
                wireArrows(a, root);
                ModShipTree.decoratePages(a);
                if (!inShips) testPage(a);
                // the tree overlay has its own Standings / Inbox buttons
                if (ModShipTree.shown(a)) { setVis(bar, View.GONE); return; }
            }
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

    /** The ship page arrows were decoration only: tapping them now turns the page. v25: the pager holds only the faction
     *  selected in the ship tree, in tree order (ModUi.ships), so a step never leaves that faction. */
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

    /** Emulator tests only: open the ships pager on the hull named in /data/local/tmp/corsair_page (enum name), tree hidden. */
    private static void testPage(Activity a) {
        if (a == testPaged) return;
        testPaged = a;
        String v = ModDev.testValue("corsair_page");
        if (v == null || v.length() == 0) return;
        try {
            ModShipTree.hide(a);
            for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) {
                if (v.equals(t.name())) { ModShipTree.openShip(a, t); return; }
            }
        } catch (Exception e) {
            // test helper only
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

    /** Called on level-up: hulls of that level get a NEW badge until the ship tree is next opened. */
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

    /** 0 flying, 1 owned, 2 can buy, 3 needs credits, 4 locked (level or licence). */
    static int state(SpaceObjectType t) {
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        if (pi.playerGear.playerShip == t) return 0;
        if (pi.availShips.contains(t)) return 1;
        boolean lvl = level(t) <= pi.level;
        boolean lic = ModShips.licenceOk(t);
        boolean cash = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.canAfford(t);
        return lvl && lic && cash ? 2 : lvl && lic ? 3 : 4;
    }

    /** Page the ships screen to a hull (rebuilds the pager when the hull is not in it: other faction or rarity filter). */
    static void jumpTo(Activity a, SpaceObjectType t) {
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
