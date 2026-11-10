# v43a-2 (owner idea 2026-11-02 18:25): Mantis and Verdant s5 get a subtle rear-wing opening animation (much smaller
# than the Monolith s5 wings). The single s5 sprite is split along a cut line into a hull part and two rear-wing parts:
#   python3 -I src/genwings47.py work/modart
# Writes (lossless WebP, 1024 px canvas like the source): <art>_stage5_hull[_glow_e|_glow_l], <art>_stage5_wingL/R[_glow_l].
# The wing parts keep OVERLAP px of hull past the cut so the seam stays covered while the wing rotates (wings draw under
# the hull). Pivots (ModWings.PIVOT) sit on the cut line at its forward end.
import os, sys
import numpy as np
from PIL import Image

ART = sys.argv[1]
OVERLAP = 48
# art: (x1, y1, x2, y2) cut line of the LEFT wing in 1024 px (forward end first); the right wing mirrors it
CUTS = {'mantis': (236, 600, 480, 931), 'verdant': (178, 540, 440, 947)}


def load(n):
    p = os.path.join(ART, n + '.webp')
    return np.asarray(Image.open(p).convert('RGBA')).astype(float) if os.path.exists(p) else None


def save(arr, n):
    Image.fromarray(np.clip(arr, 0, 255).astype(np.uint8), 'RGBA').save(os.path.join(ART, n + '.webp'), 'WEBP', lossless=True, quality=100, method=6, exact=True)


for art, (x1, y1, x2, y2) in CUTS.items():
    base = load(art + '_stage5')
    n = base.shape[0]
    Y, X = np.mgrid[:n, :n]
    ln = float(np.hypot(x2 - x1, y2 - y1))
    sideL = ((x2 - x1) * (Y - y1) - (y2 - y1) * (X - x1)) / ln       # > 0: outer/rear side of the left cut
    XR = n - 1 - X
    sideR = ((x2 - x1) * (Y - y1) - (y2 - y1) * (XR - x1)) / ln
    left = X < n / 2
    outerL = (sideL > 0) & left
    outerR = (sideR > 0) & ~left
    wingL = (sideL > -OVERLAP) & left
    wingR = (sideR > -OVERLAP) & ~left
    for suffix in ('', '_glow_e', '_glow_l'):
        src = load(art + '_stage5' + suffix)
        if src is None:
            continue
        hull = src.copy(); hull[outerL | outerR, 3] = 0
        save(hull, art + '_stage5_hull' + suffix)
        if suffix == '_glow_e':
            continue   # engines stay on the hull part
        wl = src.copy(); wl[~wingL, 3] = 0
        wr = src.copy(); wr[~wingR, 3] = 0
        save(wl, art + '_stage5_wingL' + suffix)
        save(wr, art + '_stage5_wingR' + suffix)
    print(art, 'wing px L/R', int((outerL & (base[..., 3] > 0)).sum()), int((outerR & (base[..., 3] > 0)).sum()))
