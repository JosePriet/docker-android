# v37 wrecks (owner 2026-10-30): blast push marked on wreck pieces, alien beams stop at wreck pieces. Run ONCE.
# - Missile.applyRadiusDamage(F) / Mine.applyRadiusDamage(): element.speed.add(push) -> ModWreck.blastPush(element, push).
# - UfoAlienShip / AlienBlatte doAttackIa (beam damage + impact sparks) and registerYourselfToDrawQueue (beam end):
#   attackTarget -> ModWreck.beamTarget(this, attackTarget).
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
W = 'Lfr/testudo/spacecorsair/mod/ModWreck;'
E = 'Lfr/testudo/spacecorsair/business/Element;'
V = 'Lfr/testudo/spacecorsair/engine/Vector2;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


for p, cls, el, tv in (('business/projectiles/Missile.smali', 'projectiles/Missile', 'v0', 'v4'),
                       ('business/world/Mine.smali', 'world/Mine', 'v0', 'v1')):
    s = rd(p)
    a = ('    iget-object %s, %s, %s->speed:%s\n\n    iget-object %s, p0, Lfr/testudo/spacecorsair/business/%s;->tempVector:%s\n\n'
         '    invoke-virtual {%s, %s}, %s->add(%s)%s\n') % (el, el, E, V, tv, cls, V, el, tv, V, V, V)
    assert s.count(a) == 1 and 'ModWreck' not in s, p
    s = s.replace(a, ('    iget-object %s, p0, Lfr/testudo/spacecorsair/business/%s;->tempVector:%s\n\n'
                      '    invoke-static {%s, %s}, %s->blastPush(%s%s)V\n') % (tv, cls, V, el, tv, W, E, V))
    wr(p, s)

CALL = '\n    invoke-static {p0, %s}, ' + W + '->beamTarget(' + E + E + ')' + E + '\n\n    move-result-object %s\n'
for cls, start, end, n in (('UfoAlienShip', '    :cond_33\n', '    :cond_57\n', 3), ('AlienBlatte', '    :cond_58\n', '    :cond_87\n', 2)):
    p = 'business/ennemis/' + cls + '.smali'; s = rd(p)
    assert 'ModWreck' not in s, p
    m0 = s.index('.method protected doAttackIa(JJ)V'); i = s.index(start, m0); k = s.index(end, i)
    seg = s[i:k]
    t = '    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/' + cls + ';->attackTarget:' + E + '\n'
    assert seg.count(t) == n and 'applyProjectileHit' in seg, p
    s = s[:i] + seg.replace(t, t + CALL % ('v0', 'v0')) + s[k:]
    d = ('    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/' + cls + ';->attackTarget:' + E + '\n\n'
         '    iget-object v1, v1, ' + E + '->position:' + V + '\n')
    assert s.count(d) == 1, p
    s = s.replace(d, d.replace('\n\n    iget-object v1, v1', '\n' + CALL % ('v1', 'v1') + '\n    iget-object v1, v1'))
    wr(p, s)
print('hooks37_wreck ok')
