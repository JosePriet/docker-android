# v43a-9 (owner 2026-11-14 06:09): police ships fire their own faction's weapons.
# Level.commitChanges: before toAdd is merged, ModPolice.factionGuns(toAdd) swaps stock EnergyLaser shots fired by
# built police hulls for faction-family EnergyBullets (same damage, position, speed, spin, lifetime).
# Run ONCE on work/smali: python3 src/patch/hooks47_policeguns.py work/smali
import sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/game/levels/Level.smali'
s = open(p).read()
old = (".method public commitChanges()V\n    .registers 7\n\n    .prologue\n    const/4 v1, 0x0\n")
new = (".method public commitChanges()V\n    .registers 7\n\n    .prologue\n"
       "    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;\n\n"
       "    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->factionGuns(Ljava/util/List;)V\n\n"
       "    const/4 v1, 0x0\n")
assert s.count(old) == 1, 'hooks47_policeguns: anchor (already applied?)'
open(p, 'w').write(s.replace(old, new))
print('hooks47_policeguns: Level.commitChanges -> ModPolice.factionGuns(toAdd)')
