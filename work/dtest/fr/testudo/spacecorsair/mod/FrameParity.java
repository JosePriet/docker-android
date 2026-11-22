package fr.testudo.spacecorsair.mod;

import java.util.*;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip;
import fr.testudo.spacecorsair.business.world.RadarDrawType;

/** Compare paired object identity, glide bits, and every published radar byte. */
public final class FrameParity {
    static ModLan.InFrame records(long seed, int n, int extra, boolean fast) {
        Random r = new Random(seed);
        ModLan.InFrame f = new ModLan.InFrame();
        f.n = n;
        f.recs = new ModLan.Rec[n + extra];
        for (int i = 0; i < n; i++) {
            ModLan.Rec rec = f.recs[i] = new ModLan.Rec();
            rec.key = (i % 5 == 0) ? r.nextInt() : (r.nextInt(12) << 16);
            rec.tx = r.nextInt(900);
            rec.ty = r.nextInt(900);
            rec.ts = r.nextInt(360);
        }
        ModFx.PERF_FRAME_INDEX = fast;
        f.indexRecords();
        return f;
    }

    static void checkIndex(int seed, int n, boolean oldFast, boolean newFast) {
        ModLan.InFrame refOld = records(seed, n, 2, false);
        ModLan.InFrame refNew = records(seed + 1, n + 1, 0, false);
        ModLan.InFrame actualOld = records(seed, n, 2, oldFast);
        ModLan.InFrame actualNew = records(seed + 1, n + 1, 0, newFast);
        // A compacted array may contain nulls and discarded records past its logical end.
        ModLan.Rec tail = new ModLan.Rec();
        actualOld.recs[n] = tail;
        tail.from = new ModLan.Rec();
        ModLanSync.pair(refNew.recs, refNew.n, refOld.recs, refOld.idx);
        ModLanSync.pair(actualNew.recs, actualNew.n, actualOld.recs, actualOld.idx, actualOld.recordIndex);
        if (tail.from != null) throw new AssertionError("old history retained");
        IdentityHashMap<ModLan.Rec, Integer> index = new IdentityHashMap<>();
        for (int i = 0; i < refOld.n; i++) index.put(refOld.recs[i], i);
        ModLanSync.glide(refNew.recs, refNew.n, 0.37f);
        ModLanSync.glide(actualNew.recs, actualNew.n, 0.37f);
        for (int i = 0; i < refNew.n; i++) {
            ModLan.Rec a = actualNew.recs[i], b = refNew.recs[i];
            Integer j = index.get(b.from);
            if (a.from != (j == null ? null : actualOld.recs[j]) || a.ord != b.ord
                || a.x != b.x || a.y != b.y || a.spin != b.spin)
                throw new AssertionError("pair seed " + seed + " record " + i);
        }
    }

    static void radar(Battle b, int seed) throws Exception {
        Random r = new Random(seed);
        int count = seed == 0 ? 310 : r.nextInt(305);
        b.ships.clear();
        for (int i = 0; i < count; i++) {
            Element e = new BasicEnnemyShip();
            e.position.set(r.nextInt(32000), r.nextInt(2500));
            e.drawOnRadar = seed == 0 || r.nextBoolean();
            e.removed = seed != 0 && r.nextInt(8) == 0;
            e.radarDrawType = RadarDrawType.values()[r.nextInt(5)];
            e.radarPointSize = r.nextFloat() * 19;
            e.radarColorG = r.nextFloat();
            if (seed == 0) e.position.set(1, 2);
            b.ships.add(e);
        }
        ModFx.PERF_RADAR_BUFFER = false;
        ModLan.hostMarks(b.player, b.level);
        byte[] reference = (byte[]) b.marks.get(null);
        if (reference == null || (seed == 0 && reference.length != 2 + 18 * 300))
            throw new AssertionError("incomplete radar fixture");
        ModFx.PERF_RADAR_BUFFER = true;
        ModLan.hostMarks(b.player, b.level);
        byte[] actual = (byte[]) b.marks.get(null);
        if (!Arrays.equals(reference, actual)) throw new AssertionError("radar seed " + seed);
        b.ships.clear();
        ModLan.hostMarks(b.player, b.level);
        if (!Arrays.equals(reference, actual) || ((byte[]) b.marks.get(null)).length != 20)
            throw new AssertionError("snapshot ownership or reset");
    }

    public static void main(String[] args) throws Exception {
        if (ModFx.PERF_FRAME_INDEX || ModFx.PERF_RADAR_BUFFER) throw new AssertionError("defaults");
        Battle battle = new Battle(8208);
        for (int seed = 0; seed < 64; seed++) {
            int n = seed == 0 ? 0 : seed == 1 ? 2199 : seed * 3;
            for (int mask = 0; mask < 4; mask++) checkIndex(seed, n, (mask & 1) != 0, (mask & 2) != 0);
            radar(battle, seed);
        }
        System.out.println("FRAME PARITY OK (256 frame pairs, 64 radar scenarios)");
    }
}
