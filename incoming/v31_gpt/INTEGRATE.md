# v31 GPT art: integration steps (for the next Claude session)
1. Part A (glow masks for stock enemy/civil sprites, files `<sprite>_glow.png`):
   - Split each into `_glow_e` / `_glow_l` with `python3 -I src/import_v30.py <dir-containing-subfolder> <empty-terr-dir> work/modart_v31png`, then `python3 -I scripts/losslessify.py work/modart_v31png <out>` and copy into work/modart.
   - Code: in `ModArt.gameTex`, before `if (a == null) return bmp;`, map stock textures that have a glow mask: name = getResourceEntryName(t.resource); if assetExists(name + "_glow_l") || assetExists(name + "_glow_e") then ORIGTEX.put(t, name). ModLive.living then lights them automatically (enemies get red-shifted engines).
2. Part B (split titan wrecks `wreck_cap_<key>_a/_b.png`): in ModWreck.onDestroyed for flagships (ModCapitals.cap(e) != null), spawn two pieces using those textures (full UV) instead of cutting the sprite.
3. Part C (player titan signature): in ModCaps.drawUnder, when profile(ps).titan, draw `player_titan_signature` cyan, relative, under the hull (like the friendly marker).
4. Build: copy build31.sh to build32.sh (v31 -> v32, MODVER=32), run, release with scripts/release.sh v32.
