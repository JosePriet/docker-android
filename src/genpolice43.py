# v43: per-faction police accents on top of the v42 white/black livery (owner 2026-11-04 03:14).
#   python3 -I src/genpolice43.py work/modart src/police42_arts.txt [--preview out.png] [--only art,art]
# spartan: gold trim kept from the original gold parts. reaver: dark-blood veins running from the core out to the
# hull edges, plus a blood rim. kretari (High Council): the ORIGINAL colours under a dark violet mask (no exhausts).
# varn: thin cold-cyan edge line. ironclad: dark-gold rim with a dark-green inner band. helion: soft light-gold outline.
# warden: soft blue aura around the hull (baked into the transparent margin).
# Companions (_glow_l/_glow_e/_veins/_anim_0N, flagship wrecks) are made as in v42 (genpolice42), with the kretari
# hull mask applied to the High Council ones. Lossless WebP only.
import os, re, sys, zlib
import numpy as np
from PIL import Image, ImageFilter
from multiprocessing import Pool
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import genpolice42 as g

GOLD = np.array([222, 178, 70.0])
BLOOD = np.array([150, 8, 16.0])
CYAN = np.array([70, 220, 235.0])
DGOLD = np.array([185, 140, 40.0])
DGREEN = np.array([40, 120, 58.0])
LGOLD = np.array([255, 228, 150.0])
AURA = np.array([110, 170, 255.0])
VIOLET = np.array([70, 30, 110.0])
MGREEN = np.array([64, 90, 48.0])


def roster():
    src = open(os.path.join(os.path.dirname(os.path.abspath(__file__)),
                            'java/fr/testudo/spacecorsair/mod/ModPoliceData.java')).read()
    body = src[src.index('ROSTER = {'):]
    fac = {}
    for f, b in re.findall(r'//\s*(\w+)\s*\n(.*?)\}\},', body, re.S):
        for a in re.findall(r'"(\w+):\d+"', b):
            fac[a] = f
    for k in g.CAPS:
        fac['cap_' + k] = k
    return fac


def mask(a, thr=32):
    return Image.fromarray(((a > thr) * 255).astype(np.uint8), 'L')


def band(m, px):
    """1 inside the hull within px of its outline (soft)."""
    px = max(1, int(px))
    er = m.filter(ImageFilter.MinFilter(2 * px + 1))
    b = (np.asarray(m, float) - np.asarray(er, float)) / 255.0
    return np.asarray(Image.fromarray((b * 255).astype(np.uint8)).filter(ImageFilter.GaussianBlur(px * 0.35)), float) / 255.0


def mix(out, col, a, shade):
    a = np.clip(a, 0, 1)[..., None]
    c = col[None, None, :] * shade[..., None]
    return out * (1 - a) + c * a


