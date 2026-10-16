import UnityPy, sys, struct, collections
env = UnityPy.load(sys.argv[1])
ids=collections.defaultdict(set)
for obj in env.objects:
    if obj.type.name!='MonoBehaviour': continue
    try:
        mb=obj.read(); cls=mb.m_Script.read().m_ClassName
    except Exception: continue
    if cls not in ('TutorialElement',): continue
    raw=bytes(obj.get_raw_data())
    # header: GameObject PPtr(8) enabled(4) script PPtr(8) name string
    p=20
    n=struct.unpack_from('<I',raw,p)[0]; p=(p+4+n+3)&~3
    n=struct.unpack_from('<I',raw,p)[0]
    s=raw[p+4:p+4+n].decode('utf-8','replace')
    ids[s].add(obj.assets_file.name)
for k in sorted(ids): print(repr(k), sorted(ids[k]))
