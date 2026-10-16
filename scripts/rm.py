import UnityPy, sys, json
env = UnityPy.load(sys.argv[1])
for obj in env.objects:
    if obj.type.name == 'ResourceManager':
        af = obj.assets_file
        print('file', af.name, 'externals', len(af.externals))
        ext = [e.path for e in af.externals]
        try:
            tt = obj.read_typetree()
            print(list(tt.keys()))
            cont = tt['m_Container']
            out = []
            for k, v in cont:
                fid, pid = v['m_FileID'], v['m_PathID']
                f = af.name if fid == 0 else ext[fid-1]
                out.append((k, f, pid))
            json.dump(out, open(sys.argv[2],'w'))
            print(len(out))
        except Exception as e:
            import traceback; traceback.print_exc()
            d = obj.read()
            print(type(d), dir(d)[:50])