def accent(fac, orig, pol, name):
    """orig, pol: RGBA float arrays (same size). Returns RGBA float (may add alpha outside the hull for auras)."""
    a = orig[..., 3]
    m = mask(a)
    h, w = a.shape
    S = max(h, w) / 1024.0
    L = orig[..., :3] @ g.W601
    out = pol[..., :3].copy()
    inside = (a > 32).astype(float)
    if fac == 'spartan':
        r, gg, b = orig[..., 0], orig[..., 1], orig[..., 2]
        mx = orig[..., :3].max(-1); mn = orig[..., :3].min(-1)
        sat = (mx - mn) / np.maximum(mx, 1)
        gold = (r > gg) & (gg > b) & ((gg - b) / np.maximum(r - b, 1) > 0.45) & (mx > 90)
        k = g.smooth(sat, 0.35, 0.55) * gold * inside
        out = mix(out, GOLD, k * 0.95, 0.45 + 0.75 * (L / 255.0))
    elif fac == 'reaver':
        ys, xs = np.nonzero(a > 32)
        cy, cx = ys.mean(), xs.mean()
        Y, X = np.mgrid[0:h, 0:w].astype(float)
        dy, dx = Y - cy, X - cx
        rr = np.hypot(dx, dy)
        R = np.percentile(rr[a > 32], 99)
        th = np.arctan2(dy, dx)
        rng = np.random.RandomState(zlib.crc32(name.encode()) & 0xffff)
        n = 12
        v = np.zeros_like(rr)
        for i in range(n):
            t0 = (i + rng.uniform(-0.3, 0.3)) * 2 * np.pi / n
            wob = 0.10 * np.sin(rr / R * rng.uniform(5, 9) + rng.uniform(0, 6.3))
            d = np.angle(np.exp(1j * (th - t0 - wob)))
            arc = np.abs(d) * np.maximum(rr, 1)                       # distance from the vein centre line, px
            wid = (4.0 + 9.0 * (rr / R)) * S                          # veins widen as they flow outwards
            v = np.maximum(v, g.smooth(-arc, -wid, -wid * 0.35))
        v *= g.smooth(rr / R, 0.06, 0.30)                             # start at the core
        rim = band(m, 10 * S)
        drip = band(m, 26 * S) * np.clip(v * 3, 0, 1)                 # veins pool into the edge
        k = np.clip(np.maximum(v, np.maximum(rim * 0.95, drip)), 0, 1) * inside
        out = mix(out, BLOOD, k, 0.55 + 0.7 * (L / 255.0))
    elif fac == 'kretari':
        o = orig[..., :3]
        mx = o.max(-1, keepdims=True)
        o = o * np.minimum(1.0, 150.0 / np.maximum(mx, 1))            # bright nozzles flattened: no propulsion
        out = o * 0.50 + VIOLET[None, None, :] * 0.30 * (L[..., None] / 255.0 + 0.15)
    elif fac == 'varn':
        # owner 03:38: plain white/black, mostly black (~70/30): threshold at the 70th luminance percentile
        mx = orig[..., :3].max(-1); mn = orig[..., :3].min(-1)
        paint = g.smooth((mx - mn) / np.maximum(mx, 1), 0.12, 0.30)
        thr = float(np.percentile(L[a > 32], 70)) if (a > 32).any() else 128.0
        white = 255.0 * (L / 255.0) ** 0.5
        black = 0.30 * L + 8
        tw = g.smooth(L, thr - 18, thr + 18) * (1 - 0.5 * paint)
        v = tw * white + (1 - tw) * black
        out = np.repeat(v[..., None], 3, -1)
    elif fac == 'ironclad':
        # owner 03:38: military police: dark green hull with black camo blotches (light bar added in game)
        lo, hi = np.percentile(L[a > 32], [3, 97]) if (a > 32).any() else (0, 255)
        v = 0.10 + 1.30 * np.clip((L - lo) / max(hi - lo, 1), 0, 1) ** 1.15
        out = np.clip(MGREEN[None, None, :] * v[..., None], 0, 255)
        rng = np.random.RandomState(zlib.crc32(name.encode()) & 0xffff)
        cells = 18
        nz = Image.fromarray((rng.rand(cells, cells) * 255).astype(np.uint8), 'L').resize((w, h), Image.BICUBIC)
        nz = np.asarray(nz.filter(ImageFilter.GaussianBlur(max(h, w) / cells * 0.35)), float) / 255.0
        spot = g.smooth(nz, 0.60, 0.64) * inside
        out = mix(out, np.array([18, 20, 16.0]), spot * 0.80, 0.5 + 1.0 * (L / 255.0))
    elif fac == 'helion':
        k = band(m, 7 * S) * inside
        out = mix(out, LGOLD, k * 0.65, 0.85 + 0.15 * (L / 255.0))
    res = np.concatenate([np.clip(out, 0, 255), a[..., None]], -1)
    if fac in ('helion', 'warden'):
        # soft halo outside the hull: helion a faint gold outline glow, warden a blue aura
        rad, col, op = (8 * S, LGOLD, 0.45) if fac == 'helion' else (22 * S, AURA, 0.60)
        hal = np.asarray(m.filter(ImageFilter.MaxFilter(2 * int(max(1, rad * 0.4)) + 1)).filter(ImageFilter.GaussianBlur(rad)), float) / 255.0
        ha = np.clip(hal * op * 255, 0, 255)
        ha = np.minimum(ha, 255)
        fa = a / 255.0
        A = a + ha * (1 - fa)                                         # hull over halo
        C = (res[..., :3] * fa[..., None] + col[None, None, :] * (ha * (1 - fa))[..., None] / 255.0 * 1.0) \
            / np.maximum(A[..., None] / 255.0, 1e-6)
        res = np.concatenate([np.clip(C, 0, 255), np.clip(A, 0, 255)[..., None]], -1)
    return res


