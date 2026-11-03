# v38: bakes the Leviathan s5 doomsday overlay data from the approved v4 preview (leviathan-vfx/doomsday.py, owner 2026-11-03).
#   python3 -I src/genlev38.py work/modart
# Writes (lossless WebP, greyscale-on-black for additive tinting unless noted):
#   leviathan_stage5_spine  : central ridge (energy gauge), 512 px canvas of the 1024 sprite
#   leviathan_stage5_trims  : gold power channels (trims) that carry the routed power
#   leviathan_stage5_ringseg: atlas of the 16 ring-cage segments (4x4 cells of 128 px, each segment cropped to its box)
# and src/java/.../ModLevData.java: segment boxes, trim paths pad -> prow, spine extent, prow core, vents (1024 px coords).
import os, sys, heapq
import numpy as np
from PIL import Image
from scipy import ndimage

ART = sys.argv[1]
HERE = os.path.dirname(os.path.abspath(__file__))
SW = 512; K = 0.5
spr = Image.open(os.path.join(ART, 'leviathan_stage5.webp')).convert('RGBA').resize((SW, SW), Image.LANCZOS)
x = np.array(spr).astype(float); r, g, b, a = [x[..., i] for i in range(4)]
solid = a > 160; Y, X = np.mgrid[:SW, :SW].astype(float)
edge_d = ndimage.distance_transform_edt(solid)
spine = solid & (np.abs(X - 256) < 13) & (r > 110) & (g > 70) & (b < g) & (Y > 75) & (Y < 405)
gold = solid & (r > 150) & (g > 100) & (b < g - 30)
ring = gold & (edge_d < 14) & (Y > 90) & (Y < 470)
pads = np.array([(375, 448), (647, 448), (375, 576), (647, 576), (375, 702), (647, 702)]) * K
chan = ndimage.binary_dilation(gold, iterations=2) & solid
cost = np.where(chan, 1.0, 8.0)


def geo(seeds):
    dist = np.full(chan.shape, np.inf); h = []
    for (sx, sy) in seeds:
        yy, xx = np.where(solid & (np.hypot(X - sx, Y - sy) < 14))
        for a_, b_ in zip(yy, xx): dist[a_, b_] = 0; h.append((0.0, a_, b_))
    heapq.heapify(h); H, W = chan.shape
    while h:
        d0, a_, b_ = heapq.heappop(h)
        if d0 > dist[a_, b_]: continue
        for da_, db_, w_ in ((1, 0, 1), (-1, 0, 1), (0, 1, 1), (0, -1, 1), (1, 1, 1.414), (1, -1, 1.414), (-1, 1, 1.414), (-1, -1, 1.414)):
            a2, b2 = a_ + da_, b_ + db_
            if 0 <= a2 < H and 0 <= b2 < W and solid[a2, b2]:
                d2 = d0 + w_ * cost[a2, b2]
                if d2 < dist[a2, b2]: dist[a2, b2] = d2; heapq.heappush(h, (d2, a2, b2))
    return dist


dprow = geo([(256 - 28, 60), (256 + 28, 60), (256, 70)])


def path(px, py):
    """steepest descent on the prow distance from a pad; points every ~6 px (512 space)."""
    p = (int(py), int(px)); out = [p]; seen = {p}
    while np.isfinite(dprow[p]) and dprow[p] > 0 and len(out) < 2000:
        best = None
        for dy in (-1, 0, 1):
            for dx in (-1, 0, 1):
                q = (p[0] + dy, p[1] + dx)
                if q in seen or not (0 <= q[0] < SW and 0 <= q[1] < SW): continue
                if best is None or dprow[q] < dprow[best]: best = q
        if best is None or dprow[best] >= dprow[p]: break
        p = best; seen.add(p); out.append(p)
    pts = out[::6] + [out[-1]]
    return [v for (yy, xx) in pts for v in (xx * 2 + 1, yy * 2 + 1)]


def save_l(m, n, size=SW):
    v = np.clip(m, 0, 1) * 255
    # v38 emulator fix: white + alpha mask (RGBA), so a normal-blend dark tint only darkens the mask, never a black box
    al = Image.fromarray(v.astype(np.uint8), 'L').resize((size, size), Image.LANCZOS)
    Image.merge('RGBA', (Image.new('L', al.size, 255),) * 3 + (al,)).save(
        os.path.join(ART, n + '.webp'), 'WEBP', lossless=True, quality=100, method=6, exact=True)


