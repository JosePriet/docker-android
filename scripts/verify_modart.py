# Verifies that every image in <out dir> decodes to exactly the RGBA pixels of its PNG master, each name once.
#   python3 -I scripts/verify_modart.py work/modart_v24png work/modart
import os, sys
import numpy as np
from PIL import Image
M, O = sys.argv[1], sys.argv[2]
names = {}
for f in os.listdir(O):
    n, e = os.path.splitext(f)
    assert e in ('.png', '.webp'), f
    assert n not in names, ('duplicate', n)
    names[n] = f
assert set(names) == {f[:-4] for f in os.listdir(M) if f.endswith('.png')}, 'name sets differ'
for n, f in sorted(names.items()):
    a = Image.open(os.path.join(M, n + '.png')); b = Image.open(os.path.join(O, f))
    assert a.size == b.size, f
    assert (np.asarray(a.convert('RGBA')) == np.asarray(b.convert('RGBA'))).all(), ('PIXEL MISMATCH', f)
    if f.endswith('.webp'): assert b.info.get('lossless', True) is not False
print('verified', len(names), 'files pixel-identical;', sum(f.endswith('.webp') for f in names.values()), 'webp,',
      sum(f.endswith('.png') for f in names.values()), 'png; bytes', sum(os.path.getsize(os.path.join(O, f)) for f in names.values()))