def one(art, src, dst, fac):
    council = fac == 'kretari'
    s = src
    if s in g.STAGE5 and g.load(art, s + '_stage5') is not None:
        s = s + '_stage5'
    im = g.load(art, s)
    if im is None:
        return []
    orig = np.asarray(im.convert('RGBA')).astype(float)
    pol = np.asarray(g.hull(im, council)).astype(float)
    res = accent(fac, orig, pol, src)
    g.save(Image.fromarray(np.round(res).astype(np.uint8), 'RGBA'), art, dst)
    done = [dst]

    def comp_hull(i):
        if not council:
            return g.hull(i, False)
        o = np.asarray(i.convert('RGBA')).astype(float)
        r = accent('kretari', o, o, src)
        return Image.fromarray(np.round(r).astype(np.uint8), 'RGBA')
    comps = [('_glow_l', lambda i: g.glow(i, True, council)), ('_veins', comp_hull)] \
        + [('_anim_0%d' % k, comp_hull) for k in range(1, 9)]
    if not council:
        comps.append(('_glow_e', lambda i: g.glow(i, False)))
    for suf, fn in comps:
        ci = g.load(art, s + suf)
        if ci is not None:
            g.save(fn(ci), art, dst + suf); done.append(dst + suf)
    if src.startswith('cap_'):
        k = src[4:]
        for sf in ('_a', '_b', '_c'):
            wi = g.load(art, 'wreck_cap_' + k + sf)
            if wi is not None:
                o = np.asarray(wi.convert('RGBA')).astype(float)
                p = np.asarray(g.hull(wi, council)).astype(float)
                r = accent(fac if fac not in ('helion', 'warden') else 'none', o, p, src + sf)
                g.save(Image.fromarray(np.round(r).astype(np.uint8), 'RGBA'), art, 'pol_wreck_cap_' + k + sf)
                done.append('pol_wreck_cap_' + k + sf)
    return done


def job(t):
    return one(*t)


def sheet(art, fac, path):
    names = {'spartan': 'Spartan', 'reaver': 'Reavers', 'kretari': 'Kretari High Council', 'varn': 'Varn',
             'ironclad': 'Ironclad', 'helion': 'Helion', 'warden': 'Frontier Authority'}
    from PIL import ImageDraw, ImageFont
    rows = {}
    for a, f in fac.items():
        if not a.startswith('cap_'):
            rows.setdefault(f, []).append(a)
    T = 220
    order = g.CAPS
    pick = {f: (rows.get(f, [])[:2] + rows.get(f, [])[-1:] if len(rows.get(f, [])) > 2 else rows.get(f, [])) for f in order}
    ncol = 1 + 2 * max(len(v) + 1 for v in pick.values())
    im = Image.new('RGB', (ncol * T, len(order) * (T + 10)), (18, 20, 26))
    d = ImageDraw.Draw(im)
    try:
        ft = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf', 22)
    except Exception:
        ft = None
    for r, f in enumerate(order):
        y = r * (T + 10)
        d.text((10, y + T // 2 - 12), names[f], fill=(230, 230, 230), font=ft)
        arts = pick[f] + ['cap_' + f]
        for i, a in enumerate(arts):
            s = a + '_stage5' if a in g.STAGE5 and g.load(art, a + '_stage5') is not None else a
            for j, n in enumerate((s, 'pol_' + a)):
                p = g.load(art, n)
                if p is None:
                    continue
                p = p.convert('RGBA'); p.thumbnail((T - 8, T - 8), Image.LANCZOS)
                bg = Image.new('RGBA', (T, T), (18, 20, 26, 255) if j == 0 else (30, 32, 40, 255))
                bg.alpha_composite(p, ((T - p.width) // 2, (T - p.height) // 2))
                im.paste(bg.convert('RGB'), ((1 + 2 * i + j) * T, y))
    im.save(path)


def main():
    args = sys.argv[1:]
    prev = only = None
    if '--preview' in args:
        i = args.index('--preview'); prev = args[i + 1]; del args[i:i + 2]
    if '--only' in args:
        i = args.index('--only'); only = set(args[i + 1].split(',')); del args[i:i + 2]
    art, lst = args[0], args[1]
    fac = roster()
    arts = [l.strip() for l in open(lst) if l.strip() and not l.startswith('#')]
    jobs = [(art, a, 'pol_' + a, fac[a]) for a in arts if a in fac] + [(art, 'cap_' + k, 'pol_cap_' + k, k) for k in g.CAPS]
    missing = [a for a in arts if a not in fac]
    if missing:
        print('no faction:', missing)
    if only:
        jobs = [j for j in jobs if j[1] in only]
    with Pool() as pool:
        res = pool.map(job, jobs)
    print(sum(len(r) for r in res), 'files written')
    if prev:
        sheet(art, fac, prev)


if __name__ == '__main__':
    main()
