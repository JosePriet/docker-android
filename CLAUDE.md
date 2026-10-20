# Space Corsair mod: working rules

## Project
Android game mod (Space Corsair 1.5.1). Java mod code is compiled, dexed and merged into the patched game smali, then the APK is rebuilt and signed.
- `src/java/fr/testudo/spacecorsair/mod/*.java`: mod code (Java 8, against `work/game_v168.jar`)
- `src/patch/hooks*.py`: smali patches, ALREADY APPLIED to `work/smali` (see `work/HOOKS_APPLIED.txt`). Never run one twice; a new hook = a new script, run once, logged.
- `work/modart/`: shipped art, lossless WebP only (`scripts/losslessify.py`). Never downscale or lossily compress art.
- `i18n/`: Spanish (`i18n/lang/build_es_json.py` rebuilds `es_full.json`). New player-facing text needs EN and ES.
- `incoming/`: ChatGPT art and data not yet integrated. `emulator-tests/`: CI test flow (branch `emulator-tests`).
- Signing key: `work/key.p12` (not in git; the owner provides it; password `android`).

## Commands
- Build + checks: `bash scripts/check.sh <version>` (e.g. 32). Runs `build.sh`: javac, dex, smali, JVM `-Xverify:all` tests (V17, V30), Spanish locale, version stamp, signing. Prints PASS/FAIL; full log in `out/build-v<version>.log`; the exit code is preserved.
- Emulator test: copy the APK to `tests/apks/space-corsair.apk` on branch `emulator-tests`, set the matrix tag, push; results land on branch `emulator-results`. Free-tier minutes: batch fixes, one run per update.
- Release: `scripts/release.sh v<version> <apk> "<notes>"` (needs a worktree of branch `releases`).

## Working rules
- Start with the files relevant to the task; search for symbols or filenames before reading large files; widen only when needed or asked.
- Keep command output short; keep full logs in `out/` and show only the relevant failures.
- Reuse existing scripts and patterns; no new frameworks.
- Stay within the requested scope. Plan briefly with the owner for complex or uncertain work; make small clear fixes directly.
- Run the relevant checks, fix failures, report actual results. Have one subagent review the work once or twice per update.
- If two fixes fail, reassess the cause before trying again.
- Subagents: at most one at a time beside the main agent, only for distinct substantial work, narrow scope, concise result.
- Replies: concise (changes made, checks run, remaining issues) and end with a check list.
- Division of labour: ChatGPT does art, lore and translations; Claude does code, integration, builds, tests, releases.
- Before ending an unfinished session: update `HANDOFF.md`. Current task lives in `TASK.md`.
- Requests from the owner should follow: "Update TASK.md for this change: [...]. Include these acceptance criteria: [...]. Implement it, run the relevant checks, and report the result." Remind the owner of this format when a request lacks it.
- Global Assault and Corsair Nova are on the back burner; do not work on them unless asked.

## Needs in-game testing (cannot be proven by the build)
Visuals, balance, AI behaviour (bosses, flagship skills), wreck physics, loot feel, Spanish text fitting the screen. Use the emulator run, then the owner's phone.

## External tools and forks (checked 2026-10-20; clones in /home/user)
- Used by the build already (same projects, older pinned versions in `tools/`): smali/baksmali 2.5.2 (fork: 3.0.10), dex2jar 2.4.6, uber-apk-signer 1.3.0. Keep the pinned versions; upgrade only to fix a concrete bug.
- jadx: decompile the game for reading (`jadx -d <out> <apk>`); read-only reference, never rebuild from it.
- Apktool: not needed (APK is rebuilt by `src/rebuild.py`, resources by `es/arsc.py`); fallback only for manifest/resource edits those scripts cannot do.
- AssetRipper, Il2CppDumper: Unity tools. Space Corsair has no Unity or native code; they belong to Global Assault (on hold).
- Asset repos (`/home/user/josepriet`): eve-ships/eve-stls are EVE Online (CCP) ship models: reference only, never ship them. spaceship-2d (public domain generator) and gamedev-free-resources (link list) are usable references; art itself stays ChatGPT's job.
- Android emulator QA plugin: needs a local adb/emulator, which this container lacks; emulator tests run in GitHub Actions.
