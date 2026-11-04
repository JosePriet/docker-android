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
EMB = Image.open(os.path.join(MOD, "emblem_spartan.webp")).convert("RGBA")
CREST = Image.open(sys.argv[5]).convert("RGBA") if len(sys.argv) > 5 else None
nxt = load(min(5, S0 + 2)) if S0 + 2 <= 5 else None
BAY = (0, 0, int(W * 0.56), H)


def fit(img):
    k = min((BAY[2] - BAY[0]) * 0.78 / img.width, H * 0.86 / img.height)
    w, h = int(img.width * k), int(img.height * k)
    return img.resize((w, h), Image.LANCZOS), ((BAY[2] - w) // 2, (H - h) // 2)


def card(d, b, title, acc):
    cut, hh = 10 * DP, 18 * DP
    poly = [(b[0] + cut, b[1]), (b[2], b[1]), (b[2], b[3]), (b[0], b[3]), (b[0], b[1] + cut)]
    d.polygon(poly, fill=(11, 26, 46))
    d.rectangle([b[0] + cut, b[1], b[2], b[1] + hh], fill=(16, 35, 58))
    for xx in range(int(b[2] - 70 * DP), int(b[2]), int(6 * DP)):
        d.line([xx, b[1] + hh, min(b[2], xx + hh), b[1]], fill=(22, 50, 70))
    d.polygon(poly, outline=EDGE)
    d.rectangle([b[0] + cut + 2 * DP, b[1] + 5 * DP, b[0] + cut + 6 * DP, b[1] + hh - 5 * DP], fill=acc)
    d.text((b[0] + cut + 11 * DP, b[1] + 3 * DP), " ".join(title), font=font(8.5 * DP), fill=acc)
    return b[1] + hh + 6 * DP


def panel(d, lv, st, now, busy):
    acc = (128, 204, 255)
    x0 = int(W * 0.56)
    d.rectangle([x0, 0, W, H], fill=(10, 22, 38))
    hx = 22 * DP
    yy, row = 0, 0
    while yy < H + hx:
        xx = x0 + (row % 2) * hx / 2
        while xx < W + hx:
            d.ellipse([xx - hx * .45, yy - hx * .45, xx + hx * .45, yy + hx * .45], outline=(16, 32, 50)); xx += hx
        yy += hx * .866; row += 1
    d.rectangle([x0, 0, x0 + 3, H], fill=EDGE)
    pad = 14 * DP
    x, w, y = x0 + pad, W - x0 - 2 * pad, pad
    hb = (x, y, x + w, y + 46 * DP)
    for i in range(int(w)):
        a = 1 - i / w
        d.line([x + i, hb[1], x + i, hb[3]], fill=(int(11 + (acc[0] - 11) * .31 * a), int(26 + (acc[1] - 26) * .31 * a), int(46 + (acc[2] - 46) * .31 * a)))
    d.rectangle([x, hb[1], x + 3 * DP, hb[3]], fill=acc)
    es = 38 * DP
    if EMB is not None:
        e = EMB.resize((int(es), int(es)), Image.LANCZOS); im.alpha_composite(e, (int(x + 10 * DP), int(hb[1] + 4 * DP)))
    ex = x + 10 * DP + es + 8 * DP
    d.text((ex, hb[1] + 6 * DP), "R E T R O F I T   B A Y", font=font(8 * DP), fill=acc)
    d.text((ex, hb[1] + 20 * DP), ART.upper(), font=font(17 * DP), fill=(255, 255, 255))
    y = hb[3] + 10 * DP
    d.text((x, y), "P R O G R E S S   T O   E L I T E", font=font(8 * DP), fill=DIM)
    d.text((x + w - 58 * DP - 40, y), f"{lv} / 10", font=font(10 * DP), fill=DIM)
    y += 16 * DP
    capW, th = 52 * DP, 14 * DP
    tw = w - capW - 6 * DP
    seg = tw / 10
    for i in range(10):
        sx = x + i * seg
        col = GOLD if i < lv else ((53, 104, 128) if i == lv and (now // 450) % 2 == 0 else (27, 42, 60))
        d.polygon([(sx, y), (sx + seg - 3 * DP, y), (sx + seg + 2 * DP, y + th / 2), (sx + seg - 3 * DP, y + th), (sx, y + th), (sx + 5 * DP, y + th / 2)], fill=col)
    for s in range(1, 6):
        cx, cy, r = x + seg * 2 * s - seg / 2, y + th + 12 * DP, 9.5 * DP
        pts = [(cx, cy - r), (cx + r, cy), (cx, cy + r), (cx - r, cy)]
        if s <= st: d.polygon(pts, fill=GOLD)
        else: d.polygon(pts, outline=CYAN if s == st + 1 else EDGE, width=2)
        rn = ["", "I", "II", "III", "IV", "V"][s]
        f = font(8 * DP)
        d.text((cx - d.textlength(rn, font=f) / 2, cy - 7), rn, font=f, fill=BG if s <= st else TEXT)
    cap = (x + w - capW, y - 4 * DP, x + w, y + th + 4 * DP)
    d.rounded_rectangle(cap, 6, fill=(27, 42, 60), outline=GOLD, width=2)
    f = font(10 * DP)
    d.text(((cap[0] + cap[2]) / 2 - d.textlength("ELITE", font=f) / 2, cap[1] + 7), "ELITE", font=f, fill=GOLD)
    y += th + 30 * DP
    gap = 8 * DP
    cw = (w - gap) / 2
    bh = 34 * DP
    by = H - bh - pad
    rh = (by - 24 * DP - y - gap) / 2
    c1, c2 = (x, y, x + cw, y + rh), (x + cw + gap, y, x + w, y + rh)
    c3, c4 = (x, y + rh + gap, x + cw, y + 2 * rh + gap), (x + cw + gap, y + rh + gap, x + w, y + 2 * rh + gap)
    yy = card(d, c1, "EACH LEVEL", acc)
    for val, stat, fac in (("+3%", "Shield capacity", False), ("+3%", "Hull points", False), ("+2%", "Shield capacity", True)):
        d.rounded_rectangle([c1[0] + 8 * DP, yy, c1[0] + 40 * DP, yy + 13 * DP], 4, fill=acc if fac else (31, 74, 42))
        f = font(8 * DP)
        d.text((c1[0] + 24 * DP - d.textlength(val, font=f) / 2, yy + 2), val, font=f, fill=BG if fac else (140, 255, 140))
        d.text((c1[0] + 46 * DP, yy + 1), stat, font=font(9 * DP), fill=acc if fac else TEXT)
        yy += 16 * DP
    yy = card(d, c2, "TURRETS", acc)
    plan = [4, 4, 4, 4, 5, 6]
    nt, tr = plan[min(5, st)], 8 * DP
    rw = nt * (tr * 2 + 4 * DP) - 4 * DP
    tx = (c2[0] + c2[2]) / 2 - rw / 2
    for i in range(nt):
        cx, cy = tx + tr + i * (tr * 2 + 4 * DP), yy + tr + 2 * DP
        d.ellipse([cx - tr, cy - tr, cx + tr, cy + tr], fill=CYAN); d.ellipse([cx - tr * .4, cy - tr * .4, cx + tr * .4, cy + tr * .4], fill=BG)
    yy += tr * 2 + 8 * DP
    f = font(10 * DP)
    tl = f"{nt} turrets online"
    d.text(((c2[0] + c2[2]) / 2 - d.textlength(tl, font=f) / 2, yy), tl, font=f, fill=(255, 255, 255))
    yy = card(d, c3, "MATERIALS", acc)
    for ic, have, need, ok, col in (("cr", "964M", "-700,000", True, GOLD), ("⬡", "12", "", True, CYAN), ("◆", "1  Spartan core", "", True, acc)):
        f = font(10 * DP)
        d.text((c3[0] + 8 * DP, yy), ic, font=f, fill=col)
        d.text((c3[0] + 28 * DP, yy), have, font=f, fill=(255, 255, 255))
        if need: d.text((c3[2] - 8 * DP - d.textlength(need, font=font(9 * DP)), yy + 1), need, font=font(9 * DP), fill=(140, 255, 140))
        yy += 16 * DP
    yy = card(d, c4, "NEXT FORM", acc)
    box = min(c4[3] - yy - 6 * DP, (c4[2] - c4[0]) * .45)
    b = (c4[0] + 8 * DP, yy, c4[0] + 8 * DP + box, yy + box)
    d.rectangle(b, fill=(7, 16, 28))
    sy = b[1]
    while sy < b[3]:
        d.line([b[0], sy, b[2], sy], fill=(14, 40, 58)); sy += 3 * DP
    if nxt is not None and st < 5:
        k = min(box * 0.9 / nxt.width, box * 0.9 / nxt.height)
        s2 = nxt.resize((int(nxt.width * k), int(nxt.height * k)), Image.LANCZOS)
        px, py = int(b[0] + (box - s2.width) / 2), int(b[1] + (box - s2.height) / 2)
        im.alpha_composite(tint(s2, CYAN, 140).filter(ImageFilter.GaussianBlur(3)), (px, py))
        im.alpha_composite(tint(s2, (20, 50, 74), 255), (px, py))
        f = font(9 * DP)
        d.text((b[2] + 8 * DP, b[1] + 2), f"STAGE {['','I','II','III','IV','V'][st+1]}", font=f, fill=CYAN)
        d.text((b[2] + 8 * DP, b[1] + 15 * DP), "Evolves at", font=f, fill=CYAN)
        d.text((b[2] + 8 * DP, b[1] + 28 * DP), f"refit {2*(st+1)-1}", font=f, fill=CYAN)
    half = (w - gap) / 2
    for bx, txt, fill, ink in ((x, "CLOSE", EDGE, TEXT), (x + half + gap, "REFITTING..." if busy else "REFIT  700K cr", (58, 70, 86) if busy else GOLD, DIM if busy else BG)):
        cut = 10 * DP
        d.polygon([(bx + cut, by), (bx + half, by), (bx + half - cut, by + bh), (bx, by + bh)], fill=fill)
        f = font(12 * DP)
        d.text((bx + half / 2 - d.textlength(txt, font=f) / 2, by + bh / 2 - 10), txt, font=f, fill=ink)


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
    br = 0.5 + 0.5 * math.sin(now / 1800)
    if CREST is not None:
        cs = int(H * 0.42); cr = CREST.resize((cs, cs), Image.LANCZOS); cr.putalpha(cr.getchannel("A").point(lambda v: v * int(28 + 14 * br) // 255)); im.alpha_composite(cr, (int(18 * DP), int(18 * DP)))
    es = int(min(BAY[2], H) * 0.78)
    cx, cy = BAY[2] / 2, H / 2
    ring = Image.new("RGBA", (W, H)); rd = ImageDraw.Draw(ring)
    rr = es * 0.56
    rd.ellipse([cx - rr, cy - rr, cx + rr, cy + rr], outline=(106, 208, 255, 48), width=2)
    rot = (now / 400) % 360
    for i in range(24):
        a = math.radians(rot) + i * math.pi / 12
        r2 = es * (0.6 if i % 3 == 0 else 0.58)
        rd.line([cx + math.cos(a) * rr, cy + math.sin(a) * rr, cx + math.cos(a) * r2, cy + math.sin(a) * r2], fill=(106, 208, 255, 48), width=2)
    im.alpha_composite(ring)
    e = EMB.resize((es, es), Image.LANCZOS); e.putalpha(e.getchannel("A").point(lambda v: v * int(34 + 18 * br) // 255)); im.alpha_composite(e, (int(cx - es / 2), int(cy - es / 2)))
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
