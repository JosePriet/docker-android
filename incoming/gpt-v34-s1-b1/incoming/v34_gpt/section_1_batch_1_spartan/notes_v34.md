# Section 1, batch 1 — Spartan line additions

Two new hull sets, six lossless RGBA WebPs: spartan_frigate_1 and spartan_capital_1. This starts section 1; 20 hull sets remain in its 22-hull minimum scope.

- Every game image is 1024x1024, transparent, nose up and centred. Existing neutral/stock ships and flagship files are untouched.
- Frigate occupied height: 660 pixels, matching Viper; capital: 922 pixels, matching Moth. Generated sprites were isolated from surplus transparent canvas and upsampled to class occupancy; no ship content was downscaled. WebP encoding is lossless, verified by an exact RGBA round trip.
- The adopted hybrid finish uses smooth upper-left metal gradients, clear silver/navy bulkheads and restrained gold bevels. Empty round turret pads remain empty for code-mounted weapons.
- Frigate propulsion: one broad main exhaust and two small control outlets. Capital propulsion: two recessed rectangular drives. No trails or external bloom are baked in.
- glow_e isolates cyan stern exhaust emission; glow_l isolates cyan canopy, running lights and command-spine windows. Masks copy the corresponding base pixels and alpha at identical coordinates. Subtle warm hangar service lights remain static in the base art.
- Do not offset, independently resize, or auto-crop any mask in integration. Render each on the same world quad and origin as its base hull. The class world size remains a code/CSV decision, not a pixel-size change.
- The manifest uses the new art keys as IDs because Claude creates/maps the new hull registry IDs, as instructed in the brief.
- Checks: PNG source decoding, WebP lossless bitstream, exact pixel round trip, filenames, square dimensions, alpha border, reference class occupancy, nonempty nonoverlapping engine/light masks, mask containment and ZIP integrity. Small-scale appearance still needs in-game review.
