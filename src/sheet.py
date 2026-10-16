import sys
from PIL import Image, ImageDraw
from restyle import load
S, OUT, sheet = sys.argv[1], sys.argv[2], sys.argv[3]
names = sys.argv[4:]
U = S + '/dl/user/'; SP = U + 'Space_Pack/Space Pack/Ships/'; SB = U + 'space_breaker_asset/space_breaker_asset/Ships/'
src = dict(comet=SP+'Spaceship_5.png', kite=SP+'Spaceship_1.png', talon=SP+'Spaceship_10.png', nightjar=SP+'Spaceship_3.png',
           raven=SP+'Spaceship_4.png', seraph=SP+'Spaceship_8.png', aurora=SP+'Spaceship_6.png', bulldog=SB+'Medium/body_02.png',
           ironside=SB+'Big/body_01.png', foundry=SB+'Big/body_03.png')
C = 200; bg = (17, 24, 42, 255)
W = Image.new('RGBA', (C * len(names), C * 2 + 24), bg); d = ImageDraw.Draw(W)
for i, n in enumerate(names):
    for row, p in enumerate([src[n], f'{OUT}/{n}.png']):
        im = Image.open(p).convert('RGBA'); im = im.crop(im.getbbox())
        s = C * 0.9 / max(im.size); im = im.resize((round(im.width * s), round(im.height * s)), Image.LANCZOS)
        W.alpha_composite(im, (i * C + (C - im.width) // 2, row * C + (C - im.height) // 2))
    d.text((i * C + 6, 2 * C + 6), n, fill=(230, 210, 120))
W.save(sheet)
