# v46 playable prologue (owner 2026-11-10): ModPrologue hooks. Run ONCE on work/smali: python3 src/patch/hooks46_prologue.py work/smali
# - LevelBuilder.getLevelByName: ModPrologue.level(name) first; non-null is returned (the player bay, built by the mod).
# - StorageManager.save / saveConfig / saveInventory: dropped while the prologue runs, so nothing it does reaches the save.
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
P = 'Lfr/testudo/spacecorsair/mod/ModPrologue;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


def method(s, sig):
    i = s.index('.method ' + sig)
    return i, s.index('.end method', i)


def at_prologue(s, sig, body):
    i, k = method(s, sig)
    j = s.index('    .prologue\n', i) + len('    .prologue\n')
    assert j < k, sig
    return s[:j] + body + s[j:]


# LevelBuilder.getLevelByName: the mod's level wins when it returns one
p = 'game/levels/builders/LevelBuilder.smali'; s = rd(p)
assert 'ModPrologue' not in s
s = at_prologue(s, 'private static getLevelByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;',
                '    invoke-static {p0}, ' + P + '->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/Level;\n\n'
                '    move-result-object v0\n\n    if-eqz v0, :pro46_go\n\n    return-object v0\n\n    :pro46_go\n')
wr(p, s)

# StorageManager: every save path is a no-op while the prologue runs
p = 'storage/StorageManager.smali'; s = rd(p)
assert 'ModPrologue' not in s
guard = ('    invoke-static {}, ' + P + '->blockSave()Z\n\n    move-result v0\n\n'
         '    if-eqz v0, :pro46_save\n\n    return-void\n\n    :pro46_save\n')
for sig in ('public save()V', 'public saveConfig()V', 'public saveInventory()V'):
    s = at_prologue(s, sig, guard)
wr(p, s)
print('hooks46_prologue ok')
