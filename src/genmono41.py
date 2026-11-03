# v41 fix: rebakes the Monolith s4/s5 shield aura and plasma wings straight from the owner-approved preview
# (spartan-handoff/monolith-heat/plasma_wings.py -> s5_plasma.mp4). The v38 in-game version rebuilt them from thin
# fx_glow strips (9 streaks per wing, a faint rim), which on the phone read as almost nothing.
#   python3 -I src/genmono41.py work/modart
# Writes greyscale masks (white RGB, mask in alpha; ModArt uploads mfx_* as GL_ALPHA) into work/modart:
#   mfx_mono_plasma_core/_white/_glow : 6x3 flipbooks (18 frames, 1.8 s loop) of the left wing's plasma, wing-local,
#       the preview's own layers: core = clip(1.2 c), white = clip(c - .55) * 1.5, glow = clip(1.6 gl) (+ trailing-edge line)
#   mfx_mono_aura_<part>_a / _ai : 5x4 atlases (rows = speed level 0 / .5 / 1, columns = noise phase, 6 per loop)
#       of the preview aura: A = clip(1.15 I), and A * I. In game: edge colour x A + (core - edge) x A*I, additive,
#       which is the preview's col * A (col = core * I + edge * (1 - I)).
# and src/java/.../ModMonoFx.java with the atlas geometry.
import os, sys
import numpy as np
from PIL import Image, ImageDraw, ImageFilter
from scipy import ndimage

ART = sys.argv[1]
HERE = os.path.dirname(os.path.abspath(__file__))


def load(n):
    return np.asarray(Image.open(os.path.join(ART, n + '.webp')).convert('RGBA')).astype(float)


def save_mask(m, n):
    """mask 0..1 -> RGBA webp, white RGB, mask in alpha (lossless)."""
    a = np.clip(m * 255 + 0.5, 0, 255).astype(np.uint8)
    rgba = np.dstack([np.full_like(a, 255)] * 3 + [a])
    Image.fromarray(rgba, 'RGBA').save(os.path.join(ART, n + '.webp'), 'WEBP', lossless=True, quality=100, method=6, exact=True)


def down(m, size):
    """area-average a 0..1 float mask to size (w, h)."""
    im = Image.fromarray((np.clip(m, 0, 1) * 65535).astype(np.uint16).astype(np.int32), 'I')
    return np.asarray(im.resize(size, Image.BOX)).astype(float) / 65535


wing = load('monolith_stage5_wingL')
PIV = (323.7, 299.1)

# ------------------------------------------------------------------ plasma flipbook (preview plasma(), g = 1)
_wm = wing[..., 3] > 64
def _inner(y): return int(np.where(_wm[y])[0].max()) - 8
_TE = [(325, 782)] + [(_inner(y), y) for y in (690, 600, 505, 410)]
_PH = [18, 40, 58, 72, 84]; _LN = [380, 360, 330, 300, 260]
_r = np.random.default_rng(11); NS = 34
_S = [(j / (NS - 1) + _r.uniform(-.01, .01), _r.uniform(-7, 7), _r.uniform(.55, 1.05), _r.uniform(0, 6.28)) for j in range(NS)]
def _interp(arr, u):
    k = min(int(u * (len(arr) - 1)), len(arr) - 2); f = u * (len(arr) - 1) - k
    a, b = np.array(arr[k], float), np.array(arr[k + 1], float); return a * (1 - f) + b * f

NF, LOOP = 18, 1.8            # preview rates snapped to a 1.8 s loop: wobble 3.2 -> 3.49 rad/s, pulse 1.1 -> 1.11 Hz, sparks .55 -> .556
W_RATE, P_RATE, S_RATE = 2 * np.pi / LOOP, 2 / LOOP, 1 / LOOP
# preview canvas: wing-local x -512..1535, y 0..1023 (the preview clips the streaks at y 1024; kept)
PX0, PX1, PY0, PY1 = 200, 1000, 330, 1024     # crop window (checked below to hold every lit pixel)
PS = 0.375                                    # texels per sprite px (the preview's output is 0.3125)

