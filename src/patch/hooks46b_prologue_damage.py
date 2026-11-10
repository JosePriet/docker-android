# v46 fix (verifier finding 3): the engine kills the player synchronously inside applyDamage, so a single Bloodforge
# salvo between two frames could run the stock death screen, credit penalty and achievements during the prologue.
# PlayerShip.applyDamage: the incoming damage goes through ModPrologue.damage(ps, amount) first, which caps it to the
# hull floor while the prologue runs (0 during the end beat) and returns it unchanged otherwise.
# Run ONCE on work/smali: python3 src/patch/hooks46b_prologue_damage.py work/smali
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
P = 'Lfr/testudo/spacecorsair/mod/ModPrologue;'
p = 'business/player/PlayerShip.smali'
s = open(B + p).read()
assert 'ModPrologue' not in s
sig = '.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V'
i = s.index(sig)
k = s.index('.end method', i)
j = s.index('    .prologue\n', i) + len('    .prologue\n')
assert j < k
body = ('    invoke-static {p0, p1}, ' + P + '->damage(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)F\n\n'
        '    move-result p1\n\n')
open(B + p, 'w').write(s[:j] + body + s[j:])
print('hooks46b_prologue_damage ok')
