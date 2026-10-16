# Space Corsair v30 — step 6 wrecks and remaining living ships

Part D files were made first. `wreck_char.png` is grayscale char noise that darkens toward its lower edge; `wreck_edge.png` is a transparent hot-rim torn-metal strip; `debris_sheet.png` is 4×4 transparent plates, beams and pipe fragments. `fx_vent_sheet`, `fx_smoke_sheet`, `fx_fire_sheet` and `fx_sparks_sheet` are 4×4 row-major greyscale-on-black flipbooks. `fx_explosion_big_sheet` is an 8×8 row-major big-ship burst and outward shockwave.

Part B follows: 8 same-canvas transparent peripheral appendage frames plus one greyscale-on-black healing-vein image each for `secret_kretari`, `cap_kretari`, `orig_alien_blatte` and `orig_alien_rat0`. The source hull pixels define each appendage region and vein; only outside tendrils move a few pixels. Main bodies stay fixed. The original game alien sprites remain living beings, with no pilot cockpit. `fx_ichor_sheet` and `fx_spore_sheet` are shared 4×4 greyscale-on-black death effects.

For a completely clean appendage silhouette, Claude should hide the corresponding static tendril region of the base hull while playing the overlay. If that is unavailable, the small displacement reads as a subtle living shimmer over the static hull. All flipbooks are row-major with frames inside equal cells.

The optional hand-drawn faction-titan split halves are not included. The required code-driven wreck-cut art is included.
