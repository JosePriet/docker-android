package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisActivity;
import fr.testudo.spacecorsair.business.ennemis.EnnemisActivitySequence;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.civil.CivilFactory;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.PoliceShip;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.business.world.station.ThreeDockStation;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.WeakHashMap;

/**
 * v35 sectors (TASK.md v35 reqs 3-5): 2-3x NPC traffic (traders, police patrols, faction wings), fixed points of
 * interest per sector (outpost, wreck field, mining belt, faction base) built from existing art, flagship / titan wrecks
 * that stay for 3 more visits or 30 minutes of play, and the pursuit waves after a flagship kill.
 */
public final class ModSector {
    private ModSector() {}

    // ------------------------------------------------------------------ play clock (in-flight time, survives restarts)
    private static long playMs = -1;
    private static int saveMs;

    static long play() {
        if (playMs < 0) {
            SharedPreferences p = ModQol.prefs();
            playMs = p == null ? 0 : p.getLong("v35_play_ms", 0);
        }
        return playMs;
    }

    // ------------------------------------------------------------------ factions of v35 NPCs (counters, name tags)
    private static final WeakHashMap<Element, String> faction = new WeakHashMap<Element, String>();

    /** Faction key of a pursuer / patrol / wing ship spawned here, else null. */
    static String factionOf(Element e) {
        return e == null ? null : faction.get(e);
    }

    static boolean excluded(LevelId id) {
        if (id == null || id.isMulti) return true;
        switch (id) {
            case TUTORIAL:
            case GALACTIC_ARENA:
            case FFA_THE_PLAYER_PAY:
                return true;
            default:
                return false;
        }
    }

    // ------------------------------------------------------------------ sector entry
    private static int pending;
    private static LevelId here;
    private static final ArrayList<CivilShip> traders = new ArrayList<CivilShip>(), patrols = new ArrayList<CivilShip>();
    private static int traderTarget, refill;
    private static final Vector2[] poi = new Vector2[4];
    static final int OUTPOST = 0, WRECKS = 1, MINING = 2, BASE = 3;

