# v17 attached hardware restyle: one turret and one missile sprite per hull, rendered (shaded, bevelled) in that
# hull's own palette and plating texture, so the hardware matches the ship it sits on.
# Also snaps turret / missile hardpoints that sit off the hull onto it (writes ModHardpoints.java).
#   python3 genhw.py turrets.json modart_dir java_out
import json, math, sys
import numpy as np
from PIL import Image, ImageDraw, ImageFilter
from scipy import ndimage

SPEC, ART, JOUT = sys.argv[1], sys.argv[2], sys.argv[3]
hulls = json.load(open(SPEC))
S = 256  # render size, downsampled to 128


def hsv(rgb):
    r, g, b = [c / 255.0 for c in rgb]
    mx, mn = max(r, g, b), min(r, g, b)
    return mx - mn if mx > 0 else 0, mx


def palette(im):
    a = np.asarray(im.convert('RGBA')).astype(np.float32)
    m = a[..., 3] > 200
    px = a[m][:, :3]
    lum = px @ np.array([0.3, 0.55, 0.15])
    order = np.argsort(lum)
    n = len(order)
    dark = px[order[int(n * 0.05):int(n * 0.25)]].mean(0)
    base = px[order[int(n * 0.35):int(n * 0.65)]].mean(0)
    light = px[order[int(n * 0.85):int(n * 0.97)]].mean(0)
    mx = px.max(1); mn = px.min(1)
    sat = np.where(mx > 0, (mx - mn) / np.maximum(mx, 1), 0)
    acc_m = (sat > 0.45) & (mx > 140)
    if acc_m.sum() > 30:
        cand = px[acc_m]
        # dominant accent: most common coarse hue bucket among saturated bright pixels
        hue = np.arctan2(np.sqrt(3) * (cand[:, 1] - cand[:, 2]), 2 * cand[:, 0] - cand[:, 1] - cand[:, 2])
        bins = np.floor((hue + math.pi) / (2 * math.pi) * 12).astype(int) % 12
        top = np.bincount(bins, minlength=12).argmax()
        accent = cand[bins == top].mean(0)
        accent = accent / max(1, accent.max()) * 255
    else:
        accent = np.array([140, 210, 255.0])
    return dark, base, light, accent