def plasma_frame(t):
    W2, H2, OX = 2048, 1024, 512
    core = Image.new('L', (W2, H2)); glow = Image.new('L', (W2, H2)); dc = ImageDraw.Draw(core); dg = ImageDraw.Draw(glow)
    g = 1.0
    for j, (u, jit, lf, ph) in enumerate(_S):
        u = min(max(u, 0), 1); bx, by = _interp(_TE, u); phi = np.radians(float(_interp([[p] for p in _PH], u)[0]) + jit)
        L_ = float(_interp([[l] for l in _LN], u)[0]) * lf * g; dx, dy = np.sin(phi), np.cos(phi); nx, ny = dy, -dx
        prev = None; N = 22
        for k in range(N + 1):
            sfrac = k / N; s_ = sfrac * L_
            wob = 7 * np.sin(s_ / 38 - t * W_RATE + ph) * sfrac
            p = (bx + OX + dx * s_ + nx * wob, by + dy * s_ + ny * wob)
            if prev is not None:
                fade = (1 - sfrac) ** 0.8; pulse = 0.78 + 0.22 * np.sin(2 * np.pi * (s_ / 90 - t * P_RATE) + ph)
                I = int(255 * fade * pulse * min(g * 1.4, 1))
                dc.line([prev, p], fill=I, width=4); dg.line([prev, p], fill=I, width=24)
            prev = p
        for q in range(2):
            sp = ((t * S_RATE + ph / 6.28 + q * 0.5) % 1.0); s_ = sp * L_ * 1.1
            p = (bx + OX + dx * s_ + nx * 9 * np.sin(ph + q), by + dy * s_ + ny * 9 * np.sin(ph + q)); r_ = 2.2
            dc.ellipse([p[0] - r_, p[1] - r_, p[0] + r_, p[1] + r_], fill=int(255 * (1 - sp) * g))
    c = np.array(core.filter(ImageFilter.GaussianBlur(1.2))).astype(float) / 255
    dg.line([(x + OX, y) for x, y in _TE], fill=int(255 * g), width=18)
    gl = np.array(glow.filter(ImageFilter.GaussianBlur(12))).astype(float) / 255
    sl = (slice(PY0, PY1), slice(PX0 + OX, PX1 + OX))
    # sanity: nothing lit outside the crop
    lit = (c > 0.01) | (gl > 0.01)
    inside = np.zeros_like(lit); inside[sl] = True
    assert not (lit & ~inside).any(), 'plasma crop too small'
    return np.clip(c[sl] * 1.2, 0, 1), np.clip(c[sl] - 0.55, 0, 1) * 1.5, np.clip(gl[sl] * 1.6, 0, 1)

