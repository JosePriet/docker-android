import re, sys
from PIL import Image, ImageDraw, ImageFont
S = sys.argv[1]; OUT = sys.argv[2]
ART = S + '/work/modart/'; ORIG = S + '/work/res/res/drawable-nodpi-v4/'
F = lambda n, b=False: ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans%s.ttf' % ('-Bold' if b else ''), n)
BG = (8, 12, 26); GOLD = (255, 200, 90); GREY = (170, 180, 200); WHITE = (235, 240, 255)

def art(path, size):
    im = Image.open(path).convert('RGBA')
    bb = im.getbbox() or (0, 0, im.width, im.height)
    im = im.crop(bb); im.thumbnail((size, size), Image.LANCZOS)
    return im

def paste_c(canvas, im, cx, cy):
    canvas.alpha_composite(im, (int(cx - im.width / 2), int(cy - im.height / 2)))

def shot(path, cx=1125, cy=470, w=1000, h=1000):
    im = Image.open(path).convert('RGBA')
    return im.crop((cx - w // 2, max(0, cy - h // 2), cx + w // 2, cy + h // 2))

# ---------------------------------------------------------------- hull list
src = open(S + '/src/java/fr/testudo/spacecorsair/mod/ModShips.java').read()
CLS = ['Frigate', 'Destroyer', 'Cruiser', 'Battlecruiser', 'Battleship', 'Capital', 'Titan', 'Industrial']
hulls = [(m[1], m[2], m[3], int(m[4]), m[5], m[6]) for m in re.finditer(r'new Hull\("([^"]*)", "([^"]*)", ([A-Z_]+), (\d), "([^"]*)", "([^"]*)"', src)]
KEY = {c.upper(): i for i, c in enumerate(CLS)}

# ---------------------------------------------------------------- 1. player titans
R = S + '/res20c/sc-v20c/'; R19 = S + '/res19/sc-v19/'
titans = [
    ('Leviathan', 'Titan - Tech III', 'leviathan', '+25% laser damage, +50% shield, six heavy turrets, four siege-missile tubes.\nDOOMSDAY LANCE: 2.5 s charge, 4 s straight lance, 90 s cooldown.',
     [R + '57_doom1_leviathan.png', R + '53_thrust_leviathan.png'], ['Doomsday lance', 'Under thrust, 20% hull']),
    ('Crimson Throne', 'Raider titan - Tech III', 'crimson_throne', 'Crimson Reavers flagship. +45% laser damage, 10% faster reload, six heavy plasma cannons.\nFURNACE NOVA: 2 s charge, expanding ring of fire around the ship, 75 s cooldown.',
     [R19 + '54_doom1_crimson_throne.png', R19 + '49_thrust_crimson_throne.png'], ['Furnace nova', 'Under thrust, 20% hull']),
    ('DEV Prototype X-0', 'Test prototype - Tech III', 'dev_prototype', 'Testing ship from the DEV gift code. Locked DEV kit (Overclock laser, Phase shield, Swarm missiles).\nDOOMSDAY LANCE: 1.2 s charge, 3 s lance, 12 s cooldown.',
     [R + '23_doom1_x0.png', S + '/res20b/sc-v20b/27_wpn2_modRailgunL15.png'], ['Doomsday lance', 'Siege railguns']),
]
W, RH = 2400, 760
c = Image.new('RGBA', (W, 140 + RH * len(titans)), BG)
d = ImageDraw.Draw(c)
d.text((40, 30), 'SPACE CORSAIR - PLAYER TITANS', font=F(56, True), fill=GOLD)
d.text((40, 98), 'Hull art (left), in-game emulator screenshots, mod v20 (right)', font=F(26), fill=GREY)
for i, (name, cls, key, desc, shots, caps) in enumerate(titans):
    y0 = 140 + i * RH
    d.rectangle((20, y0 + 10, W - 20, y0 + RH - 10), outline=(60, 70, 110), width=2)
    paste_c(c, art(ART + key + '.png', 600), 360, y0 + 360)
    d.text((40, y0 + 670), name, font=F(40, True), fill=WHITE)
    d.text((40, y0 + 718), cls, font=F(24), fill=GOLD)
    for j, (p, cap) in enumerate(zip(shots, caps)):
        im = shot(p); im.thumbnail((640, 640), Image.LANCZOS)
        x = 760 + j * 680
        c.alpha_composite(im, (x, y0 + 30))
        d.text((x, y0 + 680), cap, font=F(26, True), fill=WHITE)
    d.multiline_text((760, y0 + 715), desc.split('\n')[1], font=F(22), fill=GREY)
c.convert('RGB').save(OUT + '/1_player_titans.jpg', quality=88)

# ---------------------------------------------------------------- 2. faction flagships
caps = [('spartan', 'SRS Aegis', 'Spartan Republic', 'Spartan HQ'), ('reaver', 'Bloodforge', 'Crimson Reavers', 'Pirate Bay'),
        ('kretari', 'Brood-Mother', "Kre'tari Brood", 'The Hive'), ('varn', 'Syndicate Crown', 'Varn Syndicate', 'Omicron Prime'),
        ('ironclad', 'IMS Bastion', 'Ironclad Militia', 'Ore Belt'), ('helion', 'Sunspire', 'Helion Combine', 'Heliostat'),
        ('warden', 'FAV Warden', 'Frontier Authority', 'Highway')]
cw, ch = 600, 720
c = Image.new('RGBA', (cw * 4, 150 + ch * 2), BG); d = ImageDraw.Draw(c)
d.text((40, 30), 'FACTION FLAGSHIPS (titan-class NPCs at faction HQs)', font=F(52, True), fill=GOLD)
d.text((40, 96), 'Neutral until you deal 10% of their hull or attack civilians/allies near them. ~30-60 doomsday lances to kill.', font=F(26), fill=GREY)
for i, (k, n, fac, hq) in enumerate(caps):
    x0, y0 = (i % 4) * cw, 150 + (i // 4) * ch
    paste_c(c, art(ART + 'cap_' + k + '.png', 540), x0 + cw / 2, y0 + 300)
    d.text((x0 + 30, y0 + 590), n, font=F(36, True), fill=WHITE)
    d.text((x0 + 30, y0 + 636), fac, font=F(24), fill=GOLD)
    d.text((x0 + 30, y0 + 668), 'HQ: ' + hq, font=F(22), fill=GREY)
x0, y0 = 3 * cw, 150 + ch
im = shot(S + '/res20c/sc-v20c/' + [f for f in __import__('os').listdir(S + '/res20c/sc-v20c') if 'cap_fight1' in f][0], 1300, 500, 1300, 1080)
im.thumbnail((560, 560), Image.LANCZOS); c.alpha_composite(im, (x0 + 20, y0 + 20))
d.text((x0 + 30, y0 + 590), 'In game: SRS Aegis', font=F(30, True), fill=WHITE)
d.text((x0 + 30, y0 + 636), 'next to the player (emulator)', font=F(22), fill=GREY)
c.convert('RGB').save(OUT + '/2_faction_flagships.jpg', quality=88)

# ---------------------------------------------------------------- 3. every flyable hull, by class
stock = [('Starter ship', 'Stock', 'playership_3'), ('Condor', 'Stock', 'player_ship_condor'), ('Hullbreaker', 'Stock', 'player_ship_hullbreaker'),
         ('Corvette', 'Stock', 'player_ship_corvette'), ('Police', 'Stock', 'police'), ('Cruiser', 'Stock', 'croiseur_gentil'),
         ('Alien Rat', 'Stock alien', 'alien_rat0'), ('Alien UFO', 'Stock alien', 'alien10001'), ('Regent', 'Alien carrier (stock)', 'alien_blatte')]
order = ['TITAN', 'CAPITAL', 'BATTLESHIP', 'BATTLECRUISER', 'CRUISER', 'DESTROYER', 'FRIGATE', 'INDUSTRIAL']
groups = [(CLS[KEY[o]], sorted([h for h in hulls if h[2] == o], key=lambda h: h[3])) for o in order]
groups.append(('Original game ships', None))
cols, tw, th = 8, 300, 360
rows_px = 160
for g, hs in groups:
    n = len(stock) if hs is None else len(hs)
    rows_px += 70 + ((n + cols - 1) // cols) * th
c = Image.new('RGBA', (cols * tw, rows_px), BG); d = ImageDraw.Draw(c)
d.text((30, 30), 'ALL FLYABLE HULLS - mod v20', font=F(56, True), fill=GOLD)
d.text((30, 98), '%d mod hulls + %d original ships. Tech level shown as I / II / III.' % (len(hulls), len(stock)), font=F(26), fill=GREY)
y = 160
for g, hs in groups:
    d.text((30, y + 12), g.upper() + ('S' if hs is not None and not g.endswith('s') else ''), font=F(38, True), fill=GOLD)
    d.line((30, y + 62, cols * tw - 30, y + 62), fill=(70, 80, 120), width=2)
    y += 70
    items = [(n, sub, ORIG + f + '.png') for n, sub, f in stock] if hs is None else \
            [(h[1], h[4] + ' - Tech ' + 'I' * h[3], ART + h[5] + '.png') for h in hs]
    for i, (n, sub, p) in enumerate(items):
        x0, y0 = (i % cols) * tw, y + (i // cols) * th
        paste_c(c, art(p, 250), x0 + tw / 2, y0 + 140)
        d.text((x0 + 18, y0 + 280), n, font=F(25, True), fill=WHITE)
        d.text((x0 + 18, y0 + 314), sub, font=F(17 if len(sub) < 30 else 14), fill=GREY)
    y += ((len(items) + cols - 1) // cols) * th
c.convert('RGB').save(OUT + '/3_all_hulls.jpg', quality=85)
print('ok', len(hulls))
