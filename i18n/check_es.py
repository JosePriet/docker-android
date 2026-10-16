"""Validate values-es/strings.xml against values/strings.xml."""
import re,sys,collections,xml.etree.ElementTree as ET
base=sys.argv[1] if len(sys.argv)>1 else '.'
en_p=base+'/work/jres/resources/res/values/strings.xml'; es_p=base+'/i18n/values-es/strings.xml'
def load(p):
    return {e.get('name'):(e.text or '')+''.join(ET.tostring(c,encoding='unicode') for c in e) for e in ET.parse(p).getroot().iter('string')}
EN,ES=load(en_p),load(es_p)
FMT=re.compile(r'%(?:\d+\$)?[-#+0,(]*\d*(?:\.\d+)?[a-zA-Z]|%%')
TAG=re.compile(r'</?\s*([a-zA-Z]+)')
def sig(t):
    return (collections.Counter(FMT.findall(t)),collections.Counter(x.lower() for x in TAG.findall(t)),
            t.count('\\n'),t.count('\\"'),t.count('&#'))
bad=0
for n,t in EN.items():
    if n not in ES: print('MISSING',n); bad+=1; continue
    if sig(t)!=sig(ES[n]): print('MISMATCH',n,sig(t),sig(ES[n])); bad+=1
    if re.search(r"(?<!\\)'",ES[n]): print('UNESCAPED APOSTROPHE',n); bad+=1
    if t.startswith(' ')!=ES[n].startswith(' ') or t.endswith(' ')!=ES[n].endswith(' '): print('SPACE',n); bad+=1
if list(EN)!=[k for k in ES if k in EN]: print('ORDER differs'); bad+=1
print('strings',len(EN),'problems',bad)
