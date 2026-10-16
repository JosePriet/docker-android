import UnityPy, sys
env = UnityPy.load(sys.argv[1])
for obj in env.objects:
    if obj.type.name!='MonoBehaviour': continue
    raw=bytes(obj.get_raw_data())
    if b'tk2d_' in raw or b'Collection' in raw[:200]:
        try:
            mb=obj.read(); sc=mb.m_Script.read(); cls=sc.m_ClassName; name=mb.m_Name
        except Exception as e:
            cls='?'; name='?'
        print(obj.assets_file.name, obj.path_id, cls, name, len(raw), raw[:120])
