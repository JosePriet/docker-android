# v30c: RenderQueue holds 2500 drawables per frame instead of 1000 (v30 rims, markers, glow layers, wrecks).
# Every 0x3e8 literal in RenderQueue.smali is the per-frame capacity (field constant, array sizes, bound checks). Run ONCE.
import sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/engine/RenderQueue.smali'
s = open(p).read()
n = s.count('0x3e8')
assert n == 13, n
s = s.replace('0x3e8', '0x9c4')
open(p, 'w').write(s)
print('hooks30c ok', n)
