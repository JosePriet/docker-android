# v40 test mode (owner 2026-11-03): profile swap around StorageManager.restore, free instant hyperdrive jumps,
# every mission listed, hidden LOGIN on the achievements screen. Run ONCE on work/smali.
# - StorageManager.restore: ModTestMode.beforeRestore() first; ModTestMode.afterRestore() after ModSave.sanitize().
# - PathFinder.canJumpTo / couldJump / jumpCost: ModTestMode answer first (-1 = stock rule).
# - PlayerShip.initHyperdriveJumpRequest: charge time 5000 ms -> ModTestMode.jumpTime().
# - MissionRepository.getAvaillableMission: the done / prerequisite filter is skipped while ModTestMode.on.
# - AchievementActivity$1.onAchevementClicked: ModTestMode.achievementTap(activity, achievement) first (true = handled).
# - AchievementActivity.bindUI: ModTestMode.achievementsScreen(this) before return.
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
T = 'Lfr/testudo/spacecorsair/mod/ModTestMode;'
L = 'Lfr/testudo/spacecorsair/game/levels/LevelId;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


def method(s, sig):
    i = s.index('.method ' + sig)
    return i, s.index('.end method', i)


def after_prologue(s, sig, code):
    i, k = method(s, sig)
    j = s.index('    .prologue\n', i)
    assert j < k, sig
    j += len('    .prologue\n')
    return s[:j] + code + s[j:]


# StorageManager.restore
p = 'storage/StorageManager.smali'; s = rd(p)
assert 'ModTestMode' not in s
s = after_prologue(s, 'public restore()V', '    invoke-static {}, ' + T + '->beforeRestore()V\n\n')
a = '    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSave;->sanitize()V\n'
assert s.count(a) == 1
s = s.replace(a, a + '\n    invoke-static {}, ' + T + '->afterRestore()V\n')
wr(p, s)

# PathFinder: test answer first
p = 'business/world/PathFinder.smali'; s = rd(p)
assert 'ModTestMode' not in s
for name, ret in (('canJumpTo', 'Z'), ('couldJump', 'Z'), ('jumpCost', 'I')):
    sig = 'public static %s(%s)%s' % (name, L, ret)
    s = after_prologue(s, sig, ('    invoke-static {p0}, %s->%s(%s)I\n\n    move-result v0\n\n    if-ltz v0, :tm40_%s\n\n'
                                '    return v0\n\n    :tm40_%s\n') % (T, name, L, name, name))
wr(p, s)

# PlayerShip.initHyperdriveJumpRequest: charge time
p = 'business/player/PlayerShip.smali'; s = rd(p)
assert 'ModTestMode' not in s
i, k = method(s, 'public initHyperdriveJumpRequest(' + L + ')V')
seg = s[i:k]
a = ('    const/16 v0, 0x1388\n\n'
     '    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I\n')
assert seg.count(a) == 1
seg = seg.replace(a, '    invoke-static {}, ' + T + '->jumpTime()I\n\n    move-result v0\n\n'
                  '    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I\n')
s = s[:i] + seg + s[k:]
wr(p, s)

# MissionRepository.getAvaillableMission: no done / prerequisite filter in test mode
p = 'business/mission/MissionRepository.smali'; s = rd(p)
assert 'ModTestMode' not in s
i, k = method(s, 'public getAvaillableMission(' + L + ')Ljava/util/List;')
seg = s[i:k]
a = '    :cond_38\n    new-instance v2, Ljava/util/ArrayList;\n\n    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V\n'
if seg.count(a) != 1:
    import re
    m = re.search(r'    :cond_38\n(?:    \.line \d+\n)?    new-instance v2, Ljava/util/ArrayList;\n\n    invoke-direct \{v2\}, Ljava/util/ArrayList;-><init>\(\)V\n', seg)
    assert m, p
    a = m.group(0)
assert ':cond_7b' in seg
seg = seg.replace(a, a + '\n    sget-boolean v4, ' + T + '->on:Z\n\n    if-nez v4, :cond_7b\n')
s = s[:i] + seg + s[k:]
wr(p, s)

# Achievements screen
p = 'activity/AchievementActivity$1.smali'; s = rd(p)
assert 'ModTestMode' not in s
s = after_prologue(s, 'public onAchevementClicked(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V',
                   '    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;\n\n'
                   '    invoke-static {v0, p1}, ' + T + '->achievementTap(Ljava/lang/Object;Lfr/testudo/spacecorsair/game/achievements/Achievement;)Z\n\n'
                   '    move-result v0\n\n    if-eqz v0, :tm40_go\n\n    return-void\n\n    :tm40_go\n')
wr(p, s)

p = 'activity/AchievementActivity.smali'; s = rd(p)
assert 'ModTestMode' not in s
i, k = method(s, 'public bindUI()V')
seg = s[i:k]
a = '    :cond_2a\n    return-void\n'
assert seg.count(a) == 1
seg = seg.replace(a, '    :cond_2a\n    invoke-static {p0}, ' + T + '->achievementsScreen(Ljava/lang/Object;)V\n\n    return-void\n')
s = s[:i] + seg + s[k:]
wr(p, s)
print('hooks40 ok')
