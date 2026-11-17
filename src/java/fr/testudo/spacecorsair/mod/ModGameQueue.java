package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Audit B2 (owner 2026-11-17): screen-thread actions that change the ship, credits, inventory and the save (refit
 * purchase, gift-code redeem) run on the game thread. The caller waits for the result. When the game thread is paused
 * (it cannot race then) or does not take the job within 2 s, the job runs on the caller instead.
 */
final class ModGameQueue {
    private ModGameQueue() {}

    private static final class Job {
        final Callable<Object> c;
        final AtomicBoolean claimed = new AtomicBoolean();
        final CountDownLatch done = new CountDownLatch(1);
        Object out;
        Throwable err;
        Job(Callable<Object> c) { this.c = c; }
        void run() {
            try { out = c.call(); } catch (Throwable t) { err = t; }
            done.countDown();
        }
    }

    private static final ArrayList<Job> jobs = new ArrayList<Job>();
    private static volatile Thread gameThread;

    @SuppressWarnings("unchecked")
    static <T> T run(Callable<T> c) throws Exception {
        Job j = new Job((Callable<Object>) (Callable<?>) c);
        boolean paused;
        try { paused = ObjectRegistry.INSTANCE.game.gameThread.paused; } catch (Throwable t) { paused = true; }
        if (paused || Thread.currentThread() == gameThread || gameThread == null || !gameThread.isAlive()) {
            j.claimed.set(true);
            j.run();
        } else {
            synchronized (jobs) { jobs.add(j); }
            if (!j.done.await(2000, TimeUnit.MILLISECONDS) && j.claimed.compareAndSet(false, true)) {
                synchronized (jobs) { jobs.remove(j); }
                ModDev.ev("gamequeue", "game thread idle: ran on the caller");
                j.run();
            }
            j.done.await();
        }
        if (j.err instanceof Exception) throw (Exception) j.err;
        if (j.err != null) throw new RuntimeException(j.err);
        return (T) j.out;
    }

    /** ModCaps.tick (game thread), every frame. */
    static void drain() {
        gameThread = Thread.currentThread();
        if (jobs.isEmpty()) return;
        ArrayList<Job> l;
        synchronized (jobs) { l = new ArrayList<Job>(jobs); jobs.clear(); }
        for (Job j : l) if (j.claimed.compareAndSet(false, true)) j.run();
    }
}
