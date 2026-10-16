# v23: import ChatGPT batch 2 (21 Exceptional hulls, 18 weapon-family turrets, 7 secret ships) into work/modart.
#   python3 -I src/import_gpt3.py <unzipped dir> work/modart
import glob, os, sys
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


for f in sorted(glob.glob(SRC + '/*_v2.png')):
    clean(Image.open(f)).save('%s/%s.png' % (ART, os.path.basename(f)[:-7]), optimize=True)
for f in sorted(glob.glob(SRC + '/secret_*.png')):
    clean(Image.open(f)).save('%s/%s' % (ART, os.path.basename(f)), optimize=True)
for f in sorted(glob.glob(SRC + '/turret_*_?.png')):
    clean(Image.open(f)).resize((128, 128), Image.LANCZOS).save('%s/%s' % (ART, os.path.basename(f)), optimize=True)
print('imported')
