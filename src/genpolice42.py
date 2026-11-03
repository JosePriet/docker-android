# v42: police livery recolour (owner 2026-11-03: "recolour existing ships as police").
#   python3 -I src/genpolice42.py work/modart [arts.txt] [--preview out.png]
# For every art key (arts.txt, one per line; default /tmp/v42_police_arts.txt) and the 7 faction flagships (cap_<key>),
# reads work/modart/<art>.webp and writes pol_<art>.webp in police livery, plus every companion that exists:
# _glow_e, _glow_l, _anim_01.._08, _veins, and for the flagships wreck_cap_<key>_a/_b/_c -> pol_wreck_cap_<key>_*.
# Hull: alpha and luminance (Rec.601) are kept exactly per pixel; only the chroma changes. Paint -> deep police blue,
# bright saturated trim -> white/silver, dark greys -> blue-black gunmetal (the stock police hull, orig_police, is a
# dark gunmetal hull with thin light lines), light greys stay silver with a cool tint.
# Glows: engines blue-white; running lights red on the port half, blue on the starboard half (police light bar).
# Lossless WebP only (exact=True keeps the RGB under transparent pixels).
import os, sys
import numpy as np
from PIL import Image
from multiprocessing import Pool

POLICE_BLUE = (0.10, 0.30, 1.00)     # hue of the paint (deep police blue)
SILVER_TINT = (0.80, 0.90, 1.00)     # faint cool tint on silver/white
LIGHT_RED = (1.00, 0.12, 0.10)
LIGHT_BLUE = (0.15, 0.42, 1.00)
ENGINE = (0.55, 0.78, 1.00)
CAPS = ['spartan', 'reaver', 'kretari', 'varn', 'ironclad', 'helion', 'warden']
W601 = np.array([0.299, 0.587, 0.114])


def load(art, n):
    p = os.path.join(art, n + '.webp')
    return Image.open(p) if os.path.exists(p) else None


def save(im, art, n):
    im.save(os.path.join(art, n + '.webp'), 'WEBP', lossless=True, quality=100, method=6, exact=True)


def chroma_dir(rgb):
    c = np.array(rgb, float)
    c = c - (c @ W601)                   # zero-luminance direction
    return c / np.abs(c).max()


def kmax(L, c):
    """Largest k so that L + k*c stays inside 0..255 on every channel."""
    k = np.full(L.shape, 1e9)
    for i in range(3):
        if c[i] > 1e-6: k = np.minimum(k, (255.0 - L) / c[i])
        elif c[i] < -1e-6: k = np.minimum(k, L / -c[i])
    return np.maximum(k, 0)


def smooth(x, a, b):
    t = np.clip((x - a) / (b - a), 0, 1)
    return t * t * (3 - 2 * t)


def hull(im):
    x = np.asarray(im.convert('RGBA')).astype(float)
    rgb = x[..., :3]
    L = rgb @ W601
    mx = rgb.max(-1); mn = rgb.min(-1)
    sat = (mx - mn) / np.maximum(mx, 1)
    blue, silver = chroma_dir(POLICE_BLUE), chroma_dir(SILVER_TINT)
    kb, ks = kmax(L, blue), kmax(L, silver)
    paint = smooth(sat, 0.10, 0.24)                 # 0 grey .. 1 painted / coloured
    bright = smooth(L, 115, 165)                    # bright coloured parts become white/silver trim
    # chroma amplitude: paint gets as much blue as the gamut allows (capped); dark greys a gunmetal blue; light greys silver
    k_paint = np.minimum(kb, 0.8 * L + 20)
    k_grey = np.minimum(kb, 0.45 * L) * (1 - smooth(L, 90, 150))
    k_silv = np.minimum(ks, 0.12 * L)
    kB = paint * (1 - bright) * k_paint + (1 - paint) * k_grey
    kS = paint * bright * k_silv + (1 - paint) * smooth(L, 90, 150) * k_silv
    out = L[..., None] + kB[..., None] * blue + kS[..., None] * silver
    # the two directions add up: rescale if a channel would leave the gamut (luminance stays exact)
    over = np.maximum((out - 255).max(-1), (-out).max(-1))
    dev = out - L[..., None]
    room = np.where(dev.max(-1) > 0, (255 - L) / np.maximum(dev.max(-1), 1e-6), 1e9)
    room = np.minimum(room, np.where(dev.min(-1) < 0, L / np.maximum(-dev.min(-1), 1e-6), 1e9))
    out = np.where((over > 0)[..., None], L[..., None] + dev * np.minimum(room, 1)[..., None], out)
    y = x.copy()
    y[..., :3] = np.clip(np.round(out), 0, 255)
    return Image.fromarray(y.astype(np.uint8), 'RGBA')


