# v42 police escalation (agent B, plan space-corsair/v42/v42-plan.md "Escalation"). Run ONCE on work/smali.
# - Element.applyDamage: ModPolice.killedByPlayer(this) right after AchievementEventListener.onElementDestroyedByPlayer
#   (the player or a drone, via Mod.creditKiller, destroyed this element: civilian / police kill heat, -2 standing).
# Everything else of v42 police is Java-side (ModQol.civilAttacked, ModLive.hit, ModCaps.tick, ModShield.rate, ModRep).
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
P = 'Lfr/testudo/spacecorsair/mod/ModPolice;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


def method(s, sig):
    i = s.index('.method ' + sig)
    return i, s.index('.end method', i)


p = 'business/Element.smali'; s = rd(p)
assert 'ModPolice' not in s
i, k = method(s, 'public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V')
seg = s[i:k]
a = ('    invoke-static {p0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;'
     '->onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V\n')
assert seg.count(a) == 1, p
seg = seg.replace(a, a + '\n    invoke-static {p0}, ' + P + '->killedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V\n')
s = s[:i] + seg + s[k:]
wr(p, s)
print('hooks42b: Element.applyDamage -> ModPolice.killedByPlayer')
