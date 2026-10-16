import re,sys,glob
base=sys.argv[1]
T={}
for f in sorted(glob.glob(base+'/i18n/tr[0-9].txt')):
    for line in open(f,encoding='utf-8'):
        line=line.rstrip('\n')
        if not line: continue
        n,t=line.split('\t',1); T[n]=t.replace('<','&lt;').replace('>','&gt;')
src=open(base+'/work/jres/resources/res/values/strings.xml',encoding='utf-8').read()
pat=re.compile(r'(<string name="([^"]+)"[^>]*>)(.*?)(</string>)',re.S)
used=set()
def rep(m):
    n=m.group(2)
    if n in T: used.add(n); return m.group(1)+T[n]+m.group(4)
    return m.group(0)
out=pat.sub(rep,src)
open(base+'/i18n/values-es/strings.xml','w',encoding='utf-8').write(out)
print('translated',len(used),'unknown',set(T)-used)
