# Current task: v33

## Goal
Make faction flagships feel like flagships and wrecks look and behave like EVE wrecks (owner feedback after v31). Use the ChatGPT v32 art (wrecks, flagship weapons, skill telegraphs) when it arrives.

## Relevant files
- `src/java/fr/testudo/spacecorsair/mod/ModCapitals.java` (flagship spawn, draw, mounts), `ModTitanAI.java` (skills), `ModWreck.java` (wrecks), `ModLive.java` (living layers), `ModArt.java` (`gameTex`, `artOf`)
- `FEEDBACK_v31.md`, `incoming/v32_gpt/` (when it arrives)

## Requirements
1. Every turret drawn on a flagship fires its faction weapon (ironclad: heavy artillery; reaver: autocannon/flak; spartan: rails; varn: disintegrators; helion: lance/blasters; warden: rail + arc; kretari: bio-spines); the stock Guardian lasers are off.
2. Flagship skills trigger whenever the flagship is hostile, each use shows a callout and plays a sound, and telegraphs are clearly visible.
3. Wrecks use per-hull EVE-style wreck art when it exists (fallback: the cut sprite with the char texture).
4. Wrecks barely move when shot; their mass scales with the original hull size.

## Constraints
- Lossless art only; no new frameworks; existing hooks are not re-run.
- Spanish for all new player-facing text.
- One emulator run for the whole update.

## Acceptance checks
- `bash scripts/check.sh 33` prints PASS.
- Emulator run: no crash; IMS Bastion fight shows shells from its visible turrets and at least one skill callout; a destroyed cruiser leaves wreck-art pieces that move only slightly when shot.
- Owner's phone: flagship fight feel, wreck look.