def glow(im, lights):
    mode = im.mode
    x = np.asarray(im.convert('RGBA')).astype(float)
    V = x[..., :3].max(-1)
    if lights:
        h, w = V.shape
        X = np.arange(w)[None, :].repeat(h, 0)
        port = smooth(-(X - w / 2.0), -w * 0.01, w * 0.01)       # 1 on the left half, 0 on the right, soft seam
        col = port[..., None] * np.array(LIGHT_RED) + (1 - port[..., None]) * np.array(LIGHT_BLUE)
    else:
        col = np.broadcast_to(np.array(ENGINE), V.shape + (3,))
    y = x.copy()
    y[..., :3] = np.clip(np.round(V[..., None] * col), 0, 255)
    out = Image.fromarray(y.astype(np.uint8), 'RGBA')
    return out.convert(mode) if mode != 'RGBA' else out


def one(art, src, dst):
    """src -> dst plus companions. Returns the names written."""
    done = []
    im = load(art, src)
    if im is None:
        return done
    save(hull(im), art, dst); done.append(dst)
    for suf, fn in (('_glow_e', lambda i: glow(i, False)), ('_glow_l', lambda i: glow(i, True)), ('_veins', hull)) \
            + tuple(('_anim_0%d' % k, hull) for k in range(1, 9)):
        c = load(art, src + suf)
        if c is not None:
            save(fn(c), art, dst + suf); done.append(dst + suf)
    return done


def job(t):
    art, src, dst = t
    w = one(art, src, dst)
    if src.startswith('cap_'):                   # flagship wrecks (ModWreck: pol_wreck_cap_<key>_a/_b/_c)
        k = src[4:]
        for s in ('_a', '_b', '_c'):
            im = load(art, 'wreck_cap_' + k + s)
            if im is not None:
                save(hull(im), art, 'pol_wreck_cap_' + k + s); w.append('pol_wreck_cap_' + k + s)
    return w


def preview(art, pairs, path):
    S = 200; cols = 6
    rows = (len(pairs) + cols - 1) // cols
    sheet = Image.new('RGB', (cols * 2 * S, rows * S), (24, 26, 30))
    for i, (a, b) in enumerate(pairs):
        for j, n in enumerate((a, b)):
            im = Image.open(os.path.join(art, n + '.webp')).convert('RGBA').resize((S, S), Image.LANCZOS)
            bg = Image.new('RGBA', (S, S), (24, 26, 30, 255) if j == 0 else (30, 32, 40, 255))
            bg.alpha_composite(im)
            gl = load(art, n + '_glow_l')      # lights added on top, as in game (additive)
            if gl is not None:
                g = np.asarray(gl.convert('RGB').resize((S, S), Image.LANCZOS)).astype(float) * 0.8
                bg = Image.fromarray(np.clip(np.asarray(bg.convert('RGB')).astype(float) + g, 0, 255).astype(np.uint8))
            sheet.paste(bg.convert('RGB'), (((i % cols) * 2 + j) * S, (i // cols) * S))
    sheet.save(path)


def main():
    args = [a for a in sys.argv[1:]]
    prev = None
    if '--preview' in args:
        i = args.index('--preview'); prev = args[i + 1]; del args[i:i + 2]
    art = args[0]
    lst = args[1] if len(args) > 1 else '/tmp/v42_police_arts.txt'
    arts = [l.strip() for l in open(lst) if l.strip() and not l.startswith('#')]
    jobs = [(art, a, 'pol_' + a) for a in arts if not a.startswith('pol_')]
    jobs += [(art, 'cap_' + k, 'pol_cap_' + k) for k in CAPS]
    with Pool() as pool:                         # lossless method 6 is slow: one process per core
        res = pool.map(job, jobs)
    written = []
    for (_, a, _d), w in zip(jobs, res):
        if not w: print('missing', a)
        written += w
    print(len(written), 'files written')
    if prev:
        pairs = [('cap_' + k, 'pol_cap_' + k) for k in CAPS]
        step = max(1, len(arts) // 17)
        pairs += [(a, 'pol_' + a) for a in arts[::step][:17] if os.path.exists(os.path.join(art, 'pol_' + a + '.webp'))]
        pairs += [('orig_police', 'orig_police')]
        preview(art, pairs, prev)


if __name__ == '__main__':
    main()