soft = lambda m, s: np.clip(ndimage.gaussian_filter(m.astype(float), s) * 1.6, 0, 1)
save_l(np.maximum(spine, soft(spine, 2) * 0.6), 'leviathan_stage5_spine')
reach = np.isfinite(dprow) & gold
save_l(np.maximum(reach * 0.9, soft(reach, 1.5) * 0.5), 'leviathan_stage5_trims')

# ring segments by angle around (256, 280), 16 cells in a 4x4 atlas of 128 px cells (segment box scaled to fit)
seg = np.where(ring, ((np.arctan2(Y - 280, X - 256) + np.pi) / (2 * np.pi) * 16).astype(int), -1)
ringv = np.maximum(ring, soft(ring, 1.5) * 0.6)
atlas = np.zeros((512, 512)); boxes = []
for k in range(16):
    ys, xs = np.nonzero(seg == k)
    if len(xs) == 0:
        boxes += [0, 0, 0, 0]; continue
    x0, x1, y0, y1 = max(0, xs.min() - 3), min(SW, xs.max() + 4), max(0, ys.min() - 3), min(SW, ys.max() + 4)
    m = ringv[y0:y1, x0:x1] * ndimage.binary_dilation(seg[y0:y1, x0:x1] == k, iterations=3)
    w, h = x1 - x0, y1 - y0; s = min(1.0, 128.0 / max(w, h))
    im = Image.fromarray((m * 255).astype(np.uint8), 'L').resize((max(1, int(w * s)), max(1, int(h * s))), Image.LANCZOS)
    cx, cy = (k % 4) * 128, (k // 4) * 128
    atlas[cy:cy + im.height, cx:cx + im.width] = np.asarray(im) / 255.0
    boxes += [x0 * 2, y0 * 2, x1 * 2, y1 * 2, ]   # 1024 px box; atlas cell holds it at scale s from its top-left
    boxes += []
save_l(atlas, 'leviathan_stage5_ringseg', 512)
cells = []
for k in range(16):
    x0, y0, x1, y1 = boxes[4 * k:4 * k + 4]
    w, h = (x1 - x0) / 2, (y1 - y0) / 2; s = min(1.0, 128.0 / max(w, h, 1))
    cells += [round(max(1, int(w * s)) / 512, 5), round(max(1, int(h * s)) / 512, 5)]

ys_ = Y[spine]
paths = [path(px, py) for px, py in pads]


def jarr(v):
    return ', '.join('%sf' % x for x in v)


java = '''package fr.testudo.spacecorsair.mod;

/** Generated by src/genlev38.py (v38): Leviathan s5 doomsday overlay geometry in 1024 px sprite coordinates (+y = stern). */
final class ModLevData {
    private ModLevData() {}

    /** Ring-cage segments (atlas leviathan_stage5_ringseg, 4x4 cells of 128 px): box x0, y0, x1, y1 per segment. */
    static final float[] SEG_BOX = {%s};
    /** Atlas cell size used by each segment (u, v span from the cell's top-left). */
    static final float[] SEG_UV = {%s};
    /** Spine (energy gauge) extent: prow end y, stern end y. */
    static final float SPINE_Y0 = %sf, SPINE_Y1 = %sf;
    /** Charge core between the tusks. */
    static final float CORE_X = 512f, CORE_Y = 68f;
    /** Stern vents. */
    static final float[] VENTS = {462, 975, 512, 980, 562, 975};
    /** Power paths along the gold trims, one per turret pad, pad -> prow (x, y pairs). */
    static final float[][] PATHS = {
%s
    };
}
''' % (jarr(boxes), jarr(cells), ys_.min() * 2, ys_.max() * 2 + 2, ',\n'.join('        {%s}' % jarr(p) for p in paths))
open(os.path.join(HERE, 'java/fr/testudo/spacecorsair/mod/ModLevData.java'), 'w').write(java)
print('ok', [len(p) // 2 for p in paths], ys_.min() * 2, ys_.max() * 2)
