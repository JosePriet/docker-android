# v43: offline preview of ModPoliceAura (same math as the Java) -> MP4.
#   python3 -I src/previewpoliceaura43.py work/modart out.mp4
# Each tile: one police hull, still, its animated aura + light bar, drawn like the game (aura under, hull, lights over).
import os, re, sys, math, subprocess, random
import numpy as np
from PIL import Image

ART = sys.argv[1]
OUT = sys.argv[2]
TILE = 480
SHIP = 330.0           # drawn hull size in px
PAD = 0.18
FPS = 30
SECS = 6
SHIPS = [('hornet', 'spartan', 200), ('monolith', 'spartan', 600), ('warlord', 'reaver', 400), ('cap_reaver', 'reaver', 1500),
         ('harbinger', 'kretari', 420), ('aurora', 'helion', 150), ('seraph', 'warden', 140), ('cobalt', 'varn', 190),
         ('tempest', 'ironclad', 600)]
LIGHTS = {'spartan', 'reaver', 'helion', 'warden', 'varn', 'ironclad'}

edges_src = open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'java/fr/testudo/spacecorsair/mod/ModPoliceEdges.java')).read()
EDGES = {m.group(1): [float(v) for v in m.group(2).replace('f', '').split(',')]
         for m in re.finditer(r'E\.put\("(\w+)", new float\[\] \{([^}]*)\}\);', edges_src)}


def rgba(n):
    return np.asarray(Image.open(os.path.join(ART, n + '.webp')).convert('RGBA')).astype(np.float32) / 255.0


