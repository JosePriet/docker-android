# Space Corsair v30 — step 1 prototypes

Supplied hull pixels are authoritative. The three glow masks use source-image colours and the source alpha for warlord, harbinger and cap_spartan, at identical 1024×1024 coordinates. Black means no emission.

- `warlord_glow.png`: orange stern engine apertures and small orange vents; a port green and starboard red running light. Rust-red armour and unlit turret pads stay black.
- `harbinger_glow.png`: violet bioluminescent nodes, central organs, veins and stern outlets; existing red/green side lights. No pilot cockpit is added.
- `cap_spartan_glow.png`: white-blue central spine/window strips, blue stern nozzles and the two small red/green bridge running lights. Armour and empty turret pads stay black.
- `harbinger_anim_01` through `_08`: peripheral tendrils/fins only; a gentle 8-frame seamless loop. Overlay RGBA is drawn above the static hull.
- `harbinger_veins.png`: grayscale on black, sampled from the existing violet organic network for healing.

The overlay frames intentionally avoid the central body. Because the base hull retains its static tendrils, Claude may hide the corresponding underlying tendril pixels in code for a fully clean silhouette during animation; otherwise the 3 px sway reads as a subtle living shimmer.
