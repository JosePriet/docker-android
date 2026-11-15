# v43a-16c (owner 2026-11-15): Hornet stages 2-4 from the owner-picked GPT images (base = stage 1, no stage1 file).
#   python3 -I src/genhornet16b.py incoming/hornet-s2-s4 work/modart
# One downscale per image: square crop around the ship so it fills 90% of the height (like the base and stage 5),
# centred on x, to 1024. Writes hornet_stageN + _glow_l/_glow_e and prints the measured pads (1024 px).
import os, sys, json
import numpy as np
from PIL import Image
SRC, OUT = sys.argv[1], sys.argv[2]

def save(arr, n):
    Image.fromarray(np.clip(arr, 0, 255).astype(np.uint8), 'RGBA').save(os.path.join(OUT, n + '.webp'), 'WEBP', lossless=True, quality=100, method=6, exact=True)

def fit(a):
    al = a[..., 3]
    ys, xs = np.nonzero(al > 32)
    cy = (ys.min() + ys.max()) / 2.0; cx = (xs.min() + xs.max()) / 2.0
    side = (ys.max() - ys.min() + 1) / 0.90
    k = 1024.0 / side
    assert k <= 1.0001, k
    x0, y0 = cx - side / 2, cy - side / 2
    pm = a.copy(); pm[..., :3] *= pm[..., 3:4] / 255.0
    out = np.asarray(Image.fromarray(np.clip(pm, 0, 255).astype(np.uint8), 'RGBA').transform(
        (1024, 1024), Image.AFFINE, (side / 1024, 0, x0, 0, side / 1024, y0), resample=Image.BICUBIC)).astype(float)
    o = out[..., 3:4]; out[..., :3] = np.where(o > 0, out[..., :3] * 255.0 / np.maximum(o, 1), 0)
    out[out[..., 3] < 24, 3] = 0
    return out, k

def glow(arr):
    r, g, b, al = arr[..., 0], arr[..., 1], arr[..., 2], arr[..., 3]
    m = (al > 128) & (b > 170) & (g > 110) & (b > r + 60)
    nav = (al > 128) & (((r > 200) & (g < 90) & (b < 90)) | ((g > 170) & (r < 120) & (b < 120)))
    o = np.zeros_like(arr); m = m | nav
    o[m, :3] = arr[m, :3]; o[m, 3] = 255
    return o

def pads(a, guesses):
    dark = (a[..., 3] > 200) & (a[..., :3].max(-1) < 45)
    Y, X = np.nonzero(dark)
    res = []
    for gx, gy in guesses:
        sel = (np.abs(X - gx) < 70) & (np.abs(Y - gy) < 70)
        res.append((round(float(X[sel].mean()), 1), round(float(Y[sel].mean()), 1), int(sel.sum())) if sel.sum() else None)
    return res

G = {2: [(396, 506), (624, 506)], 3: [(396, 506), (624, 506)], 4: [(361, 487), (666, 489), (513, 728), (514, 215)]}
info = {}
for s in (2, 3, 4):
    a = np.asarray(Image.open(os.path.join(SRC, 'hornet_s%d.png' % s)).convert('RGBA')).astype(float)
    out, k = fit(a)
    save(out, 'hornet_stage%d' % s)
    gl = glow(out); save(gl, 'hornet_stage%d_glow_l' % s)
    ys = np.nonzero(out[..., 3] > 32)[0]
    ge = gl.copy(); ge[: int(ys.max() - 0.18 * (ys.max() - ys.min()))] = 0
    save(ge, 'hornet_stage%d_glow_e' % s)
    xs = np.nonzero(out[..., 3] > 32)[1]
    info[s] = {'k': round(k, 4), 'bbox': [int(xs.min()), int(ys.min()), int(xs.max()), int(ys.max())], 'pads': pads(out, G[s])}
print(json.dumps(info))
