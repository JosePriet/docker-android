# v30b: ModLive.frameStart() at the start of GameThread.doPhysic (one call per game frame, before any element). Run ONCE.
import sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/engine/GameThread.smali'
s = open(p).read()
h = '.method private doPhysic(J)V\n'
assert s.count(h) == 1
i = s.index(h); e = s.index('.end method', i)
body = s[i:e]
assert 'frameStart' not in body
pro = '    .prologue\n'
assert body.count(pro) == 1
body = body.replace(pro, pro + '    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLive;->frameStart()V\n\n')
open(p, 'w').write(s[:i] + body + s[e:])
print('hooks30b ok')
