import UnityPy, sys, collections, json
env = UnityPy.load(sys.argv[1])
counts = collections.Counter()
names = collections.defaultdict(list)
for obj in env.objects:
    t = obj.type.name
    counts[t]+=1
    if t in ('Texture2D','Mesh','GameObject','AnimationClip','TextAsset','AudioClip','Material'):
        try:
            d = obj.read()
            n = getattr(d,'m_Name',None) or getattr(d,'name',None)
        except Exception as e:
            n = '<err %s>'%e
        names[t].append((obj.assets_file.name, obj.path_id, n))
print(counts.most_common())
json.dump(names, open(sys.argv[2],'w'))
# container
cont = {}
for path, obj in env.container.items():
    cont[path] = (obj.type.name, obj.assets_file.name, obj.path_id)
json.dump(cont, open(sys.argv[3],'w'))
print('container entries', len(cont))
