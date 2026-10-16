# Extracts player-visible English string literals (adjacent "a" + "b" concatenations joined) from the mod's Java sources.
import re, json, glob, os, sys
S = sys.argv[1]
SRC = S + '/src/java/fr/testudo/spacecorsair/mod/'
done = json.load(open(S + '/i18n/lang/es.json'))
skipfiles = {'ModFactionData.java', 'ModRepData.java', 'ModHardpoints.java', 'ModShipStyle.java', 'ModCapitalData.java', 'ModFxData.java', 'ModLang.java'}
lit = r'"(?:[^"\\]|\\.)*"'
grp = re.compile(r'%s(?:\s*\+\s*%s)*' % (lit, lit))
def unq(p):
    b = p[1:-1]
    return re.sub(r'\\u([0-9a-fA-F]{4})', lambda m: chr(int(m.group(1), 16)), b).replace('\\"', '"').replace("\\'", "'").replace('\\n', '\n').replace('\\\\', '\\')
out = {}
for f in sorted(glob.glob(SRC + '*.java')):
    fn = os.path.basename(f)
    if fn in skipfiles: continue
    s = re.sub(r'//[^\n]*', '', open(f).read())
    for m in grp.finditer(s):
        t = ''.join(unq(p) for p in re.findall(lit, m.group(0)))
        if len(t) < 3 or not re.search(r'[A-Za-z]{3}', t): continue
        if ' ' not in t.strip() and not (t[:1].isupper() and t[1:].islower() and len(t) > 3): continue
        if re.search(r'^(fr\.|android|corsair_|/data|lang/|modart/|modsfx/)|\.(png|webp|ogg|json|smali)$', t): continue
        if t in done: continue
        out.setdefault(t, fn)
print(len(out), sum(len(k.split()) for k in out), 'words')
from collections import Counter; print(Counter(out.values()).most_common(30))
json.dump(out, open(S + '/i18n/lang/mod_texts_src.json', 'w'), ensure_ascii=False, indent=1)
