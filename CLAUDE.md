# Space Corsair mod: working rules

Mechanical rules are enforced by hooks (`.claude/hooks/sc_hooks.py`; active in every project thread via `/mnt/project-files/claude-hooks/`): no binaries or whole reads of files >256 KB, build output and long diffs trimmed to a log, keys never in git, fresh `audits/<ver>-changes.md` before code commits, smali patches never re-run, lossless WebP only, release.sh / wrangler deploy need the owner's word, DEV APK never released, `releases` pushes need release/VERSION + update-channel seq bumps, no deletes in the owner's Downloads, inline sed -i/python file rewrites blocked (use Edit), two-agent reminder. A blocked call says why; `SC_HOOK_OK=1 <cmd>` passes the soft ones when the exception is legitimate.

## Project
Android game mod (Space Corsair 1.5.1). Java mod code is compiled, dexed and merged into the patched game smali, then the APK is rebuilt and signed.
- `src/java/fr/testudo/spacecorsair/mod/*.java`: mod code (Java 8, against `work/game_v168.jar`).
- `src/patch/hooks*.py`: smali patches, already applied to `work/smali` (logged in `work/HOOKS_APPLIED.txt`). A new patch = a new script, run once, logged.
- `work/modart/`: shipped art, lossless WebP only (`scripts/losslessify.py`). Never downscale or lossily compress art.
- `i18n/`: Spanish (`i18n/lang/build_es_json.py` rebuilds `es_full.json`). New player-facing text needs EN and ES.
- `incoming/`: ChatGPT art and data not yet integrated. `emulator-tests/`: CI test flow (branch `emulator-tests`).
- Signing key `work/key.p12` (not in git; owner keeps no copy; copy at `/mnt/project-files/space-corsair/keys/key.p12`; password `android`).
- `server/rendezvous/`: internet lobby (Cloudflare Worker + Durable Object, live at sc-rendezvous.spacecs-coop.workers.dev; owner page /admin uses keys/admin.key; `python3 scripts/sc_reports.py` downloads CSVs). Tests: `node test/registry.test.mjs` (REGISTRY OK). Credentials only in `/mnt/project-files/space-corsair/keys/`.
- `work/smali/fr/testudo/spacecorsair/mod/`: built mod smali, committed with each build.

## Branches and versions (updated 2026-11-17, audit I1/I5)
- `sc-mod-workspace`: work branch; every update branches from it and merges back after the owner's OK. Released: v45 (build 52, 113d24f, 2026-11-19).
- v45 (build 52): internet play + whole-game audit fixes + owner's fix list. Two builds: public, and private DEV (`DEV_KEY_FILE=<key> bash build.sh`; key /mnt/project-files/space-corsair/keys/dev.key).
- `releases`: GitHub Release workflow (`.github/workflows/release.yml`), publishes on a release/VERSION change. Links: releases/download/<ver>/space-corsair-mod.apk.
- `emulator-tests` / `emulator-results`: CI emulator flow (also the two-runner internet check, `tests/netcloud/`).
- `claude/project-thread-qs9twg`: titan damage-test harness; not merged by design (test code only).
- `master`: unused, 52 commits apart from `sc-mod-workspace`; nothing deleted (owner 2026-11-17).

## Commands
- Build + checks: `MODVER_NAME=v45 bash scripts/check.sh 52` (build number, shown name). Runs `build.sh` (javac, dex, smali, JVM `-Xverify:all` tests V17 V30 V34 V35 V37W V42 V44S V49 ..., Spanish locale, version stamp, signing); prints PASS/FAIL; log `out/build-v<version>.log`; exit code preserved.
- Emulator test: APK to `tests/apks/space-corsair.apk` on branch `emulator-tests`, set the matrix tag, push; results on `emulator-results`. Free-tier minutes: batch fixes, one run per update.
- Release: `scripts/release.sh v<version> <apk> "<notes>"` (needs a worktree of `releases`), then bump `release/VERSION`.

## Working rules
- Start with the relevant files; grep before reading; widen only when needed or asked.
- Reuse existing scripts and patterns; no new frameworks. Stay in scope. Plan briefly with the owner for complex or uncertain work; make small clear fixes directly.
- Run the relevant checks, fix failures, report actual results; full logs stay in `out/`. If two fixes fail, reassess the cause first.
- Verification per update: one subagent verifies, a second cross-checks (standing rule; was "one subagent review once or twice per update").
- Subagents: at most one at a time beside the main agent, distinct substantial work, narrow scope, concise result, cheaper model/low effort.
- Replies: concise (changes, checks, remaining issues), end with a check list.
- ChatGPT does art, lore, translations and long text; Claude does code, integration, builds, tests, releases.
- Before ending an unfinished session: update `HANDOFF.md`. Current task: `TASK.md`.
- Owner requests should follow: "Update TASK.md for this change: [...]. Include these acceptance criteria: [...]. Implement it, run the relevant checks, and report the result." Remind the owner when a request lacks it.
- Global Assault and Corsair Nova are on the back burner unless asked.

## Usage budget
- One session per update: start fresh from `HANDOFF.md` + `TASK.md`; never continue a long session (every turn re-sends the whole context).
- No recurring routines or self check-ins; GitHub Actions runs are fine (they do not use Claude usage).

## Needs in-game testing (cannot be proven by the build)
Visuals, balance, AI behaviour (bosses, flagship skills), wreck physics, loot feel, Spanish text fitting the screen. Emulator run, then the owner's phone.

## External tools and forks (checked 2026-10-20; clones in /home/user)
- Pinned in `tools/` (upgrade only for a concrete bug): smali/baksmali 2.5.2 (fork 3.0.10), dex2jar 2.4.6, uber-apk-signer 1.3.0.
- jadx: read-only decompile (`jadx -d <out> <apk>`), never rebuild from it.
- Apktool: fallback only for manifest/resource edits `src/rebuild.py` / `es/arsc.py` cannot do.
- AssetRipper, Il2CppDumper: Unity tools for Global Assault (on hold); Space Corsair has no Unity or native code.
- `/home/user/josepriet`: eve-ships/eve-stls are EVE Online (CCP) models, reference only, never ship. spaceship-2d (public domain) and gamedev-free-resources are usable references; art stays ChatGPT's job.
- Android emulator QA plugin needs a local adb/emulator (not here); emulator tests run in GitHub Actions.
- Internet play check (two emulators, two runners): branch `claude/project-thread-9bas6i`, `.github/workflows/netgame.yml` + `tests/netgame/run.sh` (host/guest and hostr/guestr = relay only). APK at tests/netgame/sc.apk, push; results in tests/netgame/results/runN/.
- In-game update channel: releases branch `updates/spec-stable.json` -> `tools/updates/manifest_sign.py` -> updates/channel-stable/ (seq must rise; apk = the new release).
