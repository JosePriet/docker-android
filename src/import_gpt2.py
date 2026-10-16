# v22: import ChatGPT batch 1 (flagships, Nebula Moth, faction emblems, weapon-family icons) into work/modart.
#   python3 -I src/import_gpt2.py <unzipped dir> work/modart
import sys
import numpy as np
from PIL import Image
from scipy import ndimage
SRC, ART = sys.argv[1], sys.argv[2]


def clean(im):
    a = np.asarray(im.convert('RGBA')).copy()
    lab, k = ndimage.label(a[..., 3] > 10)
    if k > 1:
        sizes = ndimage.sum(np.ones(lab.shape), lab, range(1, k + 1))
        keep = ndimage.binary_dilation(lab == (int(np.argmax(sizes)) + 1), iterations=3)
        a[..., 3] = np.where(keep, a[..., 3], 0)
    a[..., 3] = np.where(a[..., 3] < 10, 0, a[..., 3])
    return Image.fromarray(a, 'RGBA')


KEYS = ['spartan', 'reaver', 'kretari', 'varn', 'ironclad', 'helion', 'warden']
for k in KEYS:
    clean(Image.open('%s/cap_%s_v2.png' % (SRC, k))).save('%s/cap_%s.png' % (ART, k), optimize=True)
    Image.open('%s/emblem_%s.png' % (SRC, k)).convert('RGBA').resize((256, 256), Image.LANCZOS).save('%s/emblem_%s.png' % (ART, k), optimize=True)
clean(Image.open('%s/moth_v2.png' % SRC)).save('%s/moth.png' % ART, optimize=True)
for f in ['railgun', 'autocannon', 'artillery', 'blaster', 'disintegrator', 'arc']:
    Image.open('%s/icon_%s.png' % (SRC, f)).convert('RGB').resize((128, 128), Image.LANCZOS).save('%s/icon_%s.png' % (ART, f), optimize=True)
print('imported')
