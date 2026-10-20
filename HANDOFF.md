# Handoff (state at v32, 2026-10-20)

## Current progress
- Released: v31 (https://github.com/JosePriet/docker-android/raw/releases/apk/space-corsair-mod-signed-v31.apk). v30 added shields, wrecks, loot, derelicts, bosses, flagship skills, side markers and living ships; v31 had small fixes.
- v32 (built and released by another session on 2026-10-17, commit 86e5b2f): the v31 GPT art (enemy glow masks, split titan wrecks, player titan signature).
- Next: TASK.md (v33). v32 GPT art (wrecks, flagship weapons, skill telegraphs) is ordered from ChatGPT; it goes in `incoming/v32_gpt/`.

## Changed files (v30-v31)
New: ModLive, ModWreck, ModTitanAI, ModDerelict, ModV30Data. Changed: ModShield, ModLoot, ModBoss, ModCapitals, ModCaps, ModArt, ModFx, ModDev, ModQol. Hooks: `src/patch/hooks30.py`, `hooks30b.py`, `hooks30c.py` (all applied).

## Checks run
- v31: build + JVM verify passed; no emulator run.
- v30: 5 emulator runs (latest passed with no crashes).

## Unresolved issues
- See FEEDBACK_v31.md: flagship turrets don't fire, skills not noticeable, wrecks look like darkened sprites, wrecks pushed too easily.
- Never verified: player break-up on death, galaxy map territories, boss missions (mission-only).
- Not done: turret idle sweep and recoil, alien lean and hull flinch, Aegis/Bloodforge shield stats, `wreck_char`/`icon_elite` unused.

## Failed approaches worth remembering
- An additive copy of a dark hull is invisible as a rim light; use the flat silhouette (`ModFx.flatNext`).
- Game dialogs pause the game in tests; `corsair_nodialog` suppresses them all.
- The ship-switch cooldown only counts down in flight; wait in flight before opening the next ship page.
- Boss stats must be set on the Albatros turrets (`EnnemisCanon`) and beams (`fakeProjectile`); the AI rewrites thrust, so slow through snare/agility instead.
- RenderQueue was capped at 1000 drawables per frame (raised to 2500 by hooks30c).
- The reaver harpoon can pull the player into a station dock during tests; run that flagship last.

## Next action
Put the key at `work/key.p12`, run `bash scripts/check.sh 33` to confirm the build, then implement TASK.md.
