# v45 audit F5 (owner 2026-11-17): the test-mode teleport ignores missions that forbid jumping.
# PlayerShip.initHyperdriveJumpRequest: the mission's canHyperdriveJump() answer goes through ModTestMode.missionAllowsJump. Run ONCE.
B = 'work/smali/fr/testudo/spacecorsair/'
p = B + 'business/player/PlayerShip.smali'
s = open(p).read()
assert 'ModTestMode;->missionAllowsJump' not in s
old = '''    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->canHyperdriveJump()Z

    move-result v0

    if-nez v0, :cond_16
'''
assert s.count(old) == 1
new = '''    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->canHyperdriveJump()Z

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTestMode;->missionAllowsJump(Z)Z

    move-result v0

    if-nez v0, :cond_16
'''
s = s.replace(old, new)
open(p, 'w').write(s)
print('hooks54_testjump ok')
