# v43 (APK size option 2): flagship wreck halves shipped as deltas over the flagship hull art.
#   python3 -I src/genwreckdelta43.py work/modart        -> writes wrd_cap_<key>_<s>.webp (keeps the wreck_cap_* files)
# Delta pixel: (0,0,0,0) = the hull pixel; opaque magenta 0xFF00FF = transparent hole; anything else = the wreck pixel.
# ModPoliceGen.wreck rebuilds wreck_cap_* exactly from cap_<key> + wrd_; the script checks the round trip.
import glob, os, sys
import numpy as np
from PIL import Image

art = sys.argv[1]
MAG = np.array([255, 0, 255, 255])
tot0 = tot1 = 0
for p in sorted(glob.glob(os.path.join(art, 'wreck_cap_*.webp'))):
    n = os.path.basename(p)[:-5]
    k = n[len('wreck_cap_'):n.rindex('_')]
    cap = np.asarray(Image.open(os.path.join(art, 'cap_%s.webp' % k)).convert('RGBA')).astype(int)
    w = np.asarray(Image.open(p).convert('RGBA')).astype(int)
    assert w.shape == cap.shape, n
    wa, ca = w[..., 3], cap[..., 3]
    same = (wa == ca) & ((wa == 0) | (np.abs(w[..., :3] - cap[..., :3]).max(-1) == 0))
    hole = (wa == 0) & (ca > 0)
    D = w.copy()
    D[same] = 0
    D[hole] = MAG
    other = ~same & ~hole
    assert not (np.all(D[other] == MAG, -1)).any(), n + ': magenta collision'
    assert not (D[other][:, 3] == 0).any(), n + ': transparent diff pixel'
    # round trip
    R = np.where((D[..., 3:4] == 0), cap, np.where(np.all(D == MAG, -1)[..., None], 0, D))
    ok = (R[..., 3] == w[..., 3]).all() and (np.abs(R[..., :3] - w[..., :3])[w[..., 3] > 0].max() == 0)
    assert ok, n + ': round trip'
    out = os.path.join(art, 'wrd_' + n[len('wreck_'):] + '.webp')
    Image.fromarray(D.astype(np.uint8), 'RGBA').save(out, 'WEBP', lossless=True, quality=100, method=6, exact=True)
    back = np.asarray(Image.open(out).convert('RGBA')).astype(int)
    assert (back == D).all(), n + ': webp not exact'
    tot0 += os.path.getsize(p); tot1 += os.path.getsize(out)
print('wrecks %d -> deltas %d bytes' % (tot0, tot1))
