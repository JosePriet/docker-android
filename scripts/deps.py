import UnityPy, sys, json, os, collections
env = UnityPy.load(sys.argv[1])
files = {}
for name, f in env.files.items():
    files[os.path.basename(name)] = f
types = collections.defaultdict(list)
for obj in env.objects:
    if obj.type.name in ('Texture2D','Mesh','Material'):
        try: n=obj.read().m_Name
        except Exception: n='?'
        types[obj.assets_file.name].append((obj.type.name,n))
def ext(fname):
    f=files.get(fname)
    if f is None: return []
    try: return [os.path.basename(e.path) for e in f.externals]
    except Exception: return []
r=json.load(open(sys.argv[2]))
out={}
for k,f,p in r:
    if not k.startswith('units/'): continue
    seen=set(); stack=[f]; tex=set(); meshes=set()
    while stack:
        x=stack.pop()
        if x in seen: continue
        seen.add(x)
        for t,n in types.get(x,[]):
            if t=='Texture2D': tex.add(n)
            if t=='Mesh': meshes.add(n)
        if x==f or len(x)==32:
            stack.extend(e for e in ext(x) if len(e)==32)
    out[k]={'tex':sorted(tex),'nmesh':len(meshes)}
    print(k, sorted(tex), len(meshes))
json.dump(out,open(sys.argv[3],'w'))
