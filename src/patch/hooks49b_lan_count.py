# v49 LAN co-op (verify fix): the guest's stand-in on the host is an Ennemis that never dies, so Level's enemy counts
# (zone cleared, enemy count, "more enemies than", attackers of the player / of a target) must not count it.
# In those Level methods, `instance-of vA, vB, Ennemis` becomes ModLan.countsAsEnemy(vB) -> vA (same result otherwise).
# Run ONCE on work/smali: python3 src/patch/hooks49b_lan_count.py work/smali
import sys, re
p = sys.argv[1] + '/fr/testudo/spacecorsair/game/levels/Level.smali'
s = open(p).read()
assert 'ModLan;->countsAsEnemy' not in s, 'hooks49b_lan_count: already applied'
total = 0
for m in ['isZoneEnnemyCleaned()Z', 'countEnemiesInLevel()I', 'isThereMoreEnnemiesThan(I)Z', 'isThereMoreAttackingPlayerEnemiesThan(I)Z',
          'hasMoreThanEnnemiesAttackingTargetThan(ILfr/testudo/spacecorsair/business/Element;)Z']:
    i = s.index('.method public ' + m)
    j = s.index('.end method', i)
    body = s[i:j]
    body2, n = re.subn(r'instance-of (v\d+), (v\d+), Lfr/testudo/spacecorsair/business/ennemis/Ennemis;',
                       r'invoke-static {\2}, Lfr/testudo/spacecorsair/mod/ModLan;->countsAsEnemy(Ljava/lang/Object;)Z\n\n    move-result \1', body)
    assert n >= 1, m
    total += n
    s = s[:i] + body2 + s[j:]
open(p, 'w').write(s)
print('hooks49b_lan_count: %d Ennemis checks in Level now skip the LAN stand-in' % total)