pw, ph_ = int(round((PX1 - PX0) * PS)), int(round((PY1 - PY0) * PS))
COLS, ROWS = 6, 3
PAW, PAH = 2048, 1024                          # power-of-two atlas (mipmaps); tiles from the top-left
assert pw * COLS <= PAW and ph_ * ROWS <= PAH
atl = {k: np.zeros((PAH, PAW)) for k in ('core', 'white', 'glow')}
for f in range(NF):
    layers = plasma_frame(f * LOOP / NF)
    cx, cy = (f % COLS) * pw, (f // COLS) * ph_
    for k, m in zip(('core', 'white', 'glow'), layers):
        atl[k][cy:cy + ph_, cx:cx + pw] = down(m, (pw, ph_))
for k, m in atl.items():
    save_mask(m, 'mfx_mono_plasma_' + k)
print('plasma tile', pw, ph_)

# ------------------------------------------------------------------ aura atlases (preview aura, per part)
rng = np.random.default_rng(3)
WV = [(rng.integers(2, 7), rng.integers(1, 4), rng.random() * 6.283, rng.choice([1, 1, 2, -1])) for _ in range(14)]
CAN, PAD, AT = 1280, 128, 400            # canvas = sprite + 128 px each side; tile 400 px = the preview's 0.3125 scale
LEVELS = (0.0, 0.5, 1.0); NA = 6         # noise phases per 2 pi (one 6.5 s breathing loop in game)
ACOLS = 5                                # 18 tiles in a 5 x 4 grid (2000 x 1600 inside a 2048 x 2048 atlas)
ASZ = 2048
# fade the last 16 texels of each aura tile to zero (no square edge where the far glow reaches the tile border)
_e = np.clip(np.minimum(np.arange(AT), np.arange(AT)[::-1]) / 16.0, 0, 1)
EDGEWIN = np.minimum.outer(_e, _e)

def aura_part(spr, wing_open):
    a = np.zeros((CAN, CAN), bool); a[PAD:PAD + 1024, PAD:PAD + 1024] = spr[..., 3] > 40
    a = ndimage.binary_opening(a, iterations=1)
    d = ndimage.distance_transform_edt(~a) / 2.0          # preview distances are half-res px
    Yl, Xl = np.mgrid[:CAN, :CAN].astype(float); Yl -= PAD; Xl -= PAD
    if wing_open:                                         # preview canvas coords of the left wing opened to 80 deg
        r = np.radians(80); dx, dy = Xl - PIV[0], Yl - PIV[1]
        Xc = PIV[0] + dx * np.cos(r) - dy * np.sin(r); Yc = PIV[1] + dx * np.sin(r) + dy * np.cos(r)
    else:
        Xc, Yc = Xl, Yl
    Xh, Yh = (Xc + 512) / 2, Yc / 2                       # preview half-res canvas (hull at OX = 512)
    hh = 512.0
    out = []
    for v in LEVELS:
        for k in range(NA):
            p = 2 * np.pi * k / NA
            n = sum(np.sin(2 * np.pi * (kx * Xh / hh * 3 + ky * Yh / hh * 1.2) + ph - q * p) for kx, ky, ph, q in WV)
            n = (n / len(WV) * 1.6 + 1) / 2
            reach = 10 + 5 * v + ((Yc / 1024.0) ** 2) * 20 * v
            out_ = ~a
            shell = np.exp(-d / reach) * out_
            I = np.clip(np.clip((shell * (0.45 + 0.9 * n) - 0.30) * 1.8, 0, 1) + np.exp(-d / (reach * 1.5)) * out_ * 0.28
                        + np.exp(-((d - 2) ** 2) / 3) * out_ * 0.8, 0, 1)
            A = np.clip(I * 1.15, 0, 1)
            ta, tai = down(A, (AT, AT)), down(A * I, (AT, AT))
            out.append((ta * EDGEWIN, tai * EDGEWIN))
    return out

def aura_atlas(spr, name, wing_open=False):
    tiles = aura_part(spr, wing_open)
    for j, kind in enumerate(('a', 'ai')):
        m = np.zeros((ASZ, ASZ))
        for i, tl in enumerate(tiles):
            cx, cy = (i % ACOLS) * AT, (i // ACOLS) * AT
            m[cy:cy + AT, cx:cx + AT] = tl[j]
        save_mask(m, 'mfx_mono_aura_%s_%s' % (name, kind))
    print('aura', name)

aura_atlas(load('monolith_stage5_hull'), 'hull')
aura_atlas(wing, 'wing', True)
aura_atlas(load('monolith_stage4'), 's4')

java = '''package fr.testudo.spacecorsair.mod;

/** Generated by src/genmono41.py (v41 fix): atlas geometry of the baked Monolith plasma and aura masks. */
final class ModMonoFx {
    private ModMonoFx() {}

    /** Plasma flipbook: NF frames in COLS x ROWS tiles of TW x TH texels, LOOP_MS per loop; tile = wing-local px X0..X1, Y0..Y1. */
    static final int P_NF = %d, P_COLS = %d, P_ROWS = %d, P_LOOP_MS = %d;
    static final float P_TU = %d / 2048.0f, P_TV = %d / 1024.0f;
    static final float P_X0 = %d, P_X1 = %d, P_Y0 = %d, P_Y1 = %d;
    /** Aura atlases: tile AT texels of ASZ, ACOLS per row; tile i = level * NA + phase; canvas = sprite + PAD px a side. */
    static final int A_LEVELS = %d, A_NA = %d, A_COLS = %d;
    static final float A_TILE = %d / %d.0f, A_PAD = %d / 1024.0f;
}
''' % (NF, COLS, ROWS, int(LOOP * 1000), pw, ph_, PX0, PX1, PY0, PY1, len(LEVELS), NA, ACOLS, AT, ASZ, PAD)
open(os.path.join(HERE, 'java/fr/testudo/spacecorsair/mod/ModMonoFx.java'), 'w').write(java)
print('ok')
