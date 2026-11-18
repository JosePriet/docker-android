# Handoff (2026-11-18): sector events + kill chain MERGED (not released)
On-screen rule (owner 2026-11-18 11:40, merged, not released): ModView (visible half-size from GameRenderer camZ/fov + camera.curZDecal). Normal enemies and police ships (ModV35.ai) steer back in when off screen and strafe at the edge instead of backing out; flagships and police titans (ModBal.holdRange) stay within visible radius + 40% of the hull (pulled back up to 2,000 u/s). Changes: /mnt/project-files/audits/v45g-onscreen-changes.md. Needs the phone test.
Balance (owner OK 2026-11-18 03:14 UTC, merged, not released): ModBal: Reaver/Kre'tari/Varn flagships hold 50-80% of gun range, police titans 40-65%; SRS Aegis 2-3 drones; FAV Warden battery x0.8; police titan overshield passes 30% of each hit (ModPoliceTitan.OVER_PASS). Emulator switch corsair_bal_off = all off. Police damage unchanged (owner: 3.0x+). Changes: /mnt/project-files/audits/v45f-balance-changes.md; test harness + runs on branch claude/project-thread-7o62kt. Needs the phone test.
Owner OK 2026-11-18 03:14 UTC: ModEvents (distress call, bounty target, salvage race; random kind 40/35/25, random 4-6 min gap, first at 90 s, open sectors only) and ModChain (6 s window, +10%/link, cap +50%) always on. Radar marker in ModMap.radarPoint2. Emulator switch corsair_event=distress|bounty|salvage<N>, corsair_near=event; stage P52E on emulator-tests (run 138: no crash). Changes: /mnt/project-files/audits/v45-events-changes.md. Proposals: space-corsair/proposals/dynamic-sector-events.md, kill-chain.md. Needs the phone test (payouts, chain, radar marker, feel).

# Handoff (2026-11-17): v45 audit fixes CODED
Branch claude/project-thread-fuw6ke head de64570 (from 7684902): all 66 audit decisions coded except the ones listed as
not done / not present in /mnt/project-files/audits/v45-audit-fixes-changes.md. check.sh 52 PASS. Verifier + cross-check:
no problems. Emulator run sc-v45e (emulator-tests 1caf6c0: V50L + station turrets vs flagship clip, F14) and the
netcloud two-runner check (.github/workflows/netcloud.yml on emulator-tests) pushed. NOT merged, NOT released.
Waiting on the owner: deploy of server/rendezvous (D1 /dev, D4 /sample, E5, E6) + DEV_KEY_SHA256 secret; the 30-day
sample retention (my number); my picks for F3 lance speed/range, F7 stock-sprite pads, F13 JOINT_TONE 0.65; nothing yet
lets the owner read reports/samples. Secrets: keys/cloudflare.env, keys/metered.env (never in git or audits).
Checks: run 132 no crash; F14 proven in run sc-v45f (stage V51T, Spartan HQ station guns hit a Reaver flagship); netcloud direct OK, Metered relay Allocate gets 400 after auth (changes file, section Emulator and cloud checks).
Fix list (owner picks 2026-11-17) done: see the changes file, section Fix list. Two builds: public (space-corsair/v45/space-corsair-v45-build52-public.apk) and private DEV (space-corsair/private/, DEV_KEY_FILE=keys/dev.key; never publish it). Service deployed with /admin. Emulator sc-v45g passed.
Second check (2026-11-17, /mnt/project-files/audits/2026-11-17-v45-second-check.md): S1-S17 fixed on claude/project-thread-fuw6ke (head a714759), service deployed. DEV code works offline in every build (owner). Admin page key is now keys/admin.key (secret ADMIN_KEY_SHA256), not the DEV key. GPT coding tasks: /mnt/project-files/space-corsair/gpt-coding/ (bug hunt, balance simulator, attack tests); verify anything GPT returns before merging.
Re-trace (2026-11-17 evening): rows B10 B11 B15 C2 C4 C5 C6 fixed on claude/project-thread-fuw6ke (a7f5293), emulator sc-v45i clean; NOT merged yet (needs owner OK). Codex tasks: repo codex/ + AGENTS.md (Codex PRs need review). GPT art #16/#17 packages in gpt-catchup.
 Open: Metered relay 400 (credential/plan side; our client passes vs coturn).

# Handoff (state at v35, 2026-10-22)

