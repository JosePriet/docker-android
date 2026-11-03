# v42 missile tracking (owner 2026-11-03: "some missiles are not tracking enemies as they should"). Run ONCE.
# Usage: python3 src/patch/hooks42a.py <smali root>   (e.g. work/smali)
# - PlayerShip.fetchEnnemisTarget(Element, long): ModMissile.fetch answers while ModMissile.on (one hostility rule:
#   hostile civil / police / flagships in, allied police / pirate-injured civilians / Hive drones out, beam target first).
# - Missile.doIa, lit branch: ModMissile.track(this) before the stock "target == null: return" test, so a homing
#   player missile with no target (or a dead one) re-acquires the nearest hostile.
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
M = 'Lfr/testudo/spacecorsair/mod/ModMissile;'
E = 'Lfr/testudo/spacecorsair/business/Element;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


def method(s, sig):
    i = s.index('.method ' + sig)
    return i, s.index('.end method', i)


# PlayerShip.fetchEnnemisTarget: mod answer first
p = 'business/player/PlayerShip.smali'; s = rd(p)
sig = 'public static fetchEnnemisTarget(' + E + 'J)' + E
i, k = method(s, sig)
seg = s[i:k]
assert 'ModMissile' not in seg
a = '    .registers 14\n\n    .prologue\n'
assert seg.count(a) == 1, p
seg = seg.replace(a, a + '    sget-boolean v0, ' + M + '->on:Z\n\n    if-eqz v0, :mm42_stock\n\n'
                  '    invoke-static {p0, p1, p2}, ' + M + '->fetch(' + E + 'J)' + E + '\n\n'
                  '    move-result-object v0\n\n    return-object v0\n\n    :mm42_stock\n')
s = s[:i] + seg + s[k:]
wr(p, s)

# Missile.doIa: re-acquire before the null-target test
p = 'business/projectiles/Missile.smali'; s = rd(p)
i, k = method(s, 'public doIa(Ljava/lang/Long;)V')
seg = s[i:k]
assert 'ModMissile' not in seg
a = ('    :cond_2e\n    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:' + E + '\n\n'
     '    if-eqz v0, :cond_2d\n')
assert seg.count(a) == 1, p
seg = seg.replace(a, '    :cond_2e\n    invoke-static {p0}, ' + M + '->track(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V\n\n'
                  + a[len('    :cond_2e\n'):])
s = s[:i] + seg + s[k:]
wr(p, s)
print('hooks42a ok')
