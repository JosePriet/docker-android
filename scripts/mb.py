import UnityPy, sys, struct, collections, os, json
env = UnityPy.load(sys.argv[1])
scripts={}
for obj in env.objects:
    if obj.type.name=='MonoScript':
        try: scripts[(obj.assets_file.name,obj.path_id)]=obj.read().m_ClassName
        except Exception: pass
def rstr(raw,p):
    n=struct.unpack_from('<I',raw,p)[0]; s=raw[p+4:p+4+n]; return s,(p+4+n+3)&~3
want=set(sys.argv[2].split(','))
out=collections.defaultdict(list)
for obj in env.objects:
    if obj.type.name!='MonoBehaviour': continue
    raw=bytes(obj.get_raw_data())
    fid,pid=struct.unpack_from('<ii',raw,12)
    af=obj.assets_file
    fname=af.name if fid==0 else os.path.basename(af.externals[fid-1].path)
    cls=scripts.get((fname,pid),'?')
    if cls in want:
        name,p=rstr(raw,20)
        out[cls].append((af.name,obj.path_id,name.decode('utf-8','replace'),raw[p:p+600].hex()))
json.dump(out,open(sys.argv[3],'w'))
for k,v in out.items(): print(k,len(v))
