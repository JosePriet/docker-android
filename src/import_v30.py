# v30: ChatGPT steps 1-6 + territory art -> PNG masters in work/modart_v30png (then scripts/losslessify.py -> work/modart).
# Glow masks are split into <art>_glow_e (engine apertures: lit parts in the lower 30% of the sprite, compact blobs, nose up) and
# <art>_glow_l (lights, windows, nodes): the game drives them separately (thrust vs blink/pulse). Pixels are copied, never
# altered: e + l == the delivered mask, verified.
import os, sys, glob, shutil
import numpy as np
from PIL import Image
from scipy import ndimage
IN, TERR, OUT = sys.argv[1], sys.argv[2], sys.argv[3]
os.makedirs(OUT, exist_ok=True)
n = 0
for f in sorted(glob.glob(os.path.join(IN, '*', '*.png'))):
    b = os.path.basename(f)
    if b.endswith('_glow.png'):
        art = b[:-9]
        for suf in ('_glow_e.png', '_glow_l.png'):
            if os.path.exists(os.path.join(OUT, art + suf)): os.remove(os.path.join(OUT, art + suf))
        im = Image.open(f).convert('RGB'); a = np.asarray(im)
        lit = a.max(axis=2) > 8
        lab, k = ndimage.label(lit, structure=np.ones((3, 3)))
        H = a.shape[0]
        eng = np.zeros(lit.shape, bool)
        if k:
            cy = ndimage.center_of_mass(lit, lab, range(1, k + 1))
            sl = ndimage.find_objects(lab)
            for i, c in enumerate(cy):
                hgt = sl[i][0].stop - sl[i][0].start
                # nozzles: compact blobs low on the stern (long strips and mid-hull nodes stay lights)
                if c[0] > H * 0.70 and hgt < H * 0.15: eng |= lab == i + 1
        e = np.where(eng[..., None], a, 0).astype(np.uint8)
        l = np.where(eng[..., None], 0, a).astype(np.uint8)
        assert ((e.astype(int) + l) == a).all()
        if e.max() > 0: Image.fromarray(e, 'RGB').save(os.path.join(OUT, art + '_glow_e.png')); n += 1
        if l.max() > 0: Image.fromarray(l, 'RGB').save(os.path.join(OUT, art + '_glow_l.png')); n += 1
        print(art, 'engine px', int(eng.sum()), 'light px', int((lit & ~eng).sum()))
    else:
        shutil.copyfile(f, os.path.join(OUT, b)); n += 1
for f in sorted(glob.glob(os.path.join(TERR, '*.png'))):
    shutil.copyfile(f, os.path.join(OUT, os.path.basename(f))); n += 1
print('masters', n)
