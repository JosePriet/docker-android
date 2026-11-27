# v45 in-game updates: builds a content pack zip from a folder holding modart/ modsfx/ lang/ music/ data/ (only those).
#   python3 -I tools/updates/pack_build.py SRC_DIR OUT.zip --id content-53-1 --build 53 [--api 1] [--remove modart/name ...]
# WebP/PNG/OGG are stored (already compressed), JSON/TXT deflated. Paths outside the allowed folders are refused.
# music/ and data/ (tune.txt, text.json) need build 53 or later (phase 2); data files are checked here.
import argparse, json, os, sys, zipfile
ALLOWED = ('modart/', 'modsfx/', 'lang/', 'music/', 'data/'); EXTS = ('.webp', '.png', '.ogg', '.json', '.txt')
DATA = {'data/tune.txt', 'data/text.json'}
TABLES = ('ModFactionData.', 'ModV30Data.', 'ModRepData.')
LOCKED = {'KEYS', 'SITE_SECTOR', 'SITE_HULLS', 'SECRET_SHIP'}

def check_data(rel, p):
    if rel not in DATA: sys.exit('unknown data file (only %s): %s' % (', '.join(sorted(DATA)), rel))
    if rel == 'data/tune.txt':
        here = os.path.dirname(os.path.abspath(__file__))
        src = open(os.path.join(here, '..', '..', 'src/java/fr/testudo/spacecorsair/mod/ModTune.java'), encoding='utf-8').read()
        for n, l in enumerate(open(p, encoding='utf-8'), 1):
            l = l.strip()
            if not l or l.startswith('#'): continue
            k, _, v = l.partition('=')
            if not _: sys.exit('tune.txt:%d: not key=value' % n)
            float(v)
            if '"%s"' % k.strip() not in src: sys.exit('tune.txt:%d: unknown key %s (see ModTune.KEYS)' % (n, k.strip()))
    else:
        d = json.load(open(p, encoding='utf-8'))
        for k, v in d.items():
            parts = k.split('.')
            if not k.startswith(TABLES) or len(parts) not in (3, 4) or parts[1] in LOCKED or not all(x.isdigit() for x in parts[2:]):
                sys.exit('text.json: bad key %s (Class.FIELD.i[.j], classes %s)' % (k, TABLES))
            if not isinstance(v, str): sys.exit('text.json: %s must be a string (numbers as "12")' % k)
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
        if rel.startswith('data/'): check_data(rel, p)
        if rel.startswith('music/') and not rel.endswith('.ogg'): sys.exit('music must be .ogg named like res/raw: ' + rel)
        files.append((rel, p))
for r in a.remove:
    if not r.startswith(ALLOWED) or '..' in r: sys.exit('bad remove: ' + r)
info = 'id=%s\nbuild=%d\napi=%d\n' % (a.id, a.build, a.api) + ''.join('remove=%s\n' % r for r in a.remove)
with zipfile.ZipFile(a.out, 'w') as z:
    z.writestr(zipfile.ZipInfo('pack.txt'), info, zipfile.ZIP_DEFLATED)
    for rel, p in sorted(files):
        z.write(p, rel, zipfile.ZIP_STORED if rel.lower().endswith(('.webp', '.png', '.ogg')) else zipfile.ZIP_DEFLATED)
print('%s: %d files, %d bytes' % (a.out, len(files), os.path.getsize(a.out)))
