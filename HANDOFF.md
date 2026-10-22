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
- v35 (2026-10-22, branch sc-mod-workspace, commits 2b39974/4d79385/375e8cf, not released): TASK.md v35 in code: refits (ModV35, fitting-screen REFIT), advantage AI + kill-time factor (hooks35 Ennemis.doPhysic), traffic + POIs + flagship pursuit + kept flagship wrecks (ModSector), wreck lifetimes (ModWreck.lifeMs/sizeClassOf), v34 gaps 10/12/13/16. check.sh 35 PASS (V35 VALUES-OK, 67 checks). Change list, unrequested items and gaps: /mnt/project-files/audits/v35-changes.md. Verifier + cross-check done; fixes in part 3. Emulator run sc-v35 pushed to emulator-tests (677de5f). Waiting: stage/hostile art from GPT, GPT rewrite of finale/POI text (EN+ES drafts in i18n/gpt/v35_es.json), phone test (AI feel, kill times, traffic density, performance).

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
