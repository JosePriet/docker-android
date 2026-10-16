# v24: lossless size reduction of work/modart. For each PNG master in <master dir>:
#   candidate A: lossless WebP (exact=True keeps RGB under alpha=0), method 6, quality 100
#   candidate B: oxipng-optimized PNG with NO colour-type/bit-depth/palette/alpha changes
# Keeps the smaller one in <out dir>; every output is decoded and compared to the master (RGBA arrays equal, same mode).
#   python3 -I scripts/losslessify.py work/modart_v24png work/modart
import io, os, sys, json
from multiprocessing import Pool
import numpy as np
from PIL import Image
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "pylib"))
import oxipng
MASTER, OUT = sys.argv[1], sys.argv[2]


def rgba(im):
    return np.asarray(im.convert('RGBA'))


def one(f):
    src = os.path.join(MASTER, f)
    raw = open(src, 'rb').read()
    im = Image.open(io.BytesIO(raw)); im.load()
    ref = rgba(im)
    png = oxipng.optimize_from_memory(raw, level=6, strip=oxipng.StripChunks.safe(), optimize_alpha=False,
                                      bit_depth_reduction=False, color_type_reduction=False,
                                      palette_reduction=False, grayscale_reduction=False, interlace=None)
    if len(png) > len(raw): png = raw
    b = io.BytesIO()
    im.save(b, 'WEBP', lossless=True, quality=100, method=6, exact=True)
    webp = b.getvalue()
    # verify both candidates
    p = Image.open(io.BytesIO(png)); p.load()
    assert p.mode == im.mode and p.size == im.size and (rgba(p) == ref).all(), (f, 'png mismatch')
    w = Image.open(io.BytesIO(webp)); w.load()
    assert w.format == 'WEBP' and w.size == im.size and (rgba(w) == ref).all(), (f, 'webp mismatch')
    base = os.path.join(OUT, f[:-4])
    keep, drop = ('.webp', '.png') if len(webp) < len(png) else ('.png', '.webp')
    open(base + keep, 'wb').write(webp if keep == '.webp' else png)
    if os.path.exists(base + drop): os.remove(base + drop)
    return f, im.mode, im.size, len(raw), len(png), len(webp)


if __name__ == '__main__':
    files = sorted(x for x in os.listdir(MASTER) if x.endswith('.png'))
    with Pool(os.cpu_count()) as pool:
        res = pool.map(one, files, chunksize=1)
    json.dump(res, open(OUT + '_lossless.json', 'w'))
    print('ok', len(res))
