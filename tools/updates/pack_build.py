# v45 in-game updates: builds a content pack zip from a folder holding modart/ modsfx/ lang/ (only those).
#   python3 -I tools/updates/pack_build.py SRC_DIR OUT.zip --id content-52-1 --build 52 [--api 1] [--remove modart/name ...]
# WebP/PNG/OGG are stored (already compressed), JSON/TXT deflated. Paths outside the allowed folders are refused.
import argparse, os, sys, zipfile
ALLOWED = ('modart/', 'modsfx/', 'lang/'); EXTS = ('.webp', '.png', '.ogg', '.json', '.txt')
ap = argparse.ArgumentParser()
ap.add_argument('src'); ap.add_argument('out'); ap.add_argument('--id', required=True); ap.add_argument('--build', type=int, required=True)
ap.add_argument('--api', type=int, default=1); ap.add_argument('--remove', nargs='*', default=[])
a = ap.parse_args()
import re
assert re.fullmatch(r'[A-Za-z0-9._-]{1,64}', a.id), 'bad id'
files = []
for root, _, fs in os.walk(a.src):
    for f in fs:
        p = os.path.join(root, f); rel = os.path.relpath(p, a.src).replace(os.sep, '/')
        if not rel.startswith(ALLOWED) or not rel.lower().endswith(EXTS) or '..' in rel: sys.exit('not allowed in a pack: ' + rel)
        files.append((rel, p))
for r in a.remove:
    if not r.startswith(ALLOWED) or '..' in r: sys.exit('bad remove: ' + r)
info = 'id=%s\nbuild=%d\napi=%d\n' % (a.id, a.build, a.api) + ''.join('remove=%s\n' % r for r in a.remove)
with zipfile.ZipFile(a.out, 'w') as z:
    z.writestr(zipfile.ZipInfo('pack.txt'), info, zipfile.ZIP_DEFLATED)
    for rel, p in sorted(files):
        z.write(p, rel, zipfile.ZIP_STORED if rel.lower().endswith(('.webp', '.png', '.ogg')) else zipfile.ZIP_DEFLATED)
print('%s: %d files, %d bytes' % (a.out, len(files), os.path.getsize(a.out)))
