# Space Corsair v30 — step 2 shields

All five shield textures are lossless grayscale-on-black PNGs. `shield_shell.png` and `shield_segment.png` share the same pixel coordinates and radius: their main centreline is **461 px** from the 1024×1024 canvas centre (511.5, 511.5). Twelve 30° sectors have equal 27.3° illuminated arcs and 2.7° gaps. `shield_segment.png` is the 12 o'clock sector cut directly from the shell, for rotation around the image centre.

`shield_pulse.png` is a short horizontal comet streak for rim rotation; `shield_ripple.png` is a soft hexagon; `shield_sputter_sheet.png` is a 4×4 flipbook in row-major order. No shield texture depicts cracking or shattering.
