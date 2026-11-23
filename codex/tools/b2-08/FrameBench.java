package fr.testudo.spacecorsair.mod;

import com.sun.management.ThreadMXBean;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.engine.Vector2;
import java.lang.management.ManagementFactory;
import java.util.*;

/** One mode per JVM. Report median of 7 measured batches following 5 warm-up batches. */
public final class FrameBench {
    static volatile Object objectSink;
    static volatile long numberSink;
    interface Op { long run(int i) throws Exception; }

    static void measure(String name, int repetitions, int calls, Op op) throws Exception {
        ThreadMXBean bean = (ThreadMXBean) ManagementFactory.getThreadMXBean();
        if (!bean.isThreadAllocatedMemorySupported()) throw new IllegalStateException("allocation counter unavailable");
        bean.setThreadAllocatedMemoryEnabled(true);
        long tid = Thread.currentThread().getId();
        double[] nanos = new double[7], bytes = new double[7];
        for (int batch = -5; batch < nanos.length; batch++) {
            long sum = 0, allocated = bean.getThreadAllocatedBytes(tid), begin = System.nanoTime();
            for (int i = 0; i < repetitions; i++) sum += op.run(i);
            long elapsed = System.nanoTime() - begin, used = bean.getThreadAllocatedBytes(tid) - allocated;
            numberSink = sum;
            if (batch >= 0) {
                double count = (double) calls * repetitions;
                nanos[batch] = elapsed / count;
                bytes[batch] = used / count;
            }
        }
        Arrays.sort(nanos);
        Arrays.sort(bytes);
        System.out.printf(Locale.ROOT, "%s,%.2f,%.2f%n", name, nanos[3], bytes[3]);
    }

    public static void main(String[] args) throws Exception {
        boolean on = "on".equals(args[0]);
        ModFx.PERF_RADAR_BUFFER = ModFx.PERF_FRAME_INDEX = on;
        Battle b = new Battle(8208);
        ArrayList<Element> enemies = new ArrayList<>();
        Vector2 world = new Vector2();
        measure("hostMarks", 300, 1, i -> {
            ModLan.hostMarks(b.player, b.level);
            return ((byte[]) b.marks.get(null)).length;
        });
        measure("capture", 200, 1, i -> b.capture());
        measure("read", 180, 1, i -> { objectSink = b.read(); return b.n; });
        measure("indexRecords", 450, 1, i -> { b.next.indexRecords(); return b.next.recs[i % b.n].ord; });
        measure("pair", 700, 1, i -> { b.pair(); return b.next.recs[i % b.n].from.key; });
        measure("glide", 1500, 1, i -> {
            ModLanSync.glide(b.next.recs, b.n, (i & 15) / 16f);
            return Float.floatToIntBits(b.next.recs[i % b.n].x);
        });
        measure("replay", 400, 1, i -> {
            b.resetTarget();
            ModLan.replayForTest(b.next.recs, b.n, 0, 0);
            int n = ModLan.queueSizeOf(b.target);
            if (n != b.n) throw new AssertionError("incomplete replay " + n);
            return n;
        });
        measure("findEnemyInFront", 3000, 1, i -> {
            b.player.spin = i % 360;
            objectSink = Mod.findEnemyInFront(b.player, 5000);
            return 1;
        });
        measure("findEnemy", 3000, 1, i -> {
            objectSink = Mod.findEnemy(b.ships.get(i % 60).position, 5000);
            return 1;
        });
        measure("enemiesInto", 3000, 1, i -> { Mod.enemiesInto(enemies); return enemies.size(); });
        measure("update", 1000, 1, i -> { ModFx.update(16); return (long) ModFx.px[i % 180]; });
        measure("drawParticles", 400, 2, i -> {
            b.resetTarget();
            ModFx.drawParticles(false);
            ModFx.drawParticles(true);
            return ModLan.queueSizeOf(b.target);
        });
        measure("local", 1500, 4, i -> {
            int total = 0;
            for (int gun = 0; gun < 4; gun++)
                total += Float.floatToIntBits(ModFx.local(b.player.position, i, gun * 24, 150, world).x);
            return total;
        });
        measure("sprTex", 300, 180, i -> {
            b.resetTarget();
            for (int k = 0; k < 180; k++)
                ModFx.sprTex(b.texture, i, k, 40, 60, k, 1, 1, 1, 1, true, 0, 0, 1, 1);
            return ModLan.queueSizeOf(b.target);
        });
        // Isolate an active compact-stream writer; capture includes this cost.
        measure("sprite", 200, b.n, i -> {
            b.buffer.reset();
            for (ModLan.Rec r : b.next.recs)
                ModLanSync.sprite(b.out, true, r.id, r.x, r.y, r.spin, 255, 255, 255, 255,
                    r.flags, r.w, r.h, 0, 0, 1, 1, false, 0, 0);
            return b.buffer.size();
        });
    }
}
