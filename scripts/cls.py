import UnityPy, sys, collections
env = UnityPy.load(sys.argv[1])
c=collections.Counter(); err=0
for obj in env.objects:
    if obj.type.name!='MonoBehaviour': continue
    try:
        mb=obj.read(); c[mb.m_Script.read().m_ClassName]+=1
    except Exception as e: err+=1
print(err); print(c.most_common(400))
