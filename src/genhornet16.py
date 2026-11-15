# v43a-16 (owner 2026-11-15): Hornet refit stage 5 from the owner-approved GPT art (incoming/hornet-s5/).
#   python3 -I src/genhornet16.py incoming/hornet-s5 work/modart
# Inputs: hornet_s5_full.png (hull + 4 wings), hornet_s5_wings.png (the 4 wings alone, same 1254 px frame).
# Outputs (lossless WebP):
#   hornet_stage5_hull[_glow_l|_glow_e]  player hull, 1024 canvas, no wings (wings are drawn apart by ModHornet)
#   hornet_stage5_core                   crystal mask (additive pulse)
#   hornet_stage5_wFL/_wFR/_wRL/_wRR[_glow_l]  one wing each, square canvas WPX px around the wing centre
#   hornet_stage5[_glow_l|_glow_e]       enemy / fallback sprite: hull + wings tucked into the 1024 canvas
# Prints the numbers ModHornet needs (pads, wing rest centres, wing roots, sizes), all in 1024 hull px.
import os, sys, json
import numpy as np
from PIL import Image

SRC, OUT = sys.argv[1], sys.argv[2]
full = np.asarray(Image.open(os.path.join(SRC, 'hornet_s5_full.png')).convert('RGBA')).astype(float)
wing = np.asarray(Image.open(os.path.join(SRC, 'hornet_s5_wings.png')).convert('RGBA')).astype(float)
N0 = full.shape[0]

def defringe(a):
    # GPT left a red keying fringe on soft edges: drop reddish semi-transparent pixels, premultiply-clean the rest
    r, g, b, al = a[..., 0], a[..., 1], a[..., 2], a[..., 3]
    red = (al < 250) & (r > 120) & (g < 0.55 * r) & (b < 0.55 * r)
    a = a.copy(); a[red, 3] = 0
    a[a[..., 3] < 24, 3] = 0
    return a

full = defringe(full); wing = defringe(wing)
wmask = wing[..., 3] > 8
# grow the wing mask a little so no wing edge stays on the hull
from PIL import ImageFilter
wm_img = Image.fromarray((wmask * 255).astype(np.uint8)).filter(ImageFilter.MaxFilter(7))
wmask_g = np.asarray(wm_img) > 0
hull = full.copy(); hull[wmask_g, 3] = 0

ys, xs = np.nonzero(hull[..., 3] > 32)
hy0, hy1, hx0, hx1 = ys.min(), ys.max(), xs.min(), xs.max()
cy = (hy0 + hy1) / 2.0; cx = N0 / 2.0   # mirror-symmetric art: keep the frame centred on x
side = (hy1 - hy0 + 1) / 0.90              # hull fills 90% of the canvas height like the base Hornet
k = 1024.0 / side                          # the one downscale (k < 1)
assert k < 1, k

def to_canvas(arr, size=1024, offx=0.0, offy=0.0):
    """Crop the side x side square centred on (cx, cy) (+off in source px) and downscale once to size."""
    x0, y0 = cx - side / 2 + offx, cy - side / 2 + offy
    im = Image.fromarray(np.clip(arr, 0, 255).astype(np.uint8), 'RGBA')
    # premultiplied resize keeps edges clean
    pm = arr.copy(); pm[..., :3] *= pm[..., 3:4] / 255.0
    def rs(a):
        return np.asarray(Image.fromarray(np.clip(a, 0, 255).astype(np.uint8), 'RGBA').transform(
            (size, size), Image.AFFINE, (side / size, 0, x0, 0, side / size, y0), resample=Image.BICUBIC)).astype(float)
    # do the affine on float channels separately (PIL RGBA bicubic is fine here, then un-premultiply)
    out = rs(pm)
    al = out[..., 3:4]
    out[..., :3] = np.where(al > 0, out[..., :3] * 255.0 / np.maximum(al, 1), 0)
    return out

def save(arr, n):
    Image.fromarray(np.clip(arr, 0, 255).astype(np.uint8), 'RGBA').save(os.path.join(OUT, n + '.webp'), 'WEBP', lossless=True, quality=100, method=6, exact=True)

def glow(arr, core=False):
    r, g, b, al = arr[..., 0], arr[..., 1], arr[..., 2], arr[..., 3]
    if core:
        m = (al > 128) & (b > 90) & (b > r + 50) & (b > g + 40) & (g < 120)   # deep-blue crystal
    else:
        m = (al > 128) & (b > 170) & (g > 110) & (b > r + 60)                 # bright blue light segments
    o = np.zeros_like(arr)
    o[m, :3] = arr[m, :3]; o[m, 3] = 255
    if not core:
        # red / green navigation lights
        nav = (al > 128) & (((r > 200) & (g < 90) & (b < 90)) | ((g > 170) & (r < 120) & (b < 120)))
        o[nav, :3] = arr[nav, :3]; o[nav, 3] = 255
    return o

hullC = to_canvas(hull)
save(hullC, 'hornet_stage5_hull')
gl = glow(hullC); save(gl, 'hornet_stage5_hull_glow_l')
# engines: the blue lights on the stern (lowest 18% of the hull)
hy = np.nonzero(hullC[..., 3] > 32)[0]
ge = gl.copy(); ge[: int(hy.max() - 0.18 * (hy.max() - hy.min()))] = 0
save(ge, 'hornet_stage5_hull_glow_e')
core = glow(hullC, core=True)
# keep only the central crystal (largest blob near the centre)
cyx = np.nonzero(core[..., 3] > 0)
keep = (np.abs(np.arange(1024)[:, None] - 512) < 110) & (np.abs(np.arange(1024)[None, :] - 512) < 60)
core[~keep] = 0
save(core, 'hornet_stage5_core')

