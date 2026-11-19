# v45 in-game updates: writes and signs manifest.txt + manifest.sig (ECDSA P-256, SHA-256, DER) with openssl.
#   python3 -I tools/updates/manifest_sign.py SPEC.json KEY.pem OUT_DIR
# SPEC.json: {"seq": N, "apk": {"version","build","path","url"}, "patches": [{"path","url"}],
#             "packs": [{"path","url","id","build","api","en","es"}], "revoked": [ids]}
# Sizes and sha-256 are read from the local files named by "path" (the exact files that get uploaded).
import hashlib, json, os, subprocess, sys
spec, key, out = sys.argv[1], sys.argv[2], sys.argv[3]
s = json.load(open(spec, encoding='utf-8'))
sha = lambda p: hashlib.sha256(open(p, 'rb').read()).hexdigest()
def clean(t):
    t = str(t)
    assert '|' not in t and '\n' not in t, 'no | or newline in manifest fields: ' + t
    return t
L = ['sc-manifest=1', 'seq=%d' % int(s['seq'])]
a = s.get('apk')
if a:
    L += ['apk.version=' + clean(a['version']), 'apk.build=%d' % int(a['build']), 'apk.sha256=' + sha(a['path']),
          'apk.size=%d' % os.path.getsize(a['path']), 'apk.url=' + clean(a['url'])]
for p in s.get('patches', []):
    f = open(p['path'], 'rb').read(40)
    assert f[:4] == b'SCP1', p['path']
    L.append('patch=%s|%s|%s|%d' % (f[4:36].hex(), clean(p['url']), sha(p['path']), os.path.getsize(p['path'])))
for p in s.get('packs', []):
    L.append('pack=%d|%d|%s|%s|%s|%d|%s|%s' % (int(p['build']), int(p.get('api', 1)), clean(p['id']), clean(p['url']), sha(p['path']),
                                              os.path.getsize(p['path']), clean(p.get('en', '')), clean(p.get('es', ''))))
for r in s.get('revoked', []): L.append('revoked=' + clean(r))
os.makedirs(out, exist_ok=True)
mt = os.path.join(out, 'manifest.txt'); open(mt, 'w', encoding='utf-8', newline='\n').write('\n'.join(L) + '\n')
subprocess.run(['openssl', 'dgst', '-sha256', '-sign', key, '-out', os.path.join(out, 'manifest.sig'), mt], check=True)
subprocess.run(['openssl', 'dgst', '-sha256', '-verify', '/dev/stdin', '-signature', os.path.join(out, 'manifest.sig'), mt],
               input=subprocess.run(['openssl', 'ec', '-in', key, '-pubout'], capture_output=True, check=True).stdout, check=True, capture_output=True)
print(open(mt).read())