    /** Sector change (ModCaps.tick). */
    static void onLevel(PlayerShip ps) {
        traders.clear();
        patrols.clear();
        traderTarget = 0;
        here = null;
        pending = 0;
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            if (excluded(id) || ObjectRegistry.INSTANCE.game.mapMode) return;
            here = id;
            pending = 60;          // after the new sector's stock elements are in the level (ModCaps runs before commit)
        } catch (Throwable t) {
            here = null;
        }
    }

    /** Per frame (ModCaps.tick). */
    static void tick(PlayerShip ps, long j) {
        if (ps == null) return;
        boolean flying = !ps.removed && !ps.isDocked && !ObjectRegistry.INSTANCE.game.mapMode;
        if (flying) {
            playMs = play() + j;
            saveMs += j;
            if (saveMs > 10000) {
                saveMs = 0;
                SharedPreferences p = ModQol.prefs();
                if (p != null) p.edit().putLong("v35_play_ms", playMs).apply();
            }
        }
        if (pending > 0) {
            if (--pending == 0) {
                try {
                    build(here);
                } catch (Throwable t) {
                    // the sector stays stock
                }
            }
            return;
        }
        if (here == null || !flying) return;
        pursuitTick(ps);
        refill -= j;
        if (refill > 0) return;
        refill = 4000;
        try {
            prune(traders);
            prune(patrols);
            if (traders.size() < traderTarget) trader(here);       // one at a time: traffic builds up instead of popping in
            else if (patrols.size() < PATROLS) patrol(here);
        } catch (Throwable t) {
            // no traffic this round
        }
    }

    private static void prune(ArrayList<CivilShip> l) {
        for (int i = l.size() - 1; i >= 0; i--) if (l.get(i).removed) l.remove(i);
    }

    static final int PATROLS = 4;

    /** Traffic targets [P]: stock civilians x2.5 in total (1.5x extra traders, 3-10), 4 police patrol ships, wings in ModFleet. */
    static int traders(int stockCivilians) {
        return Math.max(3, Math.min(10, Math.round(stockCivilians * 1.5f)));
    }

    private static void build(LevelId id) {
        if (id == null) return;
        Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
        if (lvl == null || lvl.id != id) return;
        int civ = 0;
        List<Element> els = lvl.elements;
        ArrayList<Vector2> busy = new ArrayList<Vector2>();
        for (int k = 0; k < els.size(); k++) {
            Element e = els.get(k);
            if (e instanceof CivilShip && ModCapitals.cap(e) == null) civ++;
            if (e instanceof Portal || e instanceof Station) busy.add(new Vector2(e.position));
        }
        traderTarget = traders(civ);
        refill = 2000;
        places(id, busy);
        outpost(id);
        wreckField(id);
        miningBelt(id);
        base(id);
        restoreWrecks(id);
    }

    // ------------------------------------------------------------------ points of interest (fixed per sector)
    /** Four fixed spots 4.5-7.5k from the centre, a quarter turn apart, kept 2k clear of gates and stations. */
    private static void places(LevelId id, ArrayList<Vector2> busy) {
        Random r = new Random(id.name().hashCode() * 7919L);
        double base = r.nextDouble() * Math.PI * 2;
        for (int k = 0; k < poi.length; k++) {
            Vector2 best = null;
            for (int tries = 0; tries < 12 && best == null; tries++) {
                double a = base + k * Math.PI / 2 + (r.nextDouble() - 0.5) * 0.7;
                float d = 4500 + r.nextFloat() * 3000;
                Vector2 v = new Vector2((float) Math.cos(a) * d, (float) Math.sin(a) * d);
                boolean ok = true;
                for (Vector2 b : busy) if (b.distance(v) < 2000) { ok = false; break; }
                if (ok || tries == 11) best = v;
            }
            poi[k] = best;
            busy.add(best);
        }
    }

    static String sectorName(LevelId id) {
        return ModFaction.pretty(id);
    }

    private static void station(Vector2 at, String name, float r, float g, float b) {
        ThreeDockStation s = fr.testudo.spacecorsair.business.factory.GamePools.newThreeDockStation();
        s.init(at, name);
        s.r = r;
        s.g = g;
        s.b = b;
        s.buyList.addAll(SpaceObjectType.ALL_SELLABLE_BY_PLAYER);   // trading post: buys cargo like the stock goods stations
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(s);
    }

    private static void outpost(LevelId id) {
        station(poi[OUTPOST], ModLang.spanish() ? ModLang.tr("Outpost") + " " + sectorName(id) : sectorName(id) + " Outpost", 0.8f, 0.85f, 0.9f);
    }

    /** Faction of a sector's base: its HQ faction, else a fixed pick per sector. */
    static int baseFaction(LevelId id) {
        for (int i = 0; i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i].hq == id) return i;
        return (id.name().hashCode() & 0x7fffffff) % ModCapitals.FACTIONS.length;
    }

    private static void base(LevelId id) {
        ModCapitals.Faction f = ModCapitals.FACTIONS[baseFaction(id)];
        station(poi[BASE], ModLang.spanish() ? ModLang.tr("Base") + " " + f.name : f.name + " Base", f.r, f.g, f.b);
        // a faction wing patrols its base: Reaver / Kre'tari NPC ships; the other factions fly tinted patrol cruisers until their hulls join the NPC pools
        int lv = Math.max(1, (id.levelMin + id.levelMax) / 2);
        for (int k = 0; k < 2; k++) {
            Element e = wingShip(f.key, lv, false);
            if (e == null) continue;
            e.position.setSameAs(poi[BASE]).add((float) (Math.random() * 900 - 450), (float) (Math.random() * 900 - 450));
            e.updateSapCoords();
            if (e instanceof Ennemis) {
                Ennemis en = (Ennemis) e;
                en.setActivitySequence(new EnnemisActivitySequence()
                    .addActivity(new EnnemisActivity().initGotoRandom(poi[BASE].x, poi[BASE].y, 1600))
                    .addActivity(new EnnemisActivity().initIdleDuring(3000)));
                en.addToCurrentLevel();
            } else {
                CivilShip c = (CivilShip) e;
                c.setActivity(new fr.testudo.spacecorsair.business.world.civil.CivilActivity[] {
                    fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMooveRandom(poi[BASE].x, poi[BASE].y, 1600),
                    fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMooveRandom(poi[BASE].x, poi[BASE].y, 1600)});
                ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(c);
            }
        }
    }

    private static final String[] FIELD_ART = {"albatros", "warlord", "orig_police", "monolith", "bastion", "raptor"};

    /** A field of still, burnt-out hulls (existing art). They block and can be shot apart; no loot (the derelict sites carry loot). */
    private static void wreckField(LevelId id) {
        Random r = new Random(id.name().hashCode() * 31L + 5);
        Vector2 c = poi[WRECKS];
        int n = 5;
        for (int k = 0; k < n; k++) {
            String art = FIELD_ART[r.nextInt(FIELD_ART.length)];
            if (!ModArt.hasArt(art)) continue;
            float size = artSize(art);
            double a = r.nextDouble() * Math.PI * 2;
            float d = 300 + k * 380 + r.nextFloat() * 200;
            still(art, size, c.x + (float) Math.cos(a) * d, c.y + (float) Math.sin(a) * d, r.nextFloat() * 360, 0.4f + r.nextFloat() * 0.2f, false, r);
            ModArt.ready(art);
        }
    }

    static float artSize(String art) {
        for (ModShips.Hull h : ModShips.HULLS) if (h != null && art.equals(h.art)) return h.size * 1.4f;
        return "orig_police".equals(art) ? 280 : 400;
    }

    /** Two still pieces of one hull, a gap between them (wreck fields and the restored flagship wrecks). */
    static ModWreck[] still(String art, float size, float x, float y, float spin, float cut, boolean preDrawn, Random r) {
        ModWreck[] out = new ModWreck[2];
        boolean[] grp = {true};                 // no loot roll
        float gap = size * 0.08f;
        for (int k = 0; k < 2; k++) {
            ModWreck w = new ModWreck();
            w.art = art;
            w.group = grp;
            w.poi = true;
            w.u0 = 0; w.u1 = 1;
            w.v0 = k == 0 ? 0 : cut;
            w.v1 = k == 0 ? cut : 1;
            w.cutTop = k == 1;
            w.cutBottom = k == 0;
            w.preDrawn = preDrawn;
            w.tint = preDrawn ? 1.0f : 0.5f;
            w.w = size;
            w.h = size * (w.v1 - w.v0);
            float ly = ((w.v0 + w.v1) / 2 - 0.5f) * size + (k == 0 ? -gap : gap);
            Vector2 o = new Vector2(0, ly).applyRotatation(Math.toRadians(spin));
            w.position.set(x + o.x, y + o.y);
            w.spin = spin + (k == 0 ? -5 : 6) * r.nextFloat();
            w.spinSpeed = (r.nextFloat() - 0.5f) * 0.01f;
            w.speed.set(0, 0);
            w.getPhysicDimension().set(Math.min(size, w.h) * 0.8f, Math.min(size, w.h) * 0.8f);
            w.maxLife = 2000;
            w.life = w.maxLife;
            w.mass = ModWreck.massFor(size);
            w.updateSapCoords();
            ModWreck.add(w);
            out[k] = w;
        }
        return out;
    }

    private static void miningBelt(LevelId id) {
        Vector2 c = poi[MINING];
        ArrayList<Element> l = new ArrayList<Element>();
        fr.testudo.spacecorsair.game.levels.builders.LevelBuilderHelper.addRandomAsteroids(l, 30, c.x, c.y, 1500, 1500, 1.0f, true);
        fr.testudo.spacecorsair.game.levels.builders.LevelBuilderHelper.addRandomMalachite(l, 5, c.x, c.y, 1300, 1300, 0.3f);
        fr.testudo.spacecorsair.game.levels.builders.LevelBuilderHelper.addRandomRuby(l, 2, c.x, c.y, 1300, 1300, 0.3f);
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.addAll(l);
    }

    // ------------------------------------------------------------------ traffic
    private static Vector2 gateNear(Vector2 from, boolean far) {
        Vector2 best = null;
        float bd = far ? -1 : Float.MAX_VALUE;
        List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        for (int k = 0; k < els.size(); k++) {
            Element e = els.get(k);
            if (!(e instanceof Portal)) continue;
            float d = e.position.distance(from);
            if (far ? d > bd : d < bd) { bd = d; best = e.position; }
        }
        return best;
    }

    private static void trader(LevelId id) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        int lv = Math.max(1, id.levelMin);
        CivilShip c = CivilFactory.newTrasnporteur(lv, Math.max(lv, id.levelMax));
        if (c == null) return;
        // enters off-screen at a gate or a point of interest and heads for the gate farthest from it
        Vector2 from = Math.random() < 0.5 ? gateNear(ps.position, true) : poi[(int) (Math.random() * poi.length)];
        if (from == null) from = poi[OUTPOST];
        if (from == null || from.distance(ps.position) < 2500) {
            double a = Math.random() * Math.PI * 2;
            from = new Vector2(ps.position).add((float) Math.cos(a) * 3500, (float) Math.sin(a) * 3500);
        }
        Vector2 to = gateNear(from, true);
        if (to == null) to = poi[(int) (Math.random() * poi.length)];
        c.position.setSameAs(from).add((float) (Math.random() * 400 - 200), (float) (Math.random() * 400 - 200));
        c.specificName = fr.testudo.spacecorsair.business.world.UniverseName.getRandomTransporteurName();
        c.setEscapePoint(to);
        c.setActivity(new fr.testudo.spacecorsair.business.world.civil.CivilActivity[] {
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMoove(poi[OUTPOST]),
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMoove(to),
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newDiseapear()});
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(c);
        traders.add(c);
    }

    private static void patrol(LevelId id) {
        int lv = Math.max(1, id.levelMax);
        PoliceShip p = CivilFactory.newPolice(lv, lv);
        if (p == null) return;
        Vector2 at = poi[(int) (Math.random() * poi.length)];
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (at == null || (ps != null && at.distance(ps.position) < 2500)) at = poi[OUTPOST];
        p.position.setSameAs(at).add((float) (Math.random() * 600 - 300), (float) (Math.random() * 600 - 300));
        p.setActivity(new fr.testudo.spacecorsair.business.world.civil.CivilActivity[] {
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMoove(poi[OUTPOST]),
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMoove(poi[MINING]),
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMoove(poi[BASE]),
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newMoove(poi[WRECKS]),
            fr.testudo.spacecorsair.business.world.civil.CivilActivity.newDiseapear()});
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(p);
        patrols.add(p);
    }

    /**
     * One faction ship from existing art: Reaver and Kre'tari NPC hulls (ModFleet); the other factions fly a police cruiser
     * in their colours (their own hulls join the NPC pools with the titans, v34 req 14).
     */
    static Element wingShip(String key, int lv, boolean big) {
        if ("reaver".equals(key) || "kretari".equals(key)) {
            boolean kt = "kretari".equals(key);
            ArrayList<ModFleet.Type> ok = new ArrayList<ModFleet.Type>();
            ModFleet.Type low = null;
            for (ModFleet.Type t : ModFleet.TYPES) {
                if (t.kretari != kt || t.ai == ModFleet.BLATTE) continue;
                if (low == null || t.minLevel < low.minLevel) low = t;
                if (ModV34.lvl(t.minLevel) > lv || (!big && t.size > 200)) continue;
                ok.add(t);
            }
            if (ok.isEmpty() && low != null) ok.add(low);     // below the faction's first hull level: its lightest ship
            if (ok.isEmpty()) return null;
            ModFleet.Type pick = big ? ok.get(ok.size() - 1) : ok.get((int) (Math.random() * ok.size()));
            Ennemis e = ModFleet.build(pick, lv);
            if (e != null) faction.put(e, key);
            return e;
        }
        PoliceShip p = CivilFactory.newPolice(lv, lv);
        if (p == null) return null;
        ModCapitals.Faction f = ModCapitals.FACTIONS[ModFaction.faction(key)];
        p.r = f.r;
        p.g = f.g;
        p.b = f.b;
        p.specificName = f.name;
        p.specificNameDecalX = -1;
        faction.put(p, key);
        return p;
    }

    // ------------------------------------------------------------------ flagship pursuit (req 5)
    public static final float PURSUIT_STANDING = -40f;
    public static final long[] WAVE_AT = {20000, 150000, 300000};   // 3 waves over 5 minutes of play [P]

    /** ModRep.flagshipDestroyed: -40 standing (allies follow by half, ModRep.change), then the pursuit starts. */
    static void flagshipKilled(String key) {
        SharedPreferences p = ModQol.prefs();
        if (p == null) return;
        p.edit().putString("v35_pursuit", key).putLong("v35_pursuit_at", play()).putInt("v35_pursuit_n", 0).apply();
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        ModCapitals.Faction f = ModCapitals.FACTIONS[ModFaction.faction(key)];
        ModQol.post(f.name + ModLang.tr(" will not forgive the loss of its flagship. Pursuit fleets are on your trail."));
        if (ps != null) Mod.floatText(ps, ModLang.tr("PURSUIT: ") + f.name, 1.0f, 0.35f, 0.25f);
    }

    /** Due wave index for the play time since the kill (-1 when none is due). */
    public static int waveDue(long since, int sent) {
        if (sent >= WAVE_AT.length) return -1;
        return since >= WAVE_AT[sent] ? sent : -1;
    }

    private static void pursuitTick(PlayerShip ps) {
        SharedPreferences p = ModQol.prefs();
        if (p == null) return;
        String key = p.getString("v35_pursuit", null);
        if (key == null) return;
        int sent = p.getInt("v35_pursuit_n", 0);
        int w = waveDue(play() - p.getLong("v35_pursuit_at", 0), sent);
        if (w < 0) {
            if (sent >= WAVE_AT.length) p.edit().remove("v35_pursuit").apply();
            return;
        }
        p.edit().putInt("v35_pursuit_n", sent + 1).apply();
        wave(ps, key, w);
    }

    /** Wave n (0-2): 2 / 3 / 4 ships at the player's level, closing in from 2.4k away; the last wave brings a big hull. */
    static void wave(PlayerShip ps, String key, int n) {
        int lv = Math.max(1, ObjectRegistry.INSTANCE.game.playerInfo.level);
        double a = Math.random() * Math.PI * 2;
        Vector2 c = new Vector2(ps.position).add((float) Math.cos(a) * 2400, (float) Math.sin(a) * 2400);
        for (int k = 0; k < 2 + n; k++) {
            Element e = wingShip(key, lv, n == 2 && k == 0);
            if (e == null) continue;
            e.position.setSameAs(c).add((float) (Math.random() * 500 - 250), (float) (Math.random() * 500 - 250));
            e.updateSapCoords();
            if (e instanceof Ennemis) {
                ((Ennemis) e).addToCurrentLevel();
                ((Ennemis) e).initChasePlayer();
            } else {
                ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(e);
                ((CivilShip) e).setAtackPlayerMode();
            }
        }
        ModCapitals.Faction f = ModCapitals.FACTIONS[ModFaction.faction(key)];
        Mod.floatText(ps, ModLang.tr("PURSUIT WAVE ") + (n + 1) + "/3: " + f.name, 1.0f, 0.35f, 0.25f);
        ModSound.play("warp_in", 0.7f, 1.0f, 1500);
    }

    // ------------------------------------------------------------------ flagship / titan wrecks across visits (req 4)
    public static final int KEEP_VISITS = 3;
    public static final long KEEP_PLAY_MS = 30L * 60 * 1000;

    /** True while a persistent wreck made at play time 'made' and seen on 'visits' later visits is still kept [P 3 visits / 30 min]. */
    public static boolean kept(long made, long now, int visits) {
        return visits <= KEEP_VISITS && now - made < KEEP_PLAY_MS;
    }

    /** ModWreck: a flagship or titan broke up; its pieces come back on the next visits of this sector. */
    static void persist(ModWreck[] made) {
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            if (excluded(id) || made == null) return;
            StringBuilder b = new StringBuilder();
            for (ModWreck w : made) {
                if (w == null) continue;
                String art = w.art != null ? w.art : ModArt.artOf(w.tex);
                if (art == null) continue;
                if (b.length() > 0) b.append(';');
                b.append(art).append(',').append(w.v0).append(',').append(w.v1).append(',').append(w.w).append(',').append(w.h).append(',')
                    .append(w.position.x).append(',').append(w.position.y).append(',').append(w.spin).append(',').append(w.preDrawn ? 1 : 0)
                    .append(',').append(w.cutTop ? 1 : 0).append(',').append(w.cutBottom ? 1 : 0);
            }
            if (b.length() == 0) return;
            SharedPreferences p = ModQol.prefs();
            if (p == null) return;
            String all = p.getString("v35_wrecks", "");
            String rec = id.name() + "|" + play() + "|0|" + b;
            p.edit().putString("v35_wrecks", all.length() == 0 ? rec : all + "\n" + rec).apply();
        } catch (Throwable t) {
            // the wreck stays for this visit only
        }
    }

    /** Sector entry: count the visit, drop expired records, rebuild the kept ones as still pieces. */
    private static void restoreWrecks(LevelId id) {
        SharedPreferences p = ModQol.prefs();
        if (p == null) return;
        String all = p.getString("v35_wrecks", "");
        if (all.length() == 0) return;
        StringBuilder keep = new StringBuilder();
        long now = play();
        for (String rec : all.split("\n")) {
            String[] f = rec.split("\\|");
            if (f.length < 4) continue;
            long made = Long.parseLong(f[1]);
            int visits = Integer.parseInt(f[2]) + (f[0].equals(id.name()) ? 1 : 0);
            if (!kept(made, now, visits)) continue;
            if (keep.length() > 0) keep.append('\n');
            keep.append(f[0]).append('|').append(made).append('|').append(visits).append('|').append(f[3]);
            if (!f[0].equals(id.name())) continue;
            boolean[] grp = {true};
            for (String pc : f[3].split(";")) {
                String[] v = pc.split(",");
                if (v.length < 11) continue;
                ModWreck w = new ModWreck();
                w.art = v[0];
                w.group = grp;
                w.poi = true;
                w.u0 = 0; w.u1 = 1;
                w.v0 = Float.parseFloat(v[1]);
                w.v1 = Float.parseFloat(v[2]);
                w.w = Float.parseFloat(v[3]);
                w.h = Float.parseFloat(v[4]);
                w.position.set(Float.parseFloat(v[5]), Float.parseFloat(v[6]));
                w.spin = Float.parseFloat(v[7]);
                w.preDrawn = "1".equals(v[8]);
                w.cutTop = "1".equals(v[9]);
                w.cutBottom = "1".equals(v[10]);
                w.tint = w.preDrawn ? 1.0f : 0.5f;
                w.speed.set(0, 0);
                w.spinSpeed = 0.003f;
                float s = Math.max(w.w, w.h);
                w.getPhysicDimension().set(Math.min(w.w, w.h) * 0.8f, Math.min(w.w, w.h) * 0.8f);
                w.mass = ModWreck.massFor(s);
                w.maxLife = w.life = 5000;
                w.updateSapCoords();
                ModWreck.add(w);
                ModArt.ready(w.art);
            }
        }
        p.edit().putString("v35_wrecks", keep.toString()).apply();
    }
}
