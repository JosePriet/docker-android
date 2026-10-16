# Space Corsair — Batch 4 original-ship remaster

Nine original game sprites remastered in the adopted hybrid house finish. All deliverables are transparent 512×512 RGBA PNGs named `orig_<original filename>`.

## Fidelity and handling

- The original sprite is authoritative for silhouette, proportions, framing, orientation, and transparent coverage. The final alpha mask is exactly the original alpha mask at 512×512 (originals smaller than 512 were scaled across their full canvas).
- Surface treatment adds cleaner broad shading, more legible bevels and selective structural accents. The original palettes and internal layouts are retained in the composite.
- The three alien designs remain organic or biomechanical, with curved ribs, open voids and purple/blue original colour cues. `orig_alien10001.png` is **one frame only**. Its existing radial visual pattern is retained with a very light finish pass so the game's existing spin animation can continue to use it; no animation frames or timing were changed.
- This pass does not introduce new turret pads, equipment, or ship shapes.

## Source and review

Source: `reference/original_ships/` from the supplied v24 brief; Batch 4 requirements from `CHATGPT_TASKS_v22.md` and `HOUSE_STYLE_BATCH4.md`. The recovered ZIP source was used for `alien_blatte.png` because one previously extracted copy was truncated.

`batch4_comparison.jpg` places each scaled original next to its final remaster for visual review. It is a review aid, not a game sprite.
