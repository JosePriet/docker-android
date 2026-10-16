# v17 effect / weapon sprites for the capital-ship pass. Output: work/modart/*.png
# Effect textures are white (tinted at draw time) with soft alpha; weapons are pixel art in the mod's style.
import math, os, random, sys
import numpy as np
from PIL import Image, ImageDraw, ImageFilter

OUT = sys.argv[1] if len(sys.argv) > 1 else 'work/modart'
os.makedirs(OUT, exist_ok=True)
rng = np.random.default_rng(7)


def save(name, arr):
    Image.fromarray(np.clip(arr, 0, 255).astype(np.uint8), 'RGBA').save(os.path.join(OUT, name + '.png'))


def white(alpha):
    h, w = alpha.shape
    a = np.zeros((h, w, 4), np.float32)
    a[..., :3] = 255
    a[..., 3] = np.clip(alpha, 0, 1) * 255
    return a


def grid(n):
    y, x = np.mgrid[0:n, 0:n].astype(np.float32)
    c = (n - 1) / 2.0
    return (x - c) / c, (y - c) / c


def noise(n, scale, seed):
    r = np.random.default_rng(seed)
    small = r.random((max(2, n // scale), max(2, n // scale))).astype(np.float32)
    return np.asarray(Image.fromarray((small * 255).astype(np.uint8)).resize((n, n), Image.BICUBIC), np.float32) / 255.0


N = 128
x, y = grid(N)
r = np.sqrt(x * x + y * y)

# soft round glow
save('fx_glow', white(np.clip(1 - r, 0, 1) ** 2.2))
# hard-cored glow (bright core, wide falloff) for muzzle flashes and lights
save('fx_core', white(np.clip(1 - r, 0, 1) ** 4 + 0.6 * np.clip(1 - r * 3, 0, 1)))
# thin ring
save('fx_ring', white(np.exp(-((r - 0.82) / 0.06) ** 2)))
# thick noisy shock ring
nz = noise(N, 8, 3)
save('fx_shock', white(np.exp(-((r - 0.75) / 0.14) ** 2) * (0.55 + 0.45 * nz)))
# smoke puff: noisy soft blob
nz2 = noise(N, 6, 11) * 0.6 + noise(N, 16, 12) * 0.4
save('fx_smoke', white(np.clip(1 - r, 0, 1) ** 1.4 * (0.35 + 0.65 * nz2)))
# fire puff: brighter core, ragged edge
nz3 = noise(N, 10, 21)
save('fx_fire', white(np.clip((1 - r) * (0.75 + 0.5 * nz3) - 0.1, 0, 1) ** 1.3))
# spark: 4-point star
star = np.clip(1 - np.abs(x) * 9, 0, 1) * np.clip(1 - np.abs(y), 0, 1) + np.clip(1 - np.abs(y) * 9, 0, 1) * np.clip(1 - np.abs(x), 0, 1)
save('fx_spark', white(np.clip(star + np.clip(1 - r * 2.5, 0, 1), 0, 1)))
# repair nanite: small plus with glow
plus = (np.abs(x) < 0.16) * (np.abs(y) < 0.62) + (np.abs(y) < 0.16) * (np.abs(x) < 0.62)
save('fx_plus', white(np.clip(plus.astype(np.float32) * 0.95 + np.clip(1 - r, 0, 1) ** 3 * 0.5, 0, 1)))
# hex shield bubble: hex lattice inside a disc, brighter rim
hx = np.zeros_like(r)
s = 0.16
for k in range(3):
    ang = k * math.pi / 3
    u = x * math.cos(ang) + y * math.sin(ang)
    hx = np.maximum(hx, np.exp(-((((u / s) + 0.5) % 1.0 - 0.5) / 0.06) ** 2))
disc = np.clip((1 - r) * 12, 0, 1)
save('fx_hex', white(disc * (0.18 * hx + 0.85 * np.exp(-((r - 0.93) / 0.05) ** 2) + 0.06)))
# flame plume (points down: nozzle at top, tail at bottom). Width narrows towards the tail.
fy = (y + 1) / 2  # 0 at nozzle, 1 at tail
width = 0.55 * (1 - fy) ** 0.7 + 0.04
core = np.clip(1 - np.abs(x) / np.maximum(width, 1e-3), 0, 1)
fl = core ** 1.2 * np.clip(1 - fy, 0, 1) ** 0.9 * (0.8 + 0.2 * noise(N, 12, 31))
save('fx_flame', white(fl))
# beam strip: soft across (x), flat along (y)
beam = np.exp(-(x / 0.42) ** 2) * np.clip((1 - np.abs(y)) * 8, 0, 1)
save('fx_beam', white(beam))
# beam core: narrow hot line
save('fx_beamcore', white(np.exp(-(x / 0.12) ** 2) * np.clip((1 - np.abs(y)) * 8, 0, 1)))
# heavy bolt: elongated capsule pointing up
bolt = np.clip(1 - np.sqrt((x / 0.32) ** 2 + (y / 0.95) ** 2), 0, 1)
save('fx_bolt', white(np.clip(bolt ** 0.8 * 1.3, 0, 1)))
# flare streak (horizontal lens streak)
save('fx_streak', white(np.exp(-(y / 0.05) ** 2) * np.clip(1 - np.abs(x), 0, 1) ** 2 + np.clip(1 - r * 4, 0, 1)))

# scorch decal: dark burnt patch with rough edge and ember specks (not tinted: real colours)
nzs = noise(N, 7, 41) * 0.7 + noise(N, 20, 42) * 0.3
edge = np.clip((0.9 - r + (nzs - 0.5) * 0.6) * 3, 0, 1)
sc = np.zeros((N, N, 4), np.float32)
sc[..., 0] = 26 + 30 * nzs
sc[..., 1] = 20 + 18 * nzs
sc[..., 2] = 18 + 10 * nzs
sc[..., 3] = edge * (0.55 + 0.35 * nzs) * 255
ember = (rng.random((N, N)) > 0.992) & (edge > 0.6)
emb = np.asarray(Image.fromarray((ember * 255).astype(np.uint8)).filter(ImageFilter.MaxFilter(3)), np.float32) / 255
sc[..., 0] = np.maximum(sc[..., 0], emb * 255)
sc[..., 1] = np.maximum(sc[..., 1], emb * 120)
sc[..., 3] = np.maximum(sc[..., 3], emb * 230)
save('fx_scorch', sc)
# hull crack decal: jagged dark fissure with hot glowing centre line
crack = Image.new('RGBA', (N, N), (0, 0, 0, 0))
d = ImageDraw.Draw(crack)
random.seed(5)
for branch in range(4):
    px, py = N / 2, N / 2
    ang = branch * math.pi / 2 + random.uniform(-0.6, 0.6)
    for step in range(9):
        ang += random.uniform(-0.7, 0.7)
        nx, ny = px + math.cos(ang) * 7, py + math.sin(ang) * 7
        w = max(1, 6 - step // 2)
        d.line([(px, py), (nx, ny)], fill=(18, 14, 12, 235), width=w + 3)
        d.line([(px, py), (nx, ny)], fill=(255, 120, 40, 255), width=max(1, w - 2))
        px, py = nx, ny
save('fx_crack', np.asarray(crack.filter(ImageFilter.GaussianBlur(0.6)), np.float32))


# ---------------------------------------------------------------- pixel-art weapons (32x32 grid -> 64 or 128 px)
def px_sprite(size, draw_fn, scale):
    im = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    draw_fn(ImageDraw.Draw(im))
    return im.resize((size * scale, size * scale), Image.NEAREST)


def outline(im, col=(10, 10, 14, 255)):
    a = np.asarray(im)[..., 3] > 0
    grown = np.asarray(Image.fromarray((a * 255).astype(np.uint8)).filter(ImageFilter.MaxFilter(3))) > 0
    out = np.asarray(im).copy()
    ring = grown & ~a
    out[ring] = col
    return Image.fromarray(out, 'RGBA')


def turret_leviathan(d):
    # gunmetal round mount, gold ring, three long barrels with blue-white capacitor coils
    d.ellipse([5, 11, 26, 30], fill=(58, 62, 70, 255))
    d.ellipse([7, 13, 24, 28], fill=(78, 84, 94, 255))
    d.ellipse([5, 11, 26, 30], outline=(196, 160, 82, 255))
    for bx in (10, 15, 20):
        d.rectangle([bx, 1, bx + 1, 17], fill=(44, 47, 54, 255))
        d.rectangle([bx, 1, bx + 1, 2], fill=(150, 156, 168, 255))
        d.rectangle([bx, 8, bx + 1, 9], fill=(140, 220, 255, 255))
        d.rectangle([bx, 12, bx + 1, 13], fill=(200, 245, 255, 255))
    d.rectangle([9, 16, 22, 19], fill=(66, 70, 80, 255))
    d.rectangle([11, 21, 20, 25], fill=(36, 38, 44, 255))
    d.rectangle([13, 22, 18, 24], fill=(120, 210, 255, 255))
    d.point([(8, 22), (23, 22)], fill=(196, 160, 82, 255))


def turret_throne(d):
    # rust-red angular housing, two short massive barrels, furnace vents
    d.polygon([(6, 13), (10, 9), (21, 9), (25, 13), (25, 27), (21, 30), (10, 30), (6, 27)], fill=(122, 48, 34, 255))
    d.polygon([(8, 14), (11, 11), (20, 11), (23, 14), (23, 26), (20, 28), (11, 28), (8, 26)], fill=(150, 62, 42, 255))
    for bx in (10, 18):
        d.rectangle([bx, 0, bx + 3, 13], fill=(40, 34, 32, 255))
        d.rectangle([bx, 0, bx + 3, 1], fill=(90, 80, 74, 255))
        d.rectangle([bx + 1, 3, bx + 2, 4], fill=(255, 140, 50, 255))
    for vy in (16, 19, 22):
        d.rectangle([11, vy, 20, vy], fill=(255, 160, 60, 255))
    d.rectangle([14, 24, 17, 26], fill=(255, 210, 120, 255))
    d.point([(7, 20), (24, 20)], fill=(212, 172, 90, 255))


def turret_dev2(d):
    # X-0: green twin-prong emitter with charge crystal
    d.polygon([(6, 14), (11, 9), (20, 9), (25, 14), (25, 26), (20, 30), (11, 30), (6, 26)], fill=(22, 70, 40, 255))
    d.polygon([(8, 15), (12, 11), (19, 11), (23, 15), (23, 25), (19, 28), (12, 28), (8, 25)], fill=(34, 110, 60, 255))
    d.polygon([(9, 12), (11, 1), (13, 1), (13, 12)], fill=(30, 90, 52, 255))
    d.polygon([(18, 12), (18, 1), (20, 1), (22, 12)], fill=(30, 90, 52, 255))
    d.rectangle([11, 0, 12, 1], fill=(170, 255, 190, 255))
    d.rectangle([19, 0, 20, 1], fill=(170, 255, 190, 255))
    d.polygon([(15, 13), (17, 15), (15, 21), (13, 15)], fill=(120, 255, 150, 255))
    d.point([(15, 16)], fill=(235, 255, 240, 255))
    for vy in (23, 25):
        d.rectangle([11, vy, 20, vy], fill=(90, 230, 120, 255))


for name, fn in (('turret_leviathan', turret_leviathan), ('turret_throne', turret_throne), ('turret_dev2', turret_dev2)):
    outline(px_sprite(32, fn, 4)).save(os.path.join(OUT, name + '.png'))


def missile_leviathan(d):
    # long gunmetal torpedo, blue warhead glow, gold fins (nose up)
    d.rectangle([14, 4, 17, 26], fill=(70, 76, 88, 255))
    d.rectangle([15, 4, 16, 26], fill=(104, 112, 126, 255))
    d.polygon([(14, 4), (15, 1), (16, 1), (17, 4)], fill=(150, 225, 255, 255))
    d.rectangle([14, 8, 17, 9], fill=(120, 210, 255, 255))
    d.polygon([(14, 21), (10, 28), (14, 27)], fill=(196, 160, 82, 255))
    d.polygon([(17, 21), (21, 28), (17, 27)], fill=(196, 160, 82, 255))
    d.rectangle([14, 27, 17, 29], fill=(40, 42, 48, 255))


def missile_throne(d):
    # stubby rust-red siege rocket, glowing seams, spiked nose
    d.rectangle([13, 6, 18, 25], fill=(130, 52, 36, 255))
    d.rectangle([15, 6, 16, 25], fill=(160, 70, 46, 255))
    d.polygon([(13, 6), (15, 0), (16, 0), (18, 6)], fill=(60, 50, 46, 255))
    for sy in (10, 15, 20):
        d.rectangle([13, sy, 18, sy], fill=(255, 150, 60, 255))
    d.polygon([(13, 19), (9, 27), (13, 25)], fill=(60, 50, 46, 255))
    d.polygon([(18, 19), (22, 27), (18, 25)], fill=(60, 50, 46, 255))
    d.rectangle([13, 26, 18, 28], fill=(40, 34, 32, 255))


def missile_dev2(d):
    d.rectangle([14, 4, 17, 26], fill=(26, 90, 50, 255))
    d.rectangle([15, 4, 16, 26], fill=(40, 140, 72, 255))
    d.polygon([(14, 4), (15, 0), (16, 0), (17, 4)], fill=(190, 255, 205, 255))
    d.rectangle([14, 9, 17, 10], fill=(120, 255, 150, 255))
    d.rectangle([14, 17, 17, 18], fill=(120, 255, 150, 255))
    d.polygon([(14, 21), (10, 28), (14, 27)], fill=(30, 110, 60, 255))
    d.polygon([(17, 21), (21, 28), (17, 27)], fill=(30, 110, 60, 255))


for name, fn in (('missile_leviathan', missile_leviathan), ('missile_throne', missile_throne), ('missile_dev2', missile_dev2)):
    outline(px_sprite(32, fn, 2)).save(os.path.join(OUT, name + '.png'))

print('ok')
