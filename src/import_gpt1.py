# v21: import ChatGPT Priority-1 art (titan hulls v2, titan + flagship turrets, commander portraits) into work/modart.
#   python3 -I src/import_gpt1.py <unzipped art dir> work/modart
import sys
import numpy as np
from PIL import Image
from scipy import ndimage
SRC, ART = sys.argv[1], sys.argv[2]


def clean(im):
    """Drop alpha speckles outside the main silhouette."""
    a = np.asarray(im.convert('RGBA')).copy()
    lab, k = ndimage.label(a[..., 3] > 10)
    if k > 1:
        sizes = ndimage.sum(np.ones(lab.shape), lab, range(1, k + 1))
        keep = ndimage.binary_dilation(lab == (int(np.argmax(sizes)) + 1), iterations=3)
        a[..., 3] = np.where(keep, a[..., 3], 0)
    a[..., 3] = np.where(a[..., 3] < 10, 0, a[..., 3])
    return Image.fromarray(a, 'RGBA')


for src, dst in [('hull_leviathan_v2', 'leviathan'), ('hull_crimson_throne_v2', 'crimson_throne')]:
    im = clean(Image.open('%s/%s.png' % (SRC, src)))
    assert im.size == (1024, 1024)
    im.save('%s/%s.png' % (ART, dst), optimize=True)
# turrets: pivot = image centre (brief), 128 px like the other hardware sprites
for src, dst in [('turret_leviathan_v2', 'leviathan'), ('turret_crimson_throne_v2', 'crimson_throne')] + \
        [('turret_cap_' + k, 'cap_' + k) for k in ['spartan', 'reaver', 'kretari', 'varn', 'ironclad', 'helion', 'warden']]:
    im = clean(Image.open('%s/%s.png' % (SRC, src))).resize((128, 128), Image.LANCZOS)
    im.save('%s/hw_turret_%s.png' % (ART, dst), optimize=True)
# portraits for the comms overlay (Android ImageView, not GL): 256 px
for k in ['spartan', 'reaver', 'kretari', 'varn', 'ironclad', 'helion', 'warden']:
    Image.open('%s/portrait_%s.png' % (SRC, k)).convert('RGB').resize((256, 256), Image.LANCZOS).save('%s/portrait_%s.png' % (ART, k), optimize=True)
print('imported')
