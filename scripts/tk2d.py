import UnityPy, sys, json, struct, re
env = UnityPy.load(sys.argv[1])
def lpstrings(b):
    out=[]; i=0
    while i+4<=len(b):
        n=struct.unpack_from('<I',b,i)[0]
        if 2<=n<=80 and i+4+n<=len(b):
            s=b[i+4:i+4+n]
            if re.fullmatch(rb'[A-Za-z0-9_ .\-]+', s):
                out.append(s.decode()); i=(i+4+n+3)&~3; continue
        i+=4
    return out
res={}
for obj in env.objects:
    if obj.type.name!='MonoBehaviour': continue
    try:
        mb=obj.read(check_read=False) if 'check_read' in obj.read.__code__.co_varnames else obj.read()
        sc=mb.m_Script.read()
        cls=sc.m_ClassName
    except Exception as e:
        continue
    if cls in ('tk2dSpriteCollectionData','tk2dSpriteAnimation','tk2dFontData','tk2dSpriteCollection'):
        raw=obj.get_raw_data()
        res['%s:%s:%d:%s'%(cls,obj.assets_file.name,obj.path_id,mb.m_Name)]=lpstrings(bytes(raw))
json.dump(res,open(sys.argv[2],'w'),indent=0)
for k,v in res.items(): print(k,len(v))
