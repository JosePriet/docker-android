# Task 08: performance of per-frame code

The game runs on old and new Android phones; the mod adds work to every frame (fx, police, wings, drones, shields, station guns, network sync, UI toolbar).
1. Find every mod method called per frame or per object per frame (use the hook scripts in `src/patch/` read-only to see call sites). Table: method, call frequency, file:line.
2. Static review of those paths: allocations (new objects, boxing, string building, iterators, lambdas), list scans inside loops (O(n^2)), repeated lookups that could be cached, lock contention with network threads, texture/sprite loading on the game thread.
3. JMH-style micro-benchmarks (plain JVM is fine) under `codex/tools/b2-08/` for the 15 hottest methods with realistic object counts (a 60-ship battle with 2 flagships, police titan, 5 drones, 4 station guns, co-op with 3 guests). Report ns/call and bytes allocated/call before and after.
4. Optimise the worst offenders in `src/java/.../mod/` with zero behaviour change, each behind `ModFx.PERF_*` flags default OFF, with tests showing identical results with the flag on and off over seeded scenarios.
5. Estimate frame-time cost on a mid-2018 phone (state your assumptions).
Output `codex/out/b2-08/report.md`.
