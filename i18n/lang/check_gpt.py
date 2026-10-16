# Validates ChatGPT's Spanish files against the English sources.
import json, re, sys
S = sys.argv[1]
src = json.load(open(S + '/i18n/lang/mod_texts_src.json'))
es = json.load(open(S + '/i18n/gpt/mod_texts_es.json'))
TAG = re.compile(r'<[^>]+>'); PH = re.compile(r'%\d*\$?[sdf]|%\.\d+f'); NUM = re.compile(r'\d+(?:[.,]\d+)*')
probs = []
def cmp(where, en, sp):
    if not isinstance(sp, str) or (en.strip() and not sp.strip()): probs.append((where, 'empty', en[:60])); return
    if sorted(t.lower().replace(' ', '') for t in TAG.findall(en)) != sorted(t.lower().replace(' ', '') for t in TAG.findall(sp)): probs.append((where, 'tags', en[:60], sp[:60]))
    if PH.findall(en) != PH.findall(sp): probs.append((where, 'placeholders', en[:60], sp[:60]))
    ne = sorted(n.replace(',', '').replace('.', '') for n in NUM.findall(TAG.sub('', en))); ns = sorted(n.replace(',', '').replace('.', '') for n in NUM.findall(TAG.sub('', sp)))
    if ne != ns: probs.append((where, 'numbers', en[:70], sp[:70]))
    if en.count('·') != sp.count('·') or en.count('\n') != sp.count('\n'): probs.append((where, 'separators', en[:60], sp[:60]))
    if (en[:1] == ' ') != (sp[:1] == ' ') or (en[-1:] == ' ') != (sp[-1:] == ' '): probs.append((where, 'edge spaces', repr(en[:40]), repr(sp[:40])))
    if len(en) > 12 and len(sp) > 1.6 * len(en) + 10: probs.append((where, 'long', len(en), len(sp), en[:50]))
missing = [k for k in src if k not in es]; extra = [k for k in es if k not in src]
print('mod_texts: keys', len(src), 'missing', len(missing), 'extra', len(extra))
for k in missing[:10]: print('  missing:', repr(k[:70]))
for k in src:
    if k in es: cmp('mod', k, es[k])
def walk(where, a, b):
    if isinstance(a, dict):
        if not isinstance(b, dict) or set(a) != set(b): probs.append((where, 'structure/keys', sorted(set(a) ^ set(b if isinstance(b, dict) else {})))); return
        for k in a: walk(where + '.' + k, a[k], b[k])
    elif isinstance(a, list):
        if not isinstance(b, list) or len(a) != len(b): probs.append((where, 'list length')); return
        for i, (x, y) in enumerate(zip(a, b)): walk('%s[%d]' % (where, i), x, y)
    elif isinstance(a, str):
        if re.fullmatch(r'[A-Z_0-9]+', a) or where.endswith(('.faction', '.giver', '.sector', '.objective', '.family', '.available_at', '.name', '.commander', '.class')):
            if a != b: probs.append((where, 'id changed', a, b))
        else: cmp(where, a, b)
    elif a != b: probs.append((where, 'value changed', a, b))
walk('missions', json.load(open(S + '/src/data/faction_missions.json')), json.load(open(S + '/i18n/gpt/faction_missions_es.json')))
walk('rep', json.load(open(S + '/src/data/reputation.json')), json.load(open(S + '/i18n/gpt/reputation_es.json')))
from collections import Counter
print('problems', len(probs), Counter(p[1] for p in probs))
for p in probs: print(p)
