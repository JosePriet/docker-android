# Section 1 — batch 2: reaver

2 new hulls. All game images are lossless 1024x1024 RGBA WebPs, nose up, transparent, centered, with native pixel detail. No upsampling, downsampling or post-render hull scaling was used. Surplus transparent source margins were trimmed, and retained pixels were translated at 1:1 onto the final canvas. Native dimensions and translation are recorded in validation.json. Padding follows class-reference occupancy with modest native-render variation; in-game world size remains a CSV/code setting.

Each base has an aligned _glow_e engine-emission mask and _glow_l running-light/bridge mask. Kre’tari additionally have _veins, extracted from their luminous body vessels. Masks copy exact base RGB and alpha at identical coordinates and have no painted background. Kre’tari are living beings without pilot cockpits or mechanical nozzles. Their stern propulsion organs occupy glow_e; body bioluminescence occupies glow_l. The vein layer is independently usable and may overlap luminous body tissue.

The manifest has one English/Spanish flavour pair on each `kind=hull` row, with both lines at most90 Unicode characters; mask rows leave the text empty to prevent duplicate imports. `hull_id` is the art key for these new hulls; Claude assigns final registry IDs. Neutral ships, stock ships, accepted Spartan batch1, existing flagship files and secrets are untouched. No titan/refit/wreck assets are included.

Validation: exact filenames and required file count; 1024-square dimensions; alpha and empty borders; VP8L lossless bitstreams; decoded RGBA equality; source pixels retained at 1:1 scale; native class occupancy; nonempty aligned mask pixels contained within source alpha; engine/light mask disjointness; 90-character bilingual limits; manifest/archive consistency; ZIP integrity. Artistic appearance was compared with faction references; final in-game scale and animation need integration review.

Built-in Image Generation produced the raster art. generation_prompts.md records the design prompts and native framing corrections. Deliberately rejected oversized renders were regenerated, not reduced to fit.
