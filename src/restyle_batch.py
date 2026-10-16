import sys, os
sys.path.insert(0, os.path.dirname(__file__))
from restyle import restyle
from PIL import Image, ImageDraw
S = sys.argv[1]; OUT = sys.argv[2]
U = S + '/dl/user/'; SP = U + 'Space_Pack/Space Pack/Ships/'; SB = U + 'space_breaker_asset/space_breaker_asset/Ships/'
HEL = dict(base_hue=0.6, base_sat=0.07, base_val=1.25, accent_keep=0.85, flatten=0.45, ambient=0.38, spec_k=0.6, rim=0.06)
IRN = dict(base_hue=0.07, base_sat=0.14, base_val=0.95, accent_hue=0.015, accent_keep=0.7, flatten=0.5, ambient=0.34, spec_k=0.45, rim=0.05)
J = [  # name, source, size, preset, overrides
 ('comet', SP + 'Spaceship_5.png', 256, HEL, {}),
 ('kite', SP + 'Spaceship_1.png', 256, HEL, {}),
 ('talon', SP + 'Spaceship_10.png', 256, HEL, {}),
 ('nightjar', SP + 'Spaceship_3.png', 256, HEL, dict(base_val=0.95, accent_hue=0.0)),
 ('raven', SP + 'Spaceship_4.png', 256, HEL, dict(base_val=0.85)),
 ('seraph', SP + 'Spaceship_8.png', 256, HEL, {}),
 ('aurora', SP + 'Spaceship_6.png', 256, HEL, {}),
 ('bulldog', SB + 'Medium/body_02.png', 128, IRN, dict(density=0.6)),
 ('ironside', SB + 'Big/body_01.png', 256, IRN, {}),
 ('foundry', SB + 'Big/body_03.png', 256, IRN, {}),
]
only = sys.argv[3:] 
for i, (n, src, size, pre, ov) in enumerate(J):
    if only and n not in only: continue
    kw = dict(pre); kw.update(ov)
    restyle(src, f'{OUT}/{n}.png', final=size, seed=11 + i, **kw)
    print(n)
