# v16.5 economy hooks. Run ONCE from $S on work/smali (in-place, not idempotent: asserts guard re-runs).
import re
B = 'work/smali/fr/testudo/spacecorsair/'
Q = 'Lfr/testudo/spacecorsair/mod/ModQol;'

def patch(path, old, new, count=1):
    p = B + path
    s = open(p).read()
    assert s.count(old) == count, (path, s.count(old))
    s = s.replace(old, new)
    open(p, 'w').write(s)
    print('ok', path)

# 1) MissionReward.<init>: credit amount through ModQol.missionCredits
patch('business/mission/MissionReward.smali',
      '    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->creditReward:I\n',
      '    invoke-static {p3}, ' + Q + '->missionCredits(I)I\n\n    move-result p3\n\n'
      '    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->creditReward:I\n')

# 2) Ennemis.onDestroyed: bounty right after the XP grant (v0 = mitigated xp)
patch('business/ennemis/Ennemis.smali',
      '    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V\n\n    .line 241\n',
      '    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V\n\n'
      '    invoke-static {p0, v0}, ' + Q + '->bounty(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V\n\n    .line 241\n')

# 3) Price.getSellPrice: fixed-price sell factor 0.15 -> ModQol.sellFactor()
patch('business/economy/Price.smali',
      '    const v1, 0x3e19999a    # 0.15f\n\n    mul-float/2addr v0, v1\n',
      '    invoke-static {}, ' + Q + '->sellFactor()F\n\n    move-result v1\n\n    mul-float/2addr v0, v1\n')
