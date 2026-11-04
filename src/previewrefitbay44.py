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
import zipfile, io
_APK = zipfile.ZipFile(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "work", "unsigned43.apk"))
def RES(n, crop=False):
    a = Image.open(io.BytesIO(_APK.read(f"res/drawable-nodpi-v4/{n}.png"))).convert("RGBA")
    return a.crop((a.width // 4, a.height // 4, a.width * 3 // 4, a.height * 3 // 4)) if crop else a
IC_SHIELD, IC_CR, IC_PART = RES("ic_shield"), RES("ic_credits"), RES("loot_engine_block", True)
nxt = load(min(5, S0 + 2)) if S0 + 2 <= 5 else None
CURS = None
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
    d.text((b[0] + cut + 11 * DP, b[1] + 3 * DP), title, font=font(9 * DP), fill=acc)
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
    GREEN = (124, 255, 140)
    f9 = font(9 * DP)
    plan = [4, 4, 4, 4, 5, 6]
    stn = (lv + 2) // 2 if lv < 10 else st
    nr = 2 + (1 if lv < 10 and plan[min(5, stn)] > plan[min(5, st)] else 0)
    limit = H - pad - 38 * DP - 24 * DP
    if y + 34 * DP + nr * 34 * DP + 44 * DP <= limit:
        d.text((x, y + 2 * DP), "Each refit strengthens this hull. Every second refit evolves it", font=f9, fill=DIM)
        d.text((x, y + 15 * DP), "into a new form.", font=f9, fill=DIM)
        y += 34 * DP
    rh, tile = max(28 * DP, min(34 * DP, (limit - y - 44 * DP) / nr)), 24 * DP

    def icon(yy, glyph, col, size=tile):
        d.rounded_rectangle([x, yy, x + size, yy + size], 5, fill=tuple(int(v * .25 + 10) for v in col))
        if glyph == "SHIELD":
            m = int(size * .16); sz = int(size - 2 * m)
            im.alpha_composite(IC_SHIELD.resize((sz, sz), Image.LANCZOS), (int(x + m), int(yy + m))); return
        if glyph == "HULL":
            m, bv = size * .18, size * .16
            l, t, r, bt = x + m, yy + m, x + size - m, yy + size - m
            d.polygon([(l + bv, t), (r - bv, t), (r, t + bv), (r, bt - bv), (r - bv, bt), (l + bv, bt), (l, bt - bv), (l, t + bv)], fill=col)
            my_ = (t + bt) / 2; dk = tuple(int(v * .6) for v in col)
            d.rectangle([l, my_ - 1, r, my_ + 1], fill=dk)
            rv, ri = size * .05, bv * .9
            for cx_, cy_ in ((l + ri, t + ri), (r - ri, t + ri), (l + ri, bt - ri), (r - ri, bt - ri)):
                d.ellipse([cx_ - rv, cy_ - rv, cx_ + rv, cy_ + rv], fill=dk)
            d.rectangle([l + bv, t + 2, r - bv, t + 4], fill=tuple(min(255, int(v * .6 + 100)) for v in col)); return
        f = font(size * .55)
        d.text((x + size / 2 - d.textlength(glyph, font=f) / 2, yy + size * .12), glyph, font=f, fill=col)

    def row(yy, glyph, val, label, delta, dcol, icol, bar=True):
        icon(yy + (rh - tile) / 2 - 2 * DP, glyph, icol)
        tx = x + tile + 8 * DP
        d.text((tx, yy + 1 * DP), val, font=font(13 * DP), fill=(255, 255, 255))
        d.text((tx, yy + 18 * DP), label, font=font(8 * DP), fill=DIM)
        if delta:
            f = font(11 * DP)
            d.text((x + w - d.textlength(delta, font=f), yy + 3 * DP), delta, font=f, fill=dcol)
        if not bar:
            return
        by = yy + rh - 5 * DP
        bw = x + w - tx
        d.rectangle([tx, by, x + w, by + 2 * DP], fill=(27, 42, 60))
        d.rectangle([tx, by, tx + bw * lv / 10, by + 2 * DP], fill=CYAN)
        d.rectangle([tx + bw * lv / 10, by, tx + bw * (lv + 1) / 10, by + 2 * DP], fill=GREEN)

    k = (1 + .03 * (lv + 1)) / (1 + .03 * lv)
    kt = (1 + .02 * (lv + 1)) / (1 + .02 * lv)
    hull, sh = 446656, 4680
    row(y, "HULL", f"{hull:,}", "Hull points", f"+{int(hull * (k - 1)):,}", GREEN, acc); y += rh
    row(y, "SHIELD", f"{sh:,}", "Shield capacity", f"+{int(sh * (k * kt - 1)):,}", GREEN, acc); y += rh
    plan = [4, 4, 4, 4, 5, 6]
    nt = plan[min(5, st)]
    stn = (lv + 2) // 2 if lv < 10 else st
    if lv < 10 and plan[min(5, stn)] > nt:
        row(y, "◎", str(nt), "Turrets", "+1 NEW", GOLD, GOLD, False); y += rh
    evol = stn > st
    fh = 44 * DP
    bx = fh - 8 * DP
    icon(y + (fh - tile) / 2, "◆", GOLD if evol else acc)
    d.text((x + tile + 8 * DP, y + 6 * DP), f"Form {['0','I','II','III','IV','V'][st]}", font=font(12 * DP), fill=(255, 255, 255))
    d.text((x + tile + 8 * DP, y + 24 * DP), "Evolves at the next refit" if evol else f"Evolves at refit {2*(st+1)-1}", font=font(8 * DP), fill=GOLD if evol else CYAN)
    hox = x + w - (2 * bx + 16 * DP)
    for img, bxx, halo in ((CURS, hox, DIM), (new if st == S0 else nxt, hox + bx + 16 * DP, GOLD if evol else CYAN)):
        b = (bxx, y + 4 * DP, bxx + bx, y + 4 * DP + bx)
        d.rectangle(b, fill=(7, 16, 28))
        sy = b[1]
        while sy < b[3]:
            d.line([b[0], sy, b[2], sy], fill=(14, 40, 58)); sy += 3 * DP
        kk = min(bx * 0.9 / img.width, bx * 0.9 / img.height)
        s2 = img.resize((max(1, int(img.width * kk)), max(1, int(img.height * kk))), Image.LANCZOS)
        px, py = int(b[0] + (bx - s2.width) / 2), int(b[1] + (bx - s2.height) / 2)
        im.alpha_composite(tint(s2, halo, 140).filter(ImageFilter.GaussianBlur(3)), (px, py))
        im.alpha_composite(tint(s2, (20, 50, 74), 255), (px, py))
        d.rectangle(b, outline=EDGE)
    ax, ay = hox + bx + 8 * DP, y + 4 * DP + bx / 2
    d.polygon([(ax - 4 * DP, ay - 5 * DP), (ax + 4 * DP, ay), (ax - 4 * DP, ay + 5 * DP)], fill=GOLD if evol else CYAN)
    bh = 38 * DP
    by = H - bh - pad
    cost = int(0.02 * (lv + 1) * 7000000)
    my = by - 22 * DP
    f8 = font(8 * DP)
    d.text((x, my), "REQUIRED", font=f8, fill=DIM)
    mx = x + d.textlength("REQUIRED", font=f8) + 10 * DP
    for ic, txt, col in (("cr", f"964M / {cost // 1000}K", GOLD),) + ((("⬡", "12 / 1", CYAN),) if lv + 1 >= 6 else ()):
        isz = int(13 * DP)
        im.alpha_composite((IC_CR if ic == "cr" else IC_PART).resize((isz, isz), Image.LANCZOS), (int(mx), int(my)))
        mx += isz + 4 * DP
        d.text((mx, my), txt, font=f9, fill=(255, 255, 255)); mx += d.textlength(txt, font=f9) + 12 * DP
    bw = w * .7
    bx0 = x + (w - bw) / 2
    cut = 10 * DP
    d.polygon([(bx0 + cut, by), (bx0 + bw, by), (bx0 + bw - cut, by + bh), (bx0, by + bh)], fill=(58, 70, 86) if busy else GOLD)
    txt = "REFITTING..." if busy else f"REFIT   {cost // 1000}K cr"
    f = font(12 * DP)
    d.text((bx0 + bw / 2 - d.textlength(txt, font=f) / 2, by + bh / 2 - 10), txt, font=f, fill=DIM if busy else BG)
    cs, ci = 26 * DP, 8 * DP
    cx0, cy0 = W - pad - cs, pad
    d.line([cx0 + ci, cy0 + ci, cx0 + cs - ci, cy0 + cs - ci], fill=TEXT, width=3)
    d.line([cx0 + cs - ci, cy0 + ci, cx0 + ci, cy0 + cs - ci], fill=TEXT, width=3)

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
    acc2 = (128, 204, 255)
    R = min(BAY[2], H) * 0.40
    pu = 0.5 + 0.5 * math.sin(now / 1100)
    hexl = Image.new("RGBA", (W, H)); hd = ImageDraw.Draw(hexl)
    def hexpts(r): return [(cx + math.cos(math.pi / 6 + i * math.pi / 3) * r, cy + math.sin(math.pi / 6 + i * math.pi / 3) * r) for i in range(6)]
    hd.polygon(hexpts(R), fill=acc2 + (26,))
    hd.line(hexpts(R) + [hexpts(R)[0]], fill=acc2 + (int(120 + 80 * pu),), width=5)
    hd.line(hexpts(R * .82) + [hexpts(R * .82)[0]], fill=acc2 + (80,), width=2)
    im.alpha_composite(hexl)
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
    CURS = old if t < 0.72 else new
    panel(d, lv, S0 if t < 0.72 else S0 + 1, now, anim)
    im.convert("RGB").save(os.path.join(fdir, f"f{fi:04d}.png"))
    if fi == int((1.0 + STAGE_MS / 1000 * 0.45) * FPS): im.convert("RGB").save(os.path.join(OUT, "PREVIEW_refit_bay_morph.png"))
    if fi == 10: im.convert("RGB").save(os.path.join(OUT, "PREVIEW_refit_bay_idle.png"))
# extra still: level 6 (form III), the next refit unlocks the 5th turret
im = Image.new("RGBA", (W, H), BG + (255,))
d = ImageDraw.Draw(im)
CURS = new
panel(d, 2 * S0 + 2, S0 + 1, 0, False)
im.crop((int(W * 0.56), 0, W, H)).convert("RGB").save(os.path.join(OUT, "PREVIEW_refit_bay_turret_unlock.png"))
subprocess.run(["ffmpeg", "-v", "error", "-y", "-framerate", str(FPS), "-i", os.path.join(fdir, "f%04d.png"), "-c:v", "libx264", "-pix_fmt", "yuv420p", "-crf", "22",
                os.path.join(OUT, "PREVIEW_refit_bay.mp4")], check=True)
print("ok", total, "frames")
