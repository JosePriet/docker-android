# Batch 3 notes

Engine glow colours (one per hull):
- Viper — #FF7A28
- Bastion — #B9E8FF
- Albatros — #FF7A28
- Mule — #55BFFF
- Tortoise — #FFA64A
- Monolith — #B9E8FF
- Comet — #FF8B38
- Kite — #55BFFF
- Seraph — #55BFFF
- Bulldog — #FF7A28
- Ironside — #FFA64A
- Tidewarden — #55BFFF
- Mantis — #B9E8FF
- Verdant — #B9E8FF
- Imperator — #FFA64A

Hull sprites retain the current silhouettes as shape references and use the approved faction sheets only for style and palette. Each has a transparent 1024×1024 canvas, nose-up framing, and empty round turret pads. UI and fitting overlays use transparent PNG frames; the tree and hangar backdrops are opaque. VFX textures are grayscale RGB on pure black; the explosion flipbook is row-major, 8×8. The lance texture's first and last rows match for vertical tiling.

## Adopted hybrid house style

The user approved the hybrid finish from Bastion, Viper and Comet for future ship art. All 15 Batch 3 hulls in this package use that finish; the other 12 were repainted accordingly. Their delivered 1024×1024 alpha silhouette masks and occupied areas were retained exactly. The original empty turret-pad and missile-hatch graphics were retained in the same canvas positions. Names and CSV mechanics are unchanged. Lore, UI and VFX files are unchanged.

The finish keeps clear major bevels and deliberate structural details, uses smoother metallic shading across broad surfaces, and reduces noisy micro-lines. Maintain each faction's assigned palette and the top-left light. See `HOUSE_STYLE_BATCH4.md` for the standing art direction.
