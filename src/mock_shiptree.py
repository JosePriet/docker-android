# Mock-up of the proposed EVE-style faction ship tree (for discussion, not game code).
import sys
from PIL import Image, ImageDraw, ImageFont
S = sys.argv[1]; OUT = sys.argv[2]
ART = S + '/work/modart/'
F = lambda n, b=False: ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans%s.ttf' % ('-Bold' if b else ''), n)
W, H = 2400, 1080
BG, PANEL, LINE = (9, 13, 26), (17, 24, 42), (60, 72, 110)
GOLD, GREY, WHITE, GREEN, RED, VIOLET = (255, 205, 100), (150, 160, 182), (235, 240, 255), (90, 230, 120), (240, 90, 90), (200, 150, 255)


def sprite(name, box):
    im = Image.open(ART + name + '.png').convert('RGBA')
    im = im.crop(im.getbbox()); im.thumbnail((box, box), Image.LANCZOS)
    return im


def emblem(k, size):
    im = Image.open(ART + 'emblem_%s.png' % k).convert('RGBA'); im.thumbnail((size, size), Image.LANCZOS); return im


c = Image.new('RGBA', (W, H), BG)
d = ImageDraw.Draw(c)
# top bar (kept from the current screen)
d.rectangle((0, 0, W, 70), fill=(12, 18, 34))
d.text((24, 16), 'SHIPS', font=F(36, True), fill=WHITE)
d.text((170, 26), 'Faction ship tree  ·  tap a ship to open its page', font=F(22), fill=GREY)
d.text((1700, 20), '◉ 4,250,000      Level 15      Standings      Inbox', font=F(24, True), fill=GOLD)
# left: factions
facs = [('spartan', 'Spartan Republic', 2, 'Friendly'), ('reaver', 'Crimson Reavers', 4, 'Neutral'), ('kretari', "Kre'tari Brood", 2, 'Unfriendly'),
        ('varn', 'Varn Syndicate', 14, 'Honored'), ('ironclad', 'Ironclad Militia', 6, 'Neutral'), ('helion', 'Helion Combine', 8, 'Trusted'),
        ('warden', 'Frontier Authority', 3, 'Neutral'), (None, 'Independent / original', 16, '')]
d.rectangle((0, 70, 360, H), fill=PANEL)
y = 90
for k, n, cnt, rank in facs:
    sel = k == 'varn'
    if sel: d.rounded_rectangle((10, y - 6, 350, y + 104), 12, fill=(46, 34, 78), outline=VIOLET, width=3)
    if k: c.alpha_composite(emblem(k, 74), (22, y + 8))
    else: d.ellipse((30, y + 14, 90, y + 74), outline=GREY, width=4); d.text((48, y + 28), '?', font=F(30, True), fill=GREY)
    d.text((110, y + 10), n, font=F(25, True), fill=WHITE if sel else GREY)
    d.text((110, y + 46), '%d ships' % cnt + ('  ·  ' + rank if rank else ''), font=F(21), fill=GOLD if sel else GREY)
    y += 120
# main tree
x0, y0 = 400, 90
d.text((x0, y0), 'VARN SYNDICATE', font=F(38, True), fill=VIOLET)
d.text((x0 + 410, y0 + 12), 'Dark violet armour, gold trim, protected cargo cores', font=F(22), fill=GREY)
cols = ['Frigate', 'Destroyer', 'Cruiser', 'Battlecruiser', 'Battleship', 'Capital', 'Titan']
CW, top = 278, 190
for i, cl in enumerate(cols):
    d.text((x0 + 70 + i * CW + 10, top), cl.upper(), font=F(22, True), fill=GREY)
rows = ['TECH I', 'TECH II', 'TECH III']
RH = [250, 330, 230]
ry = [top + 40]
for h in RH[:-1]: ry.append(ry[-1] + h)
for j, r in enumerate(rows):
    d.text((x0, ry[j] + 70), r, font=F(22, True), fill=GREY)
    d.line((x0 + 60, ry[j] - 6, W - 30, ry[j] - 6), fill=(30, 38, 64), width=2)
# ships: (art, name, col, row, status, sub-slot)
ships = [('tidewarden', 'Tidewarden', 1, 0, 'owned', 0), ('cobalt', 'Cobalt', 1, 1, 'avail', 0),
         ('mantis', 'Mantis', 2, 0, 'owned', 0), ('hydra', 'Hydra', 2, 1, 'avail', 0), ('cardinal', 'Cardinal', 2, 1, 'avail', 1),
         ('verdant', 'Verdant', 3, 0, 'avail', 0), ('sovereign', 'Sovereign', 3, 1, 'lock', 0), ('sunlance', 'Sunlance', 3, 1, 'lock', 1),
         ('secret_varn', 'Indemnity Crown', 3, 2, 'secret', 0),
         ('imperator', 'Imperator', 4, 0, 'lock', 0), ('wraith', 'Wraith', 4, 1, 'lock', 0), ('bastille', 'Bastille', 4, 1, 'lock', 1),
         ('moth', 'Nebula Moth', 5, 1, 'lock', 0)]
