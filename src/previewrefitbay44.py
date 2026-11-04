#!/usr/bin/env python3
"""Offline preview of the v44 retrofit bay (ModRefitScreen.java): same layout and animation timings, PIL drawing.
Usage: previewrefitbay44.py <modart dir> <out dir> [art] [from_stage]"""
import math, os, random, subprocess, sys
from PIL import Image, ImageDraw, ImageFont, ImageFilter

MOD, OUT = sys.argv[1], sys.argv[2]
ART = sys.argv[3] if len(sys.argv) > 3 else "leviathan"
S0 = int(sys.argv[4]) if len(sys.argv) > 4 else 2
W, H, DP, FPS = 1280, 592, 1.6, 30
BG, CYAN, GOLD, TEXT, DIM, EDGE = (5, 11, 22), (106, 208, 255), (232, 184, 74), (176, 196, 218), (127, 142, 160), (36, 56, 79)
random.seed(4)


def load(s):
    n = ART if s == 0 else f"{ART}_stage{s}"
    return Image.open(os.path.join(MOD, n + ".webp")).convert("RGBA")


def font(px):
    for f in ("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf",):
        if os.path.exists(f): return ImageFont.truetype(f, int(px))
    return ImageFont.load_default()


def tint(img, col, a):
    t = Image.new("RGBA", img.size, col + (0,))
    al = img.getchannel("A").point(lambda v: v * a // 255)
    t.putalpha(al)
    return t


old, new = load(S0), load(S0 + 1)
nxt = load(min(5, S0 + 2)) if S0 + 2 <= 5 else None
BAY = (0, 0, int(W * 0.56), H)


def fit(img):
    k = min((BAY[2] - BAY[0]) * 0.78 / img.width, H * 0.86 / img.height)
    w, h = int(img.width * k), int(img.height * k)
    return img.resize((w, h), Image.LANCZOS), ((BAY[2] - w) // 2, (H - h) // 2)


def panel(d, lv, st, now, busy):
    x0 = int(W * 0.56)
    d.rectangle([x0, 0, W, H], fill=(10, 22, 38))
    d.rectangle([x0, 0, x0 + 3, H], fill=EDGE)
    x, y, w = x0 + 32, 50, W - x0 - 64
    d.text((x, y - 28), "RETROFIT BAY", font=font(20 * DP), fill=CYAN)
    d.text((x, y + 8), ART.replace("_", " ").title(), font=font(15 * DP), fill=(255, 255, 255))
    y += 50
    d.text((x, y), f"Refit level  {lv} / 10", font=font(12 * DP), fill=TEXT)
    y += 26
    gap, sw = 5, (w - 5 * 9) / 10
    for i in range(10):
        sx = x + i * (sw + gap)
        col = GOLD if i < lv else ((53, 104, 128) if i == lv and (now // 450) % 2 == 0 else (27, 42, 60))
        d.rectangle([sx, y, sx + sw, y + 16], fill=col)
    y += 46
    d.text((x, y), "Form", font=font(12 * DP), fill=TEXT)
    y += 34
    pw = w / 5
    for s in range(1, 6):
        cx, cy, r = x + pw * (s - 0.5), y, 20
        pts = [(cx, cy - r), (cx + r, cy), (cx, cy + r), (cx - r, cy)]
        if s <= st: d.polygon(pts, fill=GOLD)
        else: d.polygon(pts, outline=CYAN if s == st + 1 else EDGE, width=3)
        rn = ["", "I", "II", "III", "IV", "V"][s]
        f = font(11 * DP)
        d.text((cx - d.textlength(rn, font=f) / 2, cy - 9), rn, font=f, fill=BG if s <= st else TEXT)
        lt = f"{2*s-1}-{2*s}"
        f2 = font(9 * DP)
        d.text((cx - d.textlength(lt, font=f2) / 2, cy + 26), lt, font=f2, fill=DIM)
    y += 60
    d.text((x, y), "Each level: Shield capacity +3%, Hull points +3%,", font=font(11 * DP), fill=TEXT)
    d.text((x, y + 22), "Shield capacity +2% (faction)", font=font(11 * DP), fill=TEXT)
    d.text((x, y + 50), "Rare parts: 12     Spartan core: 1", font=font(11 * DP), fill=DIM)
    y += 84
    box = 120
    d.rectangle([x, y, x + box, y + box], fill=(11, 26, 46), outline=EDGE, width=2)
    if nxt is not None and st < 5:
        k = min(box * 0.88 / nxt.width, box * 0.88 / nxt.height)
        s = nxt.resize((int(nxt.width * k), int(nxt.height * k)), Image.LANCZOS)
        halo = tint(s, CYAN, 140).filter(ImageFilter.GaussianBlur(3))
        im.alpha_composite(halo, (int(x + (box - s.width) / 2), int(y + (box - s.height) / 2)))
        im.alpha_composite(tint(s, (20, 50, 74), 255), (int(x + (box - s.width) / 2), int(y + (box - s.height) / 2)))
        d.text((x + box + 18, y + 10), f"Next form at refit {2*(st+1)+1}", font=font(11 * DP), fill=CYAN)
    bh, by = 70, H - 70 - 28
    d.text((x, by - 34), "Next level: 2,184,000 cr + 1 parts", font=font(12 * DP), fill=(255, 255, 255))
    half = (w - 18) / 2
    d.rounded_rectangle([x, by, x + half, by + bh], 10, fill=EDGE)
    d.rounded_rectangle([x + half + 18, by, x + w, by + bh], 10, fill=(58, 70, 86) if busy else GOLD)
    f = font(15 * DP)
    for txt, cx, col in (("Close", x + half / 2, TEXT), ("Refitting..." if busy else "REFIT", x + half + 18 + half / 2, DIM if busy else BG)):
        d.text((cx - d.textlength(txt, font=f) / 2, by + bh / 2 - 13), txt, font=f, fill=col)


sparks = []


def emit(x, y, n):
    for _ in range(n):
        a = random.random() * 6.283
        v = (40 + random.random() * 160) * DP
        life = 0.3 + random.random() * 0.5
        sparks.append([x, y, math.cos(a) * v, math.sin(a) * v - 40 * DP, life, life])


oldf, oldp = fit(old)
newf, newp = fit(new)
opq = [(random.random(), random.random()) for _ in range(2000)]
def edges(f):
    out = []
    for j in range(3):
        y = int(f.height * (0.25 + 0.25 * j))
        xs = [x for x in range(f.width) if f.getpixel((x, y))[3] > 128]
        out.append((xs[0] / f.width, xs[-1] / f.width) if xs else (0.3, 0.7))
    return out


weld = [(u, v) for u, v in opq if newf.getpixel((int(u * (newf.width - 1)), int(v * (newf.height - 1))))[3] > 160][:48]
EDG = edges(newf)
os.makedirs(OUT, exist_ok=True)
fdir = os.path.join(OUT, "frames")
os.makedirs(fdir, exist_ok=True)
STAGE_MS = 4600
total = int((1.0 + STAGE_MS / 1000 + 1.0) * FPS)
for fi in range(total):
    now = fi * 1000 // FPS
    t = (now - 1000) / STAGE_MS
    anim = 0 <= t < 1
    im = Image.new("RGBA", (W, H), BG + (255,))
    d = ImageDraw.Draw(im)
    step, off = 32 * DP, (now / 40) % (32 * DP)
    for xx in range(0, BAY[2], int(step)): d.line([xx, 0, xx, H], fill=(18, 40, 58))
    yy = -step + off
    while yy < H:
        d.line([0, yy, BAY[2], yy], fill=(18, 40, 58)); yy += step
    bob = math.sin(now / 900) * 3 * DP
    cur, cp = (newf, newp) if t >= 0.72 or t >= 1 else (oldf, oldp)
    if t < 0: cur, cp = oldf, oldp
    cp = (cp[0], int(cp[1] + bob))
    inn = 0 if not anim else (t / 0.15 if t < 0.15 else (max(0, (1 - t) / 0.12) if t > 0.88 else 1))
    inn = inn * inn * (3 - 2 * inn)
    # arms
    for side in (-1, 1):
        for j in range(3):
            y = newp[1] + newf.height * (0.25 + 0.25 * j)
            rest = 14 * DP if side < 0 else BAY[2] - 14 * DP
            e = EDG[j]
            reach = newp[0] + newf.width * e[0] - 6 if side < 0 else newp[0] + newf.width * e[1] + 6
            tip = rest + (reach - rest) * inn
            d.rectangle([min(rest, tip), y - 5, max(rest, tip), y + 5], fill=(27, 42, 60))
            d.rectangle([tip - 9, y - 14, tip + 9, y + 14], fill=(42, 60, 82))
            if inn > 0.95: d.ellipse([tip - side * 11 - 4, y - 4, tip - side * 11 + 4, y + 4], fill=(255, 230, 160))
    halo = tint(cur, CYAN, int(40 + 30 * (0.5 + 0.5 * math.sin(now / 600)))).filter(ImageFilter.GaussianBlur(6))
    im.alpha_composite(halo, cp)
    if anim and t < 0.18:
        im.alpha_composite(oldf, (oldp[0], int(oldp[1] + bob)))
        im.alpha_composite(tint(oldf, CYAN, int(140 * t / 0.18)), (oldp[0], int(oldp[1] + bob)))
    elif anim and t < 0.72:
        u = (t - 0.18) / 0.54
        top, bot = min(oldp[1], newp[1]), max(oldp[1] + oldf.height, newp[1] + newf.height)
        ly = int(top + (bot - top) * u + bob)
        lo = Image.new("RGBA", (W, H)); lo.alpha_composite(oldf, (oldp[0], int(oldp[1] + bob))); lo.alpha_composite(tint(oldf, CYAN, 70), (oldp[0], int(oldp[1] + bob)))
        hi = Image.new("RGBA", (W, H)); hi.alpha_composite(newf, (newp[0], int(newp[1] + bob)))
        wf = Image.new("RGBA", (W, H)); wf.alpha_composite(tint(newf, (255, 255, 255), 200), (newp[0], int(newp[1] + bob)))
        im.alpha_composite(lo.crop((0, ly, W, H)), (0, ly))
        im.alpha_composite(hi.crop((0, 0, W, ly)), (0, 0))
        a0 = max(0, int(ly - 40 * DP))
        im.alpha_composite(wf.crop((0, a0, W, ly + 6)), (0, a0))
        band = Image.new("RGBA", (W, H)); bd = ImageDraw.Draw(band)
        for k in range(int(30 * DP)):
            bd.line([20 * DP, ly - k, BAY[2] - 20 * DP, ly - k], fill=CYAN + (int(144 * (1 - k / (30 * DP))),))
        im.alpha_composite(band)
        d.rectangle([20 * DP, ly, BAY[2] - 20 * DP, ly + 3], fill=(255, 255, 255))
        for _ in range(3): emit(newp[0] + random.random() * newf.width, ly, 2)
    else:
        im.alpha_composite(cur, cp)
        if anim:
            f = (t - 0.72) / 0.28
            if f < 0.5: im.alpha_composite(tint(cur, (255, 255, 255), int(230 * (1 - f / 0.5))), cp)
            rr = max(cur.width, cur.height) * (0.35 + 0.6 * f)
            cx, cy = cp[0] + cur.width / 2, cp[1] + cur.height / 2
            ring = Image.new("RGBA", (W, H)); ImageDraw.Draw(ring).ellipse([cx - rr, cy - rr, cx + rr, cy + rr], outline=GOLD + (int(200 * (1 - f)),), width=max(1, int((10 - 8 * f) * DP)))
            im.alpha_composite(ring)
        else:
            u = (now % 4000) / 4000
            y = int(cp[1] + cur.height * u)
            band = Image.new("RGBA", (W, H)); bd = ImageDraw.Draw(band)
            for k in range(int(18 * DP)):
                bd.line([cp[0], y - k, cp[0] + cur.width, y - k], fill=CYAN + (int(64 * (1 - k / (18 * DP))),))
            im.alpha_composite(band)
    if anim and t < 0.85:
        for _ in range(6):
            u, v = random.choice(weld)
            emit(newp[0] + u * newf.width, newp[1] + v * newf.height, 3)
    dt = 1 / FPS
    d = ImageDraw.Draw(im)
    for s in sparks:
        if s[4] <= 0: continue
        s[4] -= dt; s[3] += 260 * DP * dt
        x0, y0 = s[0], s[1]; s[0] += s[2] * dt; s[1] += s[3] * dt
        a = max(0, s[4] / s[5])
        d.line([x0, y0, s[0], s[1]], fill=((255, 244, 192) if a > 0.6 else (255, 176, 64)) + (int(255 * a),), width=2)
    sparks[:] = [s for s in sparks if s[4] > 0]
    if anim and t > 0.72:
        bt = (t - 0.72) / 0.28
        a = bt / 0.2 if bt < 0.2 else ((1 - bt) / 0.2 if bt > 0.8 else 1)
        txt = "NEW FORM: STAGE " + ["", "I", "II", "III", "IV", "V"][S0 + 1]
        f = font(26 * DP)
        tw = d.textlength(txt, font=f)
        d.text((BAY[2] / 2 - tw / 2, H - 36 * DP - 40), txt, font=f, fill=GOLD + (int(255 * a),))
    lv = 2 * S0 if t < 0 else 2 * S0 + 1
    panel(d, lv, S0 if t < 0.72 else S0 + 1, now, anim)
    im.convert("RGB").save(os.path.join(fdir, f"f{fi:04d}.png"))
    if fi == int((1.0 + STAGE_MS / 1000 * 0.45) * FPS): im.convert("RGB").save(os.path.join(OUT, "PREVIEW_refit_bay_morph.png"))
    if fi == 10: im.convert("RGB").save(os.path.join(OUT, "PREVIEW_refit_bay_idle.png"))
subprocess.run(["ffmpeg", "-v", "error", "-y", "-framerate", str(FPS), "-i", os.path.join(fdir, "f%04d.png"), "-c:v", "libx264", "-pix_fmt", "yuv420p", "-crf", "22",
                os.path.join(OUT, "PREVIEW_refit_bay.mp4")], check=True)
print("ok", total, "frames")
