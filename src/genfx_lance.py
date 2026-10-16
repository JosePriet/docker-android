# fx_lance: flat-topped beam band (opaque across the middle 70%, cosine fall-off at the edges), white for tinting.
import math, sys
from PIL import Image
W = H = 128
im = Image.new('RGBA', (W, H))
px = im.load()
for x in range(W):
    u = abs((x + 0.5) / W - 0.5)          # 0 centre .. 0.5 edge
    a = 1.0 if u < 0.35 else 0.5 + 0.5 * math.cos(math.pi * (u - 0.35) / 0.15)
    for y in range(H):
        px[x, y] = (255, 255, 255, int(round(255 * a)))
im.save(sys.argv[1])
