import UnityPy, sys, json, os
env = UnityPy.load(sys.argv[1])
r=json.load(open(sys.argv[2]))
idx={}
for obj in env.objects:
    idx[(obj.assets_file.name,obj.path_id)]=obj
for k,f,p in r:
    if k.startswith('units/') or k.startswith('terrain/') or k.startswith('helicarrier/') or k.startswith('crate/'):
        o=idx.get((f,p))
        try: n=o.read().m_Name if o else None
        except Exception as e: n='err'
        print(k, o.type.name if o else None, n)
