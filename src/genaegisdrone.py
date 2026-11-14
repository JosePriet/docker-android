"""v43a-6: SRS Aegis rail drone, redesigned from the Spartan Hornet (owner 2026-11-14): wings clipped to a compact
diamond, steel-blue Republic livery, twin rail barrels with a cyan coil glow and a sensor eye. Output: work/modart/drone_aegis.webp (lossless)."""
import sys
from PIL import Image, ImageDraw, ImageChops, ImageFilter
src, out = sys.argv[1], sys.argv[2]
h = Image.open(src).convert("RGBA")
W, H = h.size
# compact drone: keep the central body (inner 62% of the width), drop the outer wings
mask = Image.new("L", (W, H), 0)
d = ImageDraw.Draw(mask)
d.polygon([(W*0.5, H*0.04), (W*0.81, H*0.48), (W*0.5, H*0.96), (W*0.19, H*0.48)], fill=255)
body = Image.new("RGBA", (W, H), (0, 0, 0, 0))
body.paste(h, (0, 0), ImageChops.multiply(mask, h.getchannel("A")))
# Republic steel-blue livery over the original shading
r, g, b, a = body.split()
lum = Image.merge("RGB", (r, g, b)).convert("L")
tint = Image.merge("RGB", (lum.point(lambda v: int(v*0.70)), lum.point(lambda v: int(v*0.86)), lum.point(lambda v: min(255, int(v*1.08)+12))))
body = Image.merge("RGBA", (*tint.split(), a))
# twin rail barrels and coil glow, sensor eye
glow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
gd = ImageDraw.Draw(glow)
for x in (W*0.43, W*0.57):
    gd.rectangle([x-3, H*0.12, x+3, H*0.46], fill=(60, 70, 85, 255))
    for k in range(5):
        y = H*0.14 + k*H*0.06
        gd.rectangle([x-5, y, x+5, y+3], fill=(90, 230, 255, 255))
gd.ellipse([W*0.5-11, H*0.62-11, W*0.5+11, H*0.62+11], fill=(120, 240, 255, 255))
halo = glow.filter(ImageFilter.GaussianBlur(6))
outim = Image.alpha_composite(Image.alpha_composite(body, halo), glow)
outim.save(out, "WEBP", lossless=True)
print(out, outim.size)
