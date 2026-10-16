# Finds round turret pads (dark discs inside the hull) in a top-down sprite. Prints centres as fractions (+y = stern).
#   python3 -I src/padscan.py sprite.png [expected] [overlay.png]
import sys
import numpy as np
from PIL import Image, ImageDraw
from scipy import ndimage
p = sys.argv[1]
want = int(sys.argv[2]) if len(sys.argv) > 2 else 0
im = Image.open(p).convert('RGBA')
a = np.asarray(im).astype(np.float32)
W, H = im.size
alpha = a[..., 3] > 128
lum = a[..., :3] @ np.array([0.3, 0.55, 0.15])
inside = ndimage.binary_erosion(alpha, iterations=4)
found = []
local = ndimage.gaussian_filter(lum, 14)
masks = [(lum < thr) & inside for thr in (40, 52, 64)] + [(lum < local - d) & inside for d in (34, 26, 18)]
for dark in masks:
    dark = ndimage.binary_fill_holes(ndimage.binary_opening(dark, iterations=2))
    lab, n = ndimage.label(dark)
    for k in range(1, n + 1):
        ys, xs = np.where(lab == k)
        area = len(xs)
        if area < W * W * 0.0008 or area > W * W * 0.012:
            continue
        w, h = xs.max() - xs.min() + 1, ys.max() - ys.min() + 1
        if not (0.75 < w / h < 1.33):
            continue
        r = (w + h) / 4.0
        fill = area / (np.pi * r * r)
        if fill < 0.72:
            continue
        cx, cy = xs.mean(), ys.mean()
        if any(abs(cx - f[0]) < r and abs(cy - f[1]) < r for f in found):
            continue
        found.append((cx, cy, r, fill))
# turret pads come in mirrored pairs (or sit on the centreline)
mid = W / 2.0
def mirrored(f):
    if abs(f[0] - mid) < W * 0.02:
        return True
    return any(g is not f and abs((g[0] - mid) + (f[0] - mid)) < W * 0.025 and abs(g[1] - f[1]) < W * 0.025 for g in found)
found = [f for f in found if mirrored(f)]
found.sort(key=lambda f: (round(f[1] / 20), f[0]))
if want and len(found) > want:   # keep the most circular, then pair symmetry is checked by eye on the overlay
    found = sorted(found, key=lambda f: -f[3])[:want]
    found.sort(key=lambda f: (round(f[1] / 20), f[0]))
out = []
for cx, cy, r, fill in found:
    out += [round((cx + 0.5) / W - 0.5, 4), round((cy + 0.5) / H - 0.5, 4)]
print(len(found), out)
if len(sys.argv) > 3:
    bg = Image.new('RGBA', im.size, (40, 44, 70, 255)); bg.alpha_composite(im)
    d = ImageDraw.Draw(bg)
    for cx, cy, r, fill in found:
        d.ellipse((cx - r, cy - r, cx + r, cy + r), outline=(255, 0, 0, 255), width=4)
    bg.convert('RGB').resize((512, 512)).save(sys.argv[3])
