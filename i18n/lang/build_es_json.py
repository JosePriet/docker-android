# v26: assets/lang/es.json = UI labels (es_ui.py) + ChatGPT mod texts + mission/reputation texts aligned English -> Spanish.
import json, sys, subprocess
S = sys.argv[1]
d = json.load(open(S + '/i18n/lang/es.json'))           # es_ui.py output
mt = json.load(open(S + '/i18n/gpt/mod_texts_es.json'))
for k, v in mt.items():
    if v != k: d[k] = v
def walk(a, b):
    if isinstance(a, dict):
        for k in a: walk(a[k], b[k])
    elif isinstance(a, list):
        for x, y in zip(a, b): walk(x, y)
    elif isinstance(a, str) and isinstance(b, str) and a != b and a.strip():
        d[a] = b
walk(json.load(open(S + '/src/data/faction_missions.json')), json.load(open(S + '/i18n/gpt/faction_missions_es.json')))
walk(json.load(open(S + '/src/data/reputation.json')), json.load(open(S + '/i18n/gpt/reputation_es.json')))
for k, v in json.load(open(S + '/i18n/gpt/v30_es.json', encoding='utf-8')).items(): d[k] = v   # v30 loot labels
for k, v in json.load(open(S + '/i18n/gpt/v34_es.json', encoding='utf-8')).items(): d[k] = v   # v34 core strings
json.dump(d, open(S + '/i18n/lang/es_full.json', 'w', encoding='utf-8'), ensure_ascii=False, indent=0, sort_keys=True)
print('entries', len(d))
