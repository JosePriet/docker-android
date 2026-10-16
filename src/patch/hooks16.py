# v21: faction mission chains (ModFaction). Run ONCE on work/smali (asserts guard re-runs).
#  a) MissionRepository.getAvaillableMission: before the return, ModFaction.addAvailable(levelId, list)
#  b) MissionRepository.getMissionById: ModFaction.byId(id) first (restores a faction mission after a restart)
import re, sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
p = B + 'business/mission/MissionRepository.smali'
s = open(p).read()
assert 'ModFaction' not in s


def method(s, sig):
    i = s.index(sig)
    return i, s.index('.end method', i)


i, j = method(s, '.method public getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;')
m = s[i:j]
assert m.count('    return-object v0') == 1
m = m.replace('    return-object v0', '    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->addAvailable(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;)V\n\n    return-object v0')
s = s[:i] + m + s[j:]

i, j = method(s, '.method public getMissionById(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;')
m = s[i:j]
assert '    .prologue\n' in m and re.search(r'\.registers (\d+)', m).group(1) == '6'
m = m.replace('    .prologue\n', '''    .prologue
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->byId(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v0

    if-eqz v0, :mod_faction_none

    return-object v0

    :mod_faction_none
''', 1)
s = s[:i] + m + s[j:]
open(p, 'w').write(s)
print('hooks16 ok')