## Current progress
- Released: v31 (https://github.com/JosePriet/docker-android/raw/releases/apk/space-corsair-mod-signed-v31.apk). v30 added shields, wrecks, loot, derelicts, bosses, flagship skills, side markers and living ships; v31 had small fixes.
- v32 (built and released by another session on 2026-10-17, commit 86e5b2f): the v31 GPT art (enemy glow masks, split titan wrecks, player titan signature).
- v33 (2026-10-21, branch sc-mod-workspace, not yet released): TASK.md done in code. Flagship turrets fire faction batteries (ModCapitals.guns/fire, GUNS table), stock Guardian canons silenced; skills run while hostile (ModLive.titanHostile, includes Unfriendly rank) with callout + sound + test log; bigger telegraphs; wrecks use hand-drawn art when present, else the cut sprite with a flat dark burn gradient toward the cuts + char marks; wreck mass = max(20, size^2/2000), pushes damped to 30% (projectiles 10%), drift capped at 0.4 (40 u/s).
- v32 GPT art still not delivered. Names the code already picks up (drop into work/modart, lossless WebP, no code change):
  - `wreck_<art>_a/_b[/_c]`: per-hull wreck pieces, full canvas of the hull sprite (`<art>` = ModArt.artOf name, e.g. orig_* or hull art), a = bow. Flagships: `wreck_cap_<key>_a/_b` (already shipped).
  - `proj_cap_<key>`: flagship shell sprite (drawn additive, ~45x90 world units, nose up).
  - `tele_cap_<key>`: telegraph art (ironclad strike marker; warden snipe / reaver ram lane strips).

- v34 (2026-10-22, branch sc-mod-workspace, not released): core systems from TASK.md (level cap 40, enemy curve x class x tier, elites/bosses, pilot ATK/DEF/REA, counters, weapon rules and slots, industrials retired, bounty/death fee/rare salvage, reskin weapon families, stat block, hide-until-art). Full list, gaps and unrequested changes: /mnt/project-files/audits/v34-changes.md. Directive audit: audits/v34-directive-audit.md. Reviewed by a verifier + cross-check agent pair twice (owner rule); confirmed findings fixed in parts 6-7.
- v34 gaps: req 12 (stock gear rarity pricing), 14 (faction hulls/weapons in NPC pools), 16 (top-region finale), 10 name tags + enemy_<art>, 13 mission reward/standing retune. Energy regen dropped (no energy stat; owner OK).
- v34 emulator run sc-v34 (run 61, GitHub 39706373726): full run, 676 s, no crash, no FATAL/VerifyError/NoSuchMethod; all 7 flagships fired and logged skills; death ran. Not shown on screen: the spawned enemies (off-frame near the tutorial station), the pilot-stat UI and the stat block; the HUD still read "Level 0" because the test flag sets the level field without a HUD refresh. These need the phone test.
- v35 (2026-10-22, branch sc-mod-workspace, commits 2b39974/4d79385/375e8cf, not released): TASK.md v35 in code: refits (ModV35, fitting-screen REFIT), advantage AI + kill-time factor (hooks35 Ennemis.doPhysic), traffic + POIs + flagship pursuit + kept flagship wrecks (ModSector), wreck lifetimes (ModWreck.lifeMs/sizeClassOf), v34 gaps 10/12/13/16. check.sh 35 PASS (V35 VALUES-OK, 67 checks). Change list, unrequested items and gaps: /mnt/project-files/audits/v35-changes.md. Verifier + cross-check done; fixes in part 3. Emulator run sc-v35 (run 62): 653 s, no crash or verify errors; tutorial sector only, so traffic/POIs/pursuit/refit buy/finale untested there. Waiting: stage/hostile art from GPT, GPT rewrite of finale/POI text (EN+ES drafts in i18n/gpt/v35_es.json), phone test (AI feel, kill times, traffic density, performance).
- v35 emulator sc-v35c (run 64, build 00a94cb): no crash through 547 s (flagships, map); cut off before death step. Parts 9-10 after it (boss repeat reward, Kre'tari-only regen, hunt window) are small and not emulator-run.
- v35 final (2026-10-22): emulator sc-v35d (run 65, build 896731d): full script 629 s incl. death step, no crash/FATAL/ANR. GPT ES strings merged (699afdc); core name "núcleo de <faction>" fix (292268c), check.sh 35 PASS. Remaining: GPT art, phone playtest (hunt difficulty, AI feel, kill times), release.
- v35 owner review (2026-10-22): every unrequested item and invented number decided one by one; record /mnt/project-files/audits/v35-owner-decisions.md; applied in parts 5-6 (acc4e30, f3480ca): faction cores for refit 10, renegade hunts, repeatable stock bosses, income-based gear prices, stacked kill-time step, pursuit -25 / 10-45-90 s. GPT text prompt: /mnt/project-files/space-corsair/gpt-v35-text-prompt.md. Known: work/dtest/V34.java no longer compiles (dup variable b, since v34 part 11); the committed V34.class still runs.

- v36 (2026-10-28, 5915b16, not released): BGM fix (space1/2/3/voyager were -28 to -46 LUFS; raised to -16 LUFS in work/modmusic, swapped into res/raw by build.sh), music bar re-applied on resume, SFX bar in Settings (prefs corsair_audio/sfx, scales SoundManager + ModSound), minimap asteroids gold (ModMap.asteroidRadar). hooks36 applied. List: /mnt/project-files/audits/v36-changes.md. Needs the phone test for audibility (emulator runs -noaudio).

- v38 (2026-11-03, sc-mod-workspace 6d4d10a..8d7ff5b, not released): Spartan stages + per-stage turrets (ModV38), Monolith s4/s5 effects (ModMonolith, src/genmono38.py), Leviathan doomsday v4 (ModLevDoom, src/genlev38.py, lev_doom_*.ogg). check.sh 38 PASS, verifier + cross-check done (fixes in 8d7ff5b). Emulator stage V38 pushed (emulator-tests 11e9e9d). Test switches: corsair_refit=<level>, corsair_v38log. Open: owner Q1/Q2, emulator result, directive audit, phone test, GPT text (doomsday description, "OVERCHARGED").

- v40 (2026-11-03, 7bc8e0a, not released): hidden test mode (ModTestMode, hooks40). Tap achievement "Cheater" (Killed by the dev in a multiplayer game) 10x in 10 s -> LOGIN; the save (files dir + spacecorsair/modqol prefs) is swapped at the next start into app_corsair_profiles/main|test; LOG OUT restores. Emulator sc-v40d passed. Test switches: corsair_tmjump, corsair_tmmiss=LEVELID[,done].

## Changed files (v30-v31)
New: ModLive, ModWreck, ModTitanAI, ModDerelict, ModV30Data. Changed: ModShield, ModLoot, ModBoss, ModCapitals, ModCaps, ModArt, ModFx, ModDev, ModQol. Hooks: `src/patch/hooks30.py`, `hooks30b.py`, `hooks30c.py` (all applied).

## Checks run
- v33: check.sh PASS (signed with the owner key, same signer as v31). Emulator run sc-v33 (run 59): no crash; all 7 flagships fired batteries and logged skills; wreck pieces moved 42-89 units when shot (size 512, mass 131). Found: second-texture-unit char overlay drew an opaque rectangle on the emulator (replaced by the flat gradient), skill callout off-screen (moved across the player's hull). Recheck run sc-v33b (run 60, QUICK mode in tests/run.sh): no crash; skill callout now readable across the player's hull, artillery telegraph clearly visible; the Albatros left before the kill, so no wrecks were made and the flat burn gradient is still UNVERIFIED (check on the phone).
- v31: build + JVM verify passed; no emulator run.
- v30: 5 emulator runs (latest passed with no crashes).

## Unresolved issues
- See FEEDBACK_v31.md: flagship turrets don't fire, skills not noticeable, wrecks look like darkened sprites, wrecks pushed too easily.
- Never verified: player break-up on death, galaxy map territories, boss missions (mission-only).
- Not done: turret idle sweep and recoil, alien lean and hull flinch, Aegis/Bloodforge shield stats, `wreck_char`/`icon_elite` unused.

## Failed approaches worth remembering
- GLES1 second texture unit (GL_COMBINE multiply of wreck_char) renders as an opaque char rectangle on the emulator's GL; use the flat combiner + vertex colour array instead.
- World-space text far above the player is off-screen under big hulls; put on-screen callouts across the player's hull.
- An additive copy of a dark hull is invisible as a rim light; use the flat silhouette (`ModFx.flatNext`).
- Game dialogs pause the game in tests; `corsair_nodialog` suppresses them all.
- The ship-switch cooldown only counts down in flight; wait in flight before opening the next ship page.
- Boss stats must be set on the Albatros turrets (`EnnemisCanon`) and beams (`fakeProjectile`); the AI rewrites thrust, so slow through snare/agility instead.
- RenderQueue was capped at 1000 drawables per frame (raised to 2500 by hooks30c).
- The reaver harpoon can pull the player into a station dock during tests; run that flagship last.

## Next action
v35 is the current TASK.md (owner OK 2026-10-22). Start it in a fresh session per CLAUDE.md. v34 still waits on the phone test and release.

GPT section 1 complete (22 faction hulls in incoming/gpt-v34-s1-b*, validated). Owner: keep staged until section 2 (titans) arrives, then integrate all faction ships together, stats as a TASK draft first. Spanish strings, reskin names and counter lore merged (part 8, GPT section 9 partial). GPT handoff for the rest of section 9 and for section 1: /mnt/project-files/space-corsair/gpt-handoff-v34.zip. Owner phone-tests v33 and v34; add GPT's ES strings to i18n; then release. v35 per TASK draft (refits: tier upgrades only enhance what a hull is already good at + one faction strength).
Previous: owner tests v33 on the phone (flagship fight feel, wreck look, battery balance); then `scripts/release.sh v33 ...`. Key: owner uploads `key.p12` into the session (never in git).

## v45 multiplayer (2026-11-16, branch claude/project-thread-fuw6ke, head c89f615 + this note; NOT merged, NOT released)
Spec: /mnt/project-files/space-corsair/internet-mp/SPEC-FINAL.md. Change list and test results: /mnt/project-files/audits/v45-multiplayer-changes.md. Build: `MODVER_NAME=v45 bash scripts/check.sh 52`.
Done: section 1 hardening, part of section 2, LAN diet (deflate, 30 Hz), LAN-side rules and screens (PvP toggle, per-player loot, no-pause hooks53, nickname + flags, chat, lobby menu).
Next windows, in order: (1) state + events sync (spec 3); (2) rest of anti-cheat (weapon-table damage clamp, save HMAC, install id/bans, report); (3) section 6 (UdpLink, STUN, punching, Cloudflare Worker lobby, Metered relay; owner creates the two free accounts first); (4) small gaps: friendly fire with PvP on, guest death-fee waiver, flags in local list rows, data counter, Hide my IP, flag licence line in credits.
Untested: anything on phones; chat, accept/decline, kick, reconnect, no-pause were not exercised by the emulator run (sc-v45a, run 128, build 05da05d).

## v45 internet play (2026-11-16, second window, build commit f57e818; NOT merged, NOT released)
- Built: small render stream (ModLanSync; owner decided 18:32 UTC to keep it, no state-and-events rebuild), UDP transport with STUN/TURN (ModNet), lobby client (ModLobby), save signature (ModSaveSig), host checks against the game tables (ModLanCheck, message 13), public list with flags and 20 s refresh, 4-box code entry, kick/ban, report, guest death-fee waiver, friendly fire only with PvP on, guest position record, saver effect drop, stream texts in the guest's language.
- Lobby service: `server/rendezvous` (Cloudflare Worker + one Durable Object), live at https://sc-rendezvous.spacecs-coop.workers.dev, public games open (PUBLIC_OPEN = "1"). Deploy: `cd server/rendezvous && set -a && . /mnt/project-files/space-corsair/keys/cloudflare.env && set +a && npx --yes wrangler@4 deploy`. Tests: `node test/registry.test.mjs` (REGISTRY OK).
- Relay: Metered "Free 20 GB" plan, no provider API; one fixed credential as Worker secrets RELAY_USER / RELAY_PASS (copy in /mnt/project-files/space-corsair/keys/metered.env, never in git). Asked for only after a direct attempt fails. 150 MB per relayed session (ModLobby.RELAY_SESSION_BYTES).
- Checks: `MODVER_NAME=v45 bash scripts/check.sh 52` PASS; `tests/net/E2E.java` against the live service passes (classpath: work/modcls, work/dtest, game jar, android jar, work/stubcls). Four verifier passes, all findings acted on (/mnt/project-files/audits/v45-multiplayer-changes.md).
- Emulator: run sc-v45d (131) on f57e818 clean; small stream 3.8 KB/s quiet, 5.8 KB/s in a fight.
- Cannot be tested here (no outgoing UDP in the sandbox): STUN, hole punching, the relay. Needs two phones on different networks.
- Not built: ping in the public list (would expose host addresses), per-pair short-lived relay credentials (the plan has no API). Known limits: the relay credential is shared; a guest's declared hull is its own word.
- Next: owner two-phone test; then owner decides on merge and release.