# ---- pads: dark round discs inside gold rings, measured on the canvas (4: bow, left, right, stern)
def pads(arr):
    a = arr
    dark = (a[..., 3] > 200) & (a[..., :3].max(-1) < 40)
    Y, X = np.nonzero(dark)
    found = []
    for (gx, gy) in [(512, 200), (330, 470), (694, 470), (512, 740)]:
        # cluster of dark px near the guess
        sel = (np.abs(X - gx) < 90) & (np.abs(Y - gy) < 90)
        found.append((float(X[sel].mean()), float(Y[sel].mean()), int(sel.sum())))
    return found

P = pads(hullC)

# ---- wings: 4 blobs by quadrant of the source frame
WPX = 0
wings = {}
for key, (qx, qy) in {'FL': (0, 0), 'FR': (1, 0), 'RL': (0, 1), 'RR': (1, 1)}.items():
    sel = np.zeros(wmask.shape, bool)
    xs0 = slice(0, N0 // 2) if qx == 0 else slice(N0 // 2, N0)
    ys0 = slice(0, N0 // 2) if qy == 0 else slice(N0 // 2, N0)
    sel[ys0, xs0] = True
    m = wmask & sel
    yy, xx = np.nonzero(m)
    bx0, bx1, by0, by1 = xx.min(), xx.max(), yy.min(), yy.max()
    # root = the dark armoured base: the wing pixel nearest the hull centre line
    dist = np.abs(xx - cx) + 0.3 * np.abs(yy - cy)
    i = int(np.argmin(dist))
    wings[key] = dict(src=(bx0, by0, bx1, by1), m=m, root=(float(xx[i]), float(yy[i])), c=((bx0 + bx1) / 2.0, (by0 + by1) / 2.0))
    WPX = max(WPX, (bx1 - bx0 + 1) * k, (by1 - by0 + 1) * k)
WPX = int(np.ceil(WPX / 8.0) * 8 + 16)

def src_to_canvas(x, y):
    return ((x - (cx - side / 2)) * k, (y - (cy - side / 2)) * k)

info = {'k': k, 'side': side, 'pads': P, 'wpx': WPX, 'wings': {}}
for key, w in wings.items():
    arr = wing.copy(); arr[~w['m'], 3] = 0
    # wing canvas: WPX square in hull px, centred on the wing bbox centre
    wx, wy = w['c']
    sz = WPX / k   # source px
    x0, y0 = wx - sz / 2, wy - sz / 2
    pm = arr.copy(); pm[..., :3] *= pm[..., 3:4] / 255.0
    out = np.asarray(Image.fromarray(np.clip(pm, 0, 255).astype(np.uint8), 'RGBA').transform(
        (WPX, WPX), Image.AFFINE, (sz / WPX, 0, x0, 0, sz / WPX, y0), resample=Image.BICUBIC)).astype(float)
    al = out[..., 3:4]; out[..., :3] = np.where(al > 0, out[..., :3] * 255.0 / np.maximum(al, 1), 0)
    save(out, 'hornet_stage5_w' + key)
    save(glow(out), 'hornet_stage5_w' + key + '_glow_l')
    c = src_to_canvas(wx, wy); r = src_to_canvas(*w['root'])
    info['wings'][key] = {'centre': c, 'root': r}

# ---- enemy / fallback composite: hull + the 4 wings at their GPT spots, rear pair lifted to fit the canvas
comp = hullC.copy()
for key in ('FL', 'FR', 'RL', 'RR'):
    w = np.asarray(Image.open(os.path.join(OUT, 'hornet_stage5_w' + key + '.webp')).convert('RGBA')).astype(float)
    c = info['wings'][key]['centre']
    lift = 0
    x0, y0 = int(round(c[0] - WPX / 2)), int(round(c[1] - WPX / 2))
    # lift / pull in until the wing's pixels sit inside the canvas with a 6 px margin
    wy, wx = np.nonzero(w[..., 3] > 16)
    dy = max(0, (y0 + wy.max()) - (1024 - 6)); dy = -dy if dy else max(0, 6 - (y0 + wy.min()))
    dx = 0
    if x0 + wx.min() < 6: dx = 6 - (x0 + wx.min())
    if x0 + wx.max() > 1017: dx = 1017 - (x0 + wx.max())
    x0 += dx; y0 += dy
    info['wings'][key]['enemy_shift'] = (dx, dy)
    under = np.zeros_like(comp)
    xa, ya = max(0, x0), max(0, y0)
    xb, yb = min(1024, x0 + WPX), min(1024, y0 + WPX)
    under[ya:yb, xa:xb] = w[ya - y0:yb - y0, xa - x0:xb - x0]
    # wings under the hull: hull over wing
    a1 = comp[..., 3:4] / 255.0; a2 = under[..., 3:4] / 255.0
    ao = a1 + a2 * (1 - a1)
    comp[..., :3] = np.where(ao > 0, (comp[..., :3] * a1 + under[..., :3] * a2 * (1 - a1)) / np.maximum(ao, 1e-6), 0)
    comp[..., 3:4] = ao * 255
save(comp, 'hornet_stage5')
cg = glow(comp); save(cg, 'hornet_stage5_glow_l')
ce = cg.copy(); ce[: int(hy.max() - 0.18 * (hy.max() - hy.min()))] = 0
save(ce, 'hornet_stage5_glow_e')
print(json.dumps(info, indent=1, default=float))