pos = {}
for art, n, ci, ri, st, sub in ships:
    cw, ch = 250, 150 if ri == 1 else 190
    x = x0 + 70 + ci * CW
    y = ry[ri] + sub * 160 if ri == 1 else ry[ri] + 10
    pos[art] = (x, y, cw, ch)
# licence lines: Tech I chain left->right, Tech I -> Tech II/III of same class
def mid(a, side):
    x, y, w, h = pos[a]
    return {'r': (x + w, y + h // 2), 'l': (x, y + h // 2), 'b': (x + w // 2, y + h), 't': (x + w // 2, y)}[side]
for a, b in [('tidewarden', 'mantis'), ('mantis', 'verdant'), ('verdant', 'imperator'), ('imperator', 'moth')]:
    d.line(mid(a, 'r') + mid(b, 'l'), fill=LINE, width=4)
for a, b in [('tidewarden', 'cobalt'), ('mantis', 'hydra'), ('verdant', 'sovereign'), ('imperator', 'wraith')]:
    d.line(mid(a, 'b') + mid(b, 't'), fill=LINE, width=4)
d.line(mid('sunlance', 'b') + mid('secret_varn', 't'), fill=(120, 95, 40), width=4)
for art, n, ci, ri, st, sub in ships:
    x, y, w, h = pos[art]
    col = {'owned': GREEN, 'avail': WHITE, 'lock': (90, 98, 120), 'secret': GOLD}[st]
    d.rounded_rectangle((x, y, x + w, y + h), 12, fill=(20, 28, 50) if st != 'lock' else (14, 18, 32), outline=col, width=3)
    sp = sprite(art, h - 52)
    if st == 'lock':
        sp = Image.blend(sp, Image.new('RGBA', sp.size, (0, 0, 0, 0)), 0.45)
    c.alpha_composite(sp, (x + 12, y + (h - 40 - sp.height) // 2 + 4))
    d.text((x + 12, y + h - 36), n, font=F(20, True), fill=WHITE if st != 'lock' else GREY)
    tag = {'owned': 'OWNED', 'avail': 'BUY', 'lock': 'LICENCE', 'secret': 'HONORED'}[st]
    d.text((x + w - 12 - d.textlength(tag, font=F(16, True)), y + 10), tag, font=F(16, True), fill=col)
# legend
ly = H - 46
for col, t in [(GREEN, 'owned'), (WHITE, 'can buy'), ((90, 98, 120), 'needs hull licence'), (GOLD, 'secret ship (Honored)')]:
    d.rounded_rectangle((x0 + 70, ly, x0 + 100, ly + 24), 6, outline=col, width=3)
    d.text((x0 + 110, ly - 1), t, font=F(21), fill=GREY)
    x0 += 330
c.convert('RGB').save(OUT + '/shiptree_mockup_A.jpg', quality=90)

# B: the existing ship page, with the faction added
p = Image.new('RGBA', (1400, 640), (10, 16, 32))
d = ImageDraw.Draw(p)
d.text((560, 20), 'Sovereign', font=F(46, True), fill=(220, 90, 255))
d.text((40, 32), '←  back to Varn Syndicate tree', font=F(22), fill=(110, 170, 255))
d.rounded_rectangle((330, 100, 1360, 470), 10, fill=(18, 40, 70), outline=(70, 110, 160), width=2)
p.alpha_composite(sprite('sovereign', 260), (50, 150))
p.alpha_composite(emblem('varn', 64), (350, 116))
d.text((430, 118), 'Varn Syndicate', font=F(28, True), fill=VIOLET)
d.text((430, 152), 'Faction ship  ·  Standing: Honored', font=F(20), fill=GOLD)
d.text((350, 200), 'Battlecruiser - Tech II - Command battlecruiser', font=F(24, True), fill=(110, 200, 255))
d.text((350, 236), 'Hull licence: own a Tech I Battlecruiser', font=F(22), fill=(255, 220, 70))
d.text((350, 280), 'Gold-trimmed flagship of Syndicate fleet commanders.', font=F(21), fill=GREY)
d.text((350, 330), 'SPECIAL SKILL', font=F(22, True), fill=(220, 90, 255))
d.text((350, 362), 'Command ship: +35% shield capacity and +30% shield regeneration.', font=F(21), fill=GREY)
d.text((40, 500), 'Agility  ▬▬▬      Speed  ▬▬▬▬      Armor  ▬▬▬▬▬▬▬▬     (unchanged)', font=F(22), fill=GREY)
d.rounded_rectangle((1100, 560, 1370, 620), 8, fill=(30, 80, 120), outline=(90, 160, 220), width=2)
d.text((1140, 572), 'BUY  600,000', font=F(26, True), fill=WHITE)
p.convert('RGB').save(OUT + '/shiptree_mockup_B.jpg', quality=90)
print('ok')
