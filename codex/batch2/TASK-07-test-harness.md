# Task 07: unit tests for every mod class

Today there are 6 JVM tests in `work/dtest/` plus `tests/net/E2E.java` and the Node registry test. Goal: a real test suite.
1. A one-command runner `codex/tools/b2-07/run_tests.sh` that compiles the mod (AGENTS.md javac line), compiles and runs every test in `work/dtest/`, runs the Node tests, and prints a pass/fail summary and a coverage report (JaCoCo or similar, offline jar committed under `codex/tools/b2-07/lib/` only if its licence allows; otherwise document the download step).
2. Tests for the pure logic in every `Mod*.java` class you can reach without Android: damage formulas, caps, resist tables, refit costs and stage gates, turret counts by stage, police escalation tiers, loot rolls (seeded), XP curves, reputation, save signature, lobby code generation, damage ceilings in `ModLanCheck`, duel floor, warp-out pooling. Use the owner rules in `codex/CONTEXT.md` and the numbers in `CLAUDE.md`/`HANDOFF.md` as expected values; where code and docs disagree, write the test to the code, mark it, and list the disagreement.
3. Target 300+ test cases and >50% line coverage of mod classes that do not need the base game at runtime. Report coverage per class and why the rest is unreachable.
4. Do not change game code; if a class cannot be tested without a change, list the minimal seam needed.
Output `codex/out/b2-07/report.md` (coverage table, code/doc disagreements, bugs the tests found).