TEX = {k: rgba(k) for k in ('fx_core', 'fx_glow', 'fx_smoke', 'fx_spark', 'fx_fire')}
DROP = rgba('polfx_drop')
DROPS = [DROP[(k // 2) * 64:(k // 2) * 64 + 64, (k % 2) * 64:(k % 2) * 64 + 64] for k in range(4)]
cache = {}


def scaled(arr, w, h, rot=0.0):
    key = (id(arr), int(w), int(h), int(rot) // 6)
    if key in cache:
        return cache[key]
    im = Image.fromarray((arr * 255).astype(np.uint8), 'RGBA').resize((max(1, int(w)), max(1, int(h))), Image.BILINEAR)
    if rot:
        im = im.rotate(-(int(rot) // 6) * 6, expand=True, resample=Image.BILINEAR)
    a = np.asarray(im).astype(np.float32) / 255.0
    if len(cache) > 6000:
        cache.clear()
    cache[key] = a
    return a


def blit(dst, src, cx, cy, col, alpha, add, flat=False):
    h, w = src.shape[:2]
    x0, y0 = int(round(cx - w / 2)), int(round(cy - h / 2))
    X0, Y0 = max(0, x0), max(0, y0)
    X1, Y1 = min(dst.shape[1], x0 + w), min(dst.shape[0], y0 + h)
    if X1 <= X0 or Y1 <= Y0:
        return
    s = src[Y0 - y0:Y1 - y0, X0 - x0:X1 - x0]
    a = s[..., 3:4] * min(1.0, alpha)
    c = np.array(col, np.float32)[None, None, :] * (1.0 if flat else s[..., :3])
    d = dst[Y0:Y1, X0:X1]
    if add:
        d += c * a
    else:
        d[:] = d * (1 - a) + c * a


class Ship:
    def __init__(self, art, fac, world):
        self.art, self.fac = art, fac
        self.k = SHIP / world               # px per world unit
        self.size = world
        self.mask = None
        if fac in ('spartan', 'reaver', 'kretari', 'helion', 'warden'):
            self.mask = np.asarray(Image.open(os.path.join(ART, 'mfx_pa_' + art + '.webp')).convert('RGBA')).astype(np.float32) / 255.0
        self.hull = rgba('pol_' + art)
        self.next = 0
        self.parts = []

    def halo(self, img, k, ox, oy, r, g, b, al, add):
        if self.mask is None or al <= 0.004:
            return
        q = SHIP * (1 + 2 * PAD) * k
        blit(img, scaled(self.mask, q, q), TILE / 2 + ox * SHIP, TILE / 2 + oy * SHIP, (min(1, r), min(1, g), min(1, b)), al, add, flat=True)

    def edge(self):
        p = EDGES.get(self.art)
        i = random.randrange(len(p) // 2)
        lx, ly = p[2 * i] * SHIP, p[2 * i + 1] * SHIP
        d = max(1.0, math.hypot(lx, ly))
        return TILE / 2 + lx, TILE / 2 + ly, lx / d, ly / d

    def spawn(self, t, x, y, vx, vy, life, s0, s1, col, a, add, drag, stretch):
        self.parts.append(dict(t=t, x=x, y=y, vx=vx, vy=vy, life=life, max=life, s0=s0, s1=s1, col=col, a=a, add=add,
                               drag=drag, st=stretch, rot=random.uniform(0, 360), vr=random.uniform(-25, 25), tile=random.randrange(4)))

    def step(self, img, now_ms):
        t = (now_ms % 600000) / 1000.0
        S = SHIP
        emit = now_ms >= self.next
        f = self.fac
        sin = math.sin
        if f == 'spartan':
            for i in range(3):
                fl = 0.70 + 0.30 * sin(t * 9 + i * 1.7) * sin(t * 3.1 + i)
                k = 1.0 + 0.025 * i + 0.008 * sin(t * 6 + i)
                self.halo(img, k, 0.005 * sin(t * 11 + i * 2), 0.018 * i + 0.008 * sin(t * 7 + i), 1, 0.78, 0.37, 0.27 * fl, True)
            self.halo(img, 0.985, 0, 0, 0.43, 0.67, 1, 0.16 + 0.04 * sin(t * 2.3), True)
            if emit:
                self.next = now_ms + 70
                ex, ey, nx, ny = self.edge()
                blue = random.random() < 0.3
                v = S * 0.22
                self.spawn('core', ex, ey, nx * S * 0.05, v + ny * S * 0.05, 750, S * 0.04, S * 0.010,
                           (0.45, 0.68, 1) if blue else (1, 0.8, 0.4), 0.80, True, 0.6, 0.25)
        elif f == 'reaver':
            for i in range(3):
                fl = 0.75 + 0.25 * sin(t * 8 + i * 2.1)
                k = 1.0 + 0.045 * i + 0.015 * sin(t * 5 + i)
                self.halo(img, k, 0.006 * sin(t * 9 + i), 0.03 * i + 0.01 * sin(t * 6.3 + i), 0.20, 0.01, 0.03, 0.60 * fl, False)
                self.halo(img, k, 0, 0.03 * i + 0.01 * sin(t * 6.3 + i), 0.35, 0.02, 0.03, 0.05 * fl, True)
            beat = (t % 1.1) / 1.1
            hb = math.exp(-((beat - 0.05) / 0.05) ** 2) + 0.6 * math.exp(-((beat - 0.22) / 0.05) ** 2)
            self.halo(img, 0.99, 0, 0, 0.75, 0.05, 0.06, 0.10 + 0.22 * hb, True)
            if emit:
                self.next = now_ms + 40
                ex, ey, nx, ny = self.edge()
                rr = random.random()
                if rr < 0.40:
                    v = S * (0.20 + random.random() * 0.10)
                    self.spawn('fire', ex, ey, nx * S * 0.12, v + ny * S * 0.12, 700, S * 0.09, S * 0.15, (0.85, 0.07, 0.06), 0.75, True, 0.3, 0.8)
                elif rr < 0.70:
                    v = S * 0.16
                    self.spawn('smoke', ex, ey, nx * S * 0.09, v + ny * S * 0.09, 1100, S * 0.08, S * 0.15, (0.16, 0.0, 0.02), 0.75, False, 0.4, 0.35)
                else:
                    v = S * (0.05 + random.random() * 0.06)
                    sz = S * (0.03 + random.random() * 0.035)
                    self.spawn('drop', ex, ey, nx * v, ny * v + S * 0.02, 1800, sz, sz * 0.8, (0.58, 0.03, 0.06), 1.0, False, 0.9, 0)
        elif f == 'helion':
            sh = 0.80 + 0.20 * sin(t * 2.1)
            self.halo(img, 0.975, 0, 0, 1, 0.89, 0.59, 0.30 * sh, True)
            if emit:
                self.next = now_ms + 260
                ex, ey, nx, ny = self.edge()
                self.spawn('spark', ex, ey, nx * S * 0.01, ny * S * 0.01, 650, S * 0.05, S * 0.01, (1, 0.92, 0.65), 0.75, True, 0, 0)
        elif f == 'warden':
            br = 0.85 + 0.15 * sin(2 * math.pi * t / 2.4)
            self.halo(img, 1.0 + 0.015 * sin(2 * math.pi * t / 2.4), 0, 0, 0.43, 0.67, 1, 0.50 * br, True)
            p = (t % 2.4) / 2.4
            self.halo(img, 1.0 + 0.13 * p, 0, 0, 0.5, 0.75, 1, 0.30 * (1 - p) ** 2, True)
        elif f == 'kretari':
            br = 0.85 + 0.15 * sin(t * 1.3)
            self.halo(img, 1.02 + 0.02 * sin(t * 0.9), 0, 0.01, 0.10, 0.03, 0.16, 0.50 * br, False)
            self.halo(img, 1.0, 0, 0, 0.40, 0.18, 0.65, 0.20 * br, True)
            if emit:
                self.next = now_ms + 180
                ex, ey, nx, ny = self.edge()
                self.spawn('glow', ex, ey, nx * S * 0.03, ny * S * 0.03, 1600, S * 0.04, S * 0.07, (0.45, 0.2, 0.7), 0.45, True, 0.5, 0)

    def particles(self, img, dt_ms):
        dt = dt_ms / 1000.0
        keep = []
        for p in self.parts:
            p['life'] -= dt_ms
            if p['life'] <= 0:
                continue
            if p['drag'] > 0:
                k = max(0, 1 - p['drag'] * dt); p['vx'] *= k; p['vy'] *= k
            p['x'] += p['vx'] * dt; p['y'] += p['vy'] * dt; p['rot'] += p['vr'] * dt
            keep.append(p)
        self.parts = keep
        for p in self.parts:
            tt = 1 - p['life'] / p['max']
            s = p['s0'] + (p['s1'] - p['s0']) * tt
            a = p['a'] * (tt / 0.15 if tt < 0.15 else (1 - tt) / 0.85)
            w = h = s; rot = p['rot']
            if p['st'] > 0:
                h = s + math.hypot(p['vx'], p['vy']) * p['st']
                rot = math.degrees(math.atan2(p['vy'], p['vx'])) - 90
            src = DROPS[p['tile']] if p['t'] == 'drop' else TEX['fx_' + p['t']]
            blit(img, scaled(src, w, h, rot), p['x'], p['y'], p['col'], a, p['add'])

    def lights(self, img, now_ms):
        if self.fac not in LIGHTS:
            return
        t = now_ms % 1200
        red = t < 600
        on = (t % 300) < 200
        w = max(40 * self.k, SHIP * 0.22)
        core = scaled(TEX['fx_core'], w, w)
        blit(img, core, TILE / 2 - SHIP * 0.12, TILE / 2 - SHIP * 0.05, (1, 0.1, 0.08), 1 if red and on else 0.12, True)
        blit(img, core, TILE / 2 + SHIP * 0.12, TILE / 2 - SHIP * 0.05, (0.12, 0.35, 1), 1 if (not red) and on else 0.12, True)


def main():
    random.seed(3)
    ships = [Ship(*s) for s in SHIPS]
    cols = 3
    rows = (len(ships) + cols - 1) // cols
    W, H = cols * TILE, rows * TILE
    hulls = [scaled(s.hull, SHIP, SHIP) for s in ships]
    rng = np.random.RandomState(1)
    bg = np.zeros((TILE, TILE, 3), np.float32) + np.array([0.03, 0.035, 0.05], np.float32)
    for _ in range(90):
        x, y = rng.randint(0, TILE, 2); bg[y, x] = rng.uniform(0.3, 0.8)
    proc = subprocess.Popen(['ffmpeg', '-y', '-loglevel', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', '%dx%d' % (W, H),
                             '-r', str(FPS), '-i', '-', '-c:v', 'libx264', '-pix_fmt', 'yuv420p', '-crf', '20', OUT], stdin=subprocess.PIPE)
    dt = 1000.0 / FPS
    for fr in range(-FPS, FPS * SECS):        # one second of warm-up so particles are flowing
        now = 1000000 + fr * dt
        frame = np.zeros((H, W, 3), np.float32)
        for i, s in enumerate(ships):
            img = bg.copy()
            s.step(img, now)
            s.particles(img, dt)
            blit(img, hulls[i], TILE / 2, TILE / 2, (1, 1, 1), 1, False)
            s.lights(img, now)
            r, c = divmod(i, cols)
            frame[r * TILE:(r + 1) * TILE, c * TILE:(c + 1) * TILE] = np.clip(img, 0, 1)
        if fr >= 0:
            proc.stdin.write((frame * 255).astype(np.uint8).tobytes())
            if fr == FPS * 2:
                Image.fromarray((frame * 255).astype(np.uint8)).save(OUT.replace('.mp4', '_still.png'))
    proc.stdin.close(); proc.wait()


if __name__ == '__main__':
    main()
