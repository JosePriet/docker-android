# v26: wraps player-visible string literals (those with a Spanish entry in es_full.json) in ModLang.tr(...) in the mod sources.
import json, re, sys, glob, os
S = sys.argv[1]
d = json.load(open(S + '/i18n/lang/es_full.json'))
SRC = S + '/src/java/fr/testudo/spacecorsair/mod/'
skip = {'ModFactionData.java', 'ModRepData.java', 'ModHardpoints.java', 'ModShipStyle.java', 'ModCapitalData.java', 'ModFxData.java', 'ModLang.java'}
lit = r'"(?:[^"\\]|\\.)*"'
grp = re.compile(r'%s(?:\s*\+\s*%s)*' % (lit, lit))
def unq(p):
    b = p[1:-1]
    return re.sub(r'\\u([0-9a-fA-F]{4})', lambda m: chr(int(m.group(1), 16)), b).replace('\\"', '"').replace("\\'", "'").replace('\\n', '\n').replace('\\\\', '\\')
BAD_BEFORE = re.compile(r'(case\s*|\.equals\(\s*|\.equalsIgnoreCase\(\s*|\.startsWith\(\s*|\.endsWith\(\s*|\.contains\(\s*|\.indexOf\(\s*|valueOf\(\s*|getString\(\s*|putString\(\s*|getInt\(\s*|putInt\(\s*|getBoolean\(\s*|putBoolean\(\s*|getFloat\(\s*|putFloat\(\s*|getIdentifier\(\s*|findViewWithTag\(\s*|setTag\(\s*|testFlag\(\s*|testValue\(\s*|play\(\s*|ModLang\.tr\(\s*|@\w+\(\s*)$')
BAD_AFTER = re.compile(r'^\s*\.(equals|equalsIgnoreCase|startsWith|endsWith|contains|indexOf|length)\(')
total = 0
for f in sorted(glob.glob(SRC + '*.java')):
    fn = os.path.basename(f)
    if fn in skip: continue
    s = open(f).read(); out = []; last = 0; n = 0
    for m in grp.finditer(s):
        t = ''.join(unq(p) for p in re.findall(lit, m.group(0)))
        if t not in d or d[t] == t: continue
        line_start = s.rfind('\n', 0, m.start()) + 1
        if s[line_start:m.start()].lstrip().startswith('//') or s[line_start:m.start()].lstrip().startswith('*'): continue
        before = s[max(0, m.start() - 60):m.start()]
        if BAD_BEFORE.search(before) or BAD_AFTER.search(s[m.end():m.end() + 30]): continue
        out.append(s[last:m.start()]); out.append('ModLang.tr(' + m.group(0) + ')'); last = m.end(); n += 1
    out.append(s[last:])
    if n:
        open(f, 'w').write(''.join(out)); total += n; print(fn, n)
print('wrapped', total)
