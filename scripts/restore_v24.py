# v24: undo the v23 downscale. Regenerates every modart PNG that has a gpt1/gpt2/gpt3 source at the
# source's native resolution, with the same processing as import_gpt{1,2,3}.py (clean() alpha
# despeckle for sprites, RGBA for emblems, RGB for icons/portraits) but with NO resize.
# monolith (procedural, src/genart.py) is restored from the v22 APK copy (1024 px).
#   python3 -I scripts/restore_v24.py <scratchpad>
import os, sys, zipfile, io
import numpy as np
from PIL import Image
from scipy import ndimage
S = sys.argv[1]
ART = S + '/work/modart'


def clean(im):   # identical to import_gpt*.py
    a = np.asarray(im.convert('RGBA')).copy()
    lab, k = ndimage.label(a[..., 3] > 10)
    if k > 1:
        sizes = ndimage.sum(np.ones(lab.shape), lab, range(1, k + 1))
        keep = ndimage.binary_dilation(lab == (int(np.argmax(sizes)) + 1), iterations=3)
        a[..., 3] = np.where(keep, a[..., 3], 0)
    a[..., 3] = np.where(a[..., 3] < 10, 0, a[..., 3])
    return Image.fromarray(a, 'RGBA')


KEYS = ['spartan', 'reaver', 'kretari', 'varn', 'ironclad', 'helion', 'warden']
jobs = []   # (out name, source path, mode)
g1, g2, g3 = S + '/gpt1', S + '/gpt2', S + '/gpt3'
jobs += [('leviathan', g1 + '/hull_leviathan_v2.png', 'clean'), ('crimson_throne', g1 + '/hull_crimson_throne_v2.png', 'clean')]
jobs += [('hw_turret_leviathan', g1 + '/turret_leviathan_v2.png', 'clean'), ('hw_turret_crimson_throne', g1 + '/turret_crimson_throne_v2.png', 'clean')]
jobs += [('hw_turret_cap_' + k, g1 + '/turret_cap_%s.png' % k, 'clean') for k in KEYS]
jobs += [('portrait_' + k, g1 + '/portrait_%s.png' % k, 'RGB') for k in KEYS]
jobs += [('cap_' + k, g2 + '/cap_%s_v2.png' % k, 'clean') for k in KEYS]
jobs += [('emblem_' + k, g2 + '/emblem_%s.png' % k, 'RGBA') for k in KEYS]
jobs += [('moth', g2 + '/moth_v2.png', 'clean')]
jobs += [('icon_' + f, g2 + '/icon_%s.png' % f, 'RGB') for f in ['railgun', 'autocannon', 'artillery', 'blaster', 'disintegrator', 'arc']]
for f in sorted(os.listdir(g3)):
    if f.endswith('_v2.png'): jobs.append((f[:-7], g3 + '/' + f, 'clean'))
    elif f.startswith('secret_') and f.endswith('.png'): jobs.append((f[:-4], g3 + '/' + f, 'clean'))
    elif f.startswith('turret_') and f.endswith('.png'): jobs.append((f[:-4], g3 + '/' + f, 'clean'))

rows = []
for name, src, mode in jobs:
    dst = '%s/%s.png' % (ART, name)
    before = Image.open(dst).size if os.path.exists(dst) else None
    im = Image.open(src)
    if mode == 'clean': out = clean(im)
    else:
        if mode == 'RGB':   # import scripts dropped alpha; make sure that loses nothing
            a = np.asarray(im.convert('RGBA'))[..., 3]
            assert a.min() == 255, (src, 'source has non-opaque alpha')
        out = im.convert(mode)
    assert out.size == im.size
    out.save(dst, optimize=True)
    rows.append((name, before, out.size))

# monolith: v22 shipped the 1024 px render; v23 LANCZOS-downscaled it to 512
z = zipfile.ZipFile('/home/user/space-corsair-mod-signed-v22.apk')
data = z.read('assets/modart/monolith.png')
m = Image.open(io.BytesIO(data)); m.load()
ref = Image.open(S + '/work/modart_v14/monolith.png')
assert (np.asarray(m.convert('RGBA')) == np.asarray(ref.convert('RGBA'))).all()
before = Image.open(ART + '/monolith.png').size
open(ART + '/monolith.png', 'wb').write(data)
rows.append(('monolith', before, m.size))

for n, b, a in rows:
    print('%-28s %-12s %-12s %s' % (n, '%dx%d' % b if b else '-', '%dx%d' % a, 'RESTORED' if b != a else 'same'))