def plating(im, size):
    """A detailed opaque patch of the hull's own texture, tiled up to size x size."""
    a = np.asarray(im.convert('RGBA'))
    H, W = a.shape[:2]
    m = a[..., 3] > 220
    g = np.asarray(im.convert('L')).astype(np.float32)
    energy = np.abs(np.diff(g, axis=0, prepend=0)) + np.abs(np.diff(g, axis=1, prepend=0))
    win = max(16, W // 10)
    best, bpos = -1, (H // 2 - win // 2, W // 2 - win // 2)
    for y in range(0, H - win, max(4, win // 4)):
        for x in range(0, W - win, max(4, win // 4)):
            if m[y:y + win, x:x + win].mean() < 0.98: continue
            e = energy[y:y + win, x:x + win].mean()
            if e > best: best, bpos = e, (y, x)
    y, x = bpos
    patch = im.convert('RGB').crop((x, y, x + win, y + win)).resize((size // 2, size // 2), Image.LANCZOS)
    tile = Image.new('RGB', (size, size))
    for ty in range(2):
        for tx in range(2):
            p = patch if (tx + ty) % 2 == 0 else patch.transpose(Image.FLIP_LEFT_RIGHT)
            tile.paste(p, (tx * size // 2, ty * size // 2))
    return np.asarray(tile).astype(np.float32)


def shade_mask(mask, bevel=10.0, light=(-0.6, -0.8)):
    """Bevel lighting from a mask: edges lit/shadowed by the light direction, flat interior."""
    d = ndimage.distance_transform_edt(mask)
    t = np.clip(d / bevel, 0, 1)
    gy, gx = np.gradient(ndimage.gaussian_filter(np.minimum(d, bevel), 1.2))
    n = np.sqrt(gx * gx + gy * gy) + 1e-6
    lam = -(gx / n * light[0] + gy / n * light[1])  # facing the light
    edge = (1 - t)
    return 1.0 + edge * 0.55 * lam - edge * 0.12, t


def cylinder(w, h, c_dark, c_light):
    """Horizontal-shaded cylinder strip (barrel), w x h."""
    x = np.linspace(-1, 1, w)
    prof = np.sqrt(np.clip(1 - x * x, 0, 1))
    spec = np.exp(-((x + 0.35) / 0.18) ** 2) * 0.6
    col = c_dark[None, :] * (1 - prof[:, None]) + c_light[None, :] * prof[:, None] + spec[:, None] * 255 * 0.35
    return np.repeat(col[None, :, :], h, axis=0)


def compose(layers):
    out = np.zeros((S, S, 4), np.float32)
    for rgb, alpha in layers:
        a = alpha[..., None]
        out[..., :3] = rgb * a + out[..., :3] * (1 - a)
        out[..., 3] = np.maximum(out[..., 3], alpha * 255)
    return out


def finish(arr, size):
    im = Image.fromarray(np.clip(arr, 0, 255).astype(np.uint8), 'RGBA')
    # thin dark outline like the hull sprites
    a = np.asarray(im)[..., 3] > 20
    ring = ndimage.binary_dilation(a, iterations=3) & ~a
    o = np.asarray(im).copy()
    o[ring] = [12, 12, 16, 200]
    return Image.fromarray(o, 'RGBA').resize((size, size), Image.LANCZOS)


def poly_mask(points):
    m = Image.new('L', (S, S), 0)
    ImageDraw.Draw(m).polygon(points, fill=255)
    return np.asarray(m) > 127


def ellipse_mask(box):
    m = Image.new('L', (S, S), 0)
    ImageDraw.Draw(m).ellipse(box, fill=255)
    return np.asarray(m) > 127


def body_shape(style):
    c = S / 2
    if style == 'reaver':      # angular hexagonal furnace housing
        return poly_mask([(c - 78, c - 20), (c - 52, c - 62), (c + 52, c - 62), (c + 78, c - 20), (c + 78, c + 58), (c + 46, c + 90), (c - 46, c + 90), (c - 78, c + 58)])
    if style == 'iron':        # boxy armoured mount
        return poly_mask([(c - 74, c - 50), (c + 74, c - 50), (c + 84, c - 30), (c + 84, c + 76), (c + 64, c + 92), (c - 64, c + 92), (c - 84, c + 76), (c - 84, c - 30)])
    if style == 'varn':        # sleek teardrop emitter
        return ellipse_mask((c - 66, c - 70, c + 66, c + 92)) | poly_mask([(c - 40, c - 40), (c, c - 96), (c + 40, c - 40)])
    if style == 'dev':
        return poly_mask([(c - 70, c - 30), (c - 40, c - 66), (c + 40, c - 66), (c + 70, c - 30), (c + 70, c + 60), (c + 40, c + 88), (c - 40, c + 88), (c - 70, c + 60)])
    return ellipse_mask((c - 80, c - 70, c + 80, c + 90))  # round armoured dome


def turret(im, style, barrels, long_barrels):
    dark, base, light, accent = palette(im)
    tex = plating(im, S)
    c = S / 2
    body = body_shape(style)
    shade, t = shade_mask(body, bevel=14)
    fill = (tex * 0.55 + base[None, None, :] * 0.45) * 0.95
    fill = fill * shade[..., None]
    # dome highlight + panel ring
    yy, xx = np.mgrid[0:S, 0:S].astype(np.float32)
    r = np.sqrt((xx - c) ** 2 + (yy - c - 10) ** 2)
    fill += (np.exp(-(((xx - c + 26) ** 2 + (yy - c - 4) ** 2) / (2 * 30 ** 2))) * 55)[..., None]
    groove = np.exp(-((r - 46) / 2.2) ** 2) * body
    fill = fill * (1 - 0.45 * groove[..., None])
    layers = []
    # barrels behind the mantlet, drawn first, with their shadow on the body
    bw = 18 if barrels == 3 else 24
    gap = 30 if barrels == 3 else 40
    top = 6 if long_barrels else 30
    xs = [c + (i - (barrels - 1) / 2) * gap for i in range(barrels)]
    bar_rgb = np.zeros((S, S, 3), np.float32)
    bar_a = np.zeros((S, S), np.float32)
    for x0 in xs:
        x0 = int(x0 - bw / 2)
        y1 = int(c - 10)
        cyl = cylinder(bw, y1 - top, dark * 0.8, light * 0.95)
        bar_rgb[top:y1, x0:x0 + bw] = cyl
        bar_a[top:y1, x0:x0 + bw] = 1
        # muzzle ring and bore
        bar_rgb[top:top + 7, x0 - 2:x0 + bw + 2] = cylinder(bw + 4, 7, dark * 0.6, light)
        bar_a[top:top + 7, x0 - 2:x0 + bw + 2] = 1
        bar_rgb[top:top + 3, x0 + bw // 2 - 4:x0 + bw // 2 + 4] = 10
        # emissive coil band
        for yb in (top + 26, top + 40):
            if yb + 4 < y1:
                bar_rgb[yb:yb + 4, x0 + 2:x0 + bw - 2] = accent * 0.9 + 25
    shadow = ndimage.gaussian_filter(np.roll(np.roll(bar_a, 6, 0), 5, 1), 4) * body
    fill = fill * (1 - 0.35 * shadow[..., None])
    layers.append((fill, body.astype(np.float32)))
    layers.append((bar_rgb, bar_a))
    # mantlet block over the barrel roots
    mant = poly_mask([(c - (gap * (barrels - 1) / 2 + 26), c - 22), (c + (gap * (barrels - 1) / 2 + 26), c - 22), (c + (gap * (barrels - 1) / 2 + 18), c + 8), (c - (gap * (barrels - 1) / 2 + 18), c + 8)])
    ms, _ = shade_mask(mant, bevel=6)
    mfill = (tex * 0.4 + dark[None, None, :] * 0.6) * ms[..., None]
    layers.append((mfill, mant.astype(np.float32)))
    # sensor / accent lights on the rear deck
    lights = np.zeros((S, S), np.float32)
    for lx in (c - 34, c + 34):
        lights += np.exp(-(((xx - lx) ** 2 + (yy - (c + 52)) ** 2) / (2 * 4.5 ** 2)))
    if style in ('reaver',):
        for vy in (c + 26, c + 40, c + 54):
            lights += np.exp(-((yy - vy) / 2.2) ** 2) * (np.abs(xx - c) < 40)
    lights = np.clip(lights, 0, 1) * body
    glow = np.clip(accent[None, None, :] * 0.8 + 70, 0, 255)
    out = compose(layers)
    a = lights[..., None]
    out[..., :3] = out[..., :3] * (1 - a) + glow * a
    return finish(out, 128)


def missile(im, style, big):
    dark, base, light, accent = palette(im)
    tex = plating(im, S)
    c = S / 2
    w = 34 if big else 26
    body = poly_mask([(c - w / 2, 56), (c + w / 2, 56), (c + w / 2, 206), (c - w / 2, 206)])
    nose = poly_mask([(c - w / 2, 58), (c, 14 if big else 22), (c + w / 2, 58)])
    fins = poly_mask([(c - w / 2, 160), (c - w / 2 - 22, 216), (c - w / 2, 204)]) | poly_mask([(c + w / 2, 160), (c + w / 2 + 22, 216), (c + w / 2, 204)])
    xx = np.mgrid[0:S, 0:S][1].astype(np.float32)
    cylx = np.clip((xx - (c - w / 2)) / w * 2 - 1, -1, 1)
    prof = np.sqrt(np.clip(1 - cylx ** 2, 0, 1))
    spec = np.exp(-((cylx + 0.35) / 0.2) ** 2)
    bcol = (tex * 0.35 + base[None, None, :] * 0.65) * (0.45 + 0.6 * prof[..., None]) + spec[..., None] * 60
    ncol = (accent * 0.7 + light * 0.3)[None, None, :] * (0.5 + 0.6 * prof[..., None]) + spec[..., None] * 80
    fs, _ = shade_mask(fins, bevel=4)
    fcol = (tex * 0.3 + dark[None, None, :] * 0.7) * fs[..., None]
    out = compose([(fcol, fins.astype(np.float32)), (bcol, body.astype(np.float32)), (ncol, nose.astype(np.float32))])
    yy = np.mgrid[0:S, 0:S][0]
    for by in (84, 150):
        band = (np.abs(yy - by) < 3) & body
        out[band, :3] = accent * 0.9 + 30
    noz = (yy > 204) & (yy < 214) & (np.abs(xx - c) < w / 2 - 3)
    out[noz, :3] = 30
    out[noz, 3] = 255
    return finish(out, 128)


STYLE = {'Crimson Reavers': 'reaver', 'Ironclad Militia': 'iron', 'Varn Syndicate': 'varn', 'Developers': 'dev'}

# ---------------------------------------------------------------- hardpoint snapping
def snap(h):
    im = Image.open('%s/%s.png' % (ART, h['art'])).convert('RGBA')
    W, H = im.size
    a = np.asarray(im)[..., 3] > 100
    size = h['size']
    # turrets need room: erode by ~ a third of the turret sprite
    ts = size * 0.12 if h['cls'] == 6 else min(100, max(56, size * 0.16))   # turret sprite size in world units
    tpx = max(2, int(ts / size * W / 3.2)) if h['pos'] else 2
    inner = ndimage.binary_erosion(a, iterations=max(2, tpx))
    if inner.sum() < 20: inner = ndimage.binary_erosion(a, iterations=2)
    pts_in = np.argwhere(inner)
    pts_any = np.argwhere(ndimage.binary_erosion(a, iterations=2))

    def fix(x, y, pts, need):
        cx, cy = (x / size + 0.5) * W, (y / size + 0.5) * H
        ix, iy = int(cx), int(cy)
        if 0 <= ix < W and 0 <= iy < H and need[iy, ix]:
            return x, y, False
        d = (pts[:, 1] - cx) ** 2 + (pts[:, 0] - cy) ** 2
        py, px = pts[d.argmin()]
        return round((px + 0.5) / W * size - size / 2, 1), round((py + 0.5) / H * size - size / 2, 1), True

    tur, changed = [], False
    for (x, y) in h['pos']:
        nx, ny, ch = fix(abs(x), y, pts_in, inner)
        tur.append((math.copysign(nx, x) if x != 0 else nx, ny))
        changed |= ch
    mis = []
    need_any = ndimage.binary_erosion(a, iterations=2)
    for (x, y) in h['mis']:
        nx, ny, ch = fix(abs(x), y, pts_any, need_any)
        mis.append((math.copysign(nx, x) if x != 0 else nx, ny))
        changed |= ch
    return tur, mis, changed


rows = []
for h in hulls:
    im = Image.open('%s/%s.png' % (ART, h['art'])).convert('RGBA')
    style = STYLE.get(h['faction'], 'round')
    if h['pos']:
        n = len(h['pos'])
        three = h['type'] == 'ROTATIVE_TRIPLE'
        turret(im, style, 3 if three else 2, h['cls'] >= 4 or h['cls'] == 6).save('%s/hw_turret_%s.png' % (ART, h['art']))
    missile(im, style, h['cls'] == 6).save('%s/hw_missile_%s.png' % (ART, h['art']))
    tur, mis, ch = snap(h)
    if ch:
        rows.append((h['art'], tur, mis))
        print('snapped', h['art'])

j = ['package fr.testudo.spacecorsair.mod;', '',
     '/** Generated by src/genhw.py: hardpoints moved onto the hull sprite (turrets and missile tubes that sat off the hull). */',
     'final class ModHardpoints {', '    private ModHardpoints() {}', '',
     '    static final String[] ARTS = {' + ', '.join('"%s"' % r[0] for r in rows) + '};',
     '    static final float[][] TURRETS = {']
for art, tur, mis in rows:
    j.append('        new float[]{' + ', '.join('%sf' % v for p in tur for v in p) + '}, // ' + art)
j.append('    };')
j.append('    static final float[][] MISSILES = {')
for art, tur, mis in rows:
    j.append('        new float[]{' + ', '.join('%sf' % v for p in mis for v in p) + '},')
j.append('    };')
j.append('}')
open(JOUT, 'w').write('\n'.join(j) + '\n')
print('hardpoint fixes:', len(rows))
