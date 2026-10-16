# v24: repair items and full repairs reset the shield reboot charges (ModShield.onRepair). Run ONCE.
import sys
root = sys.argv[1] + '/fr/testudo/spacecorsair/business/player/'
CALL = '    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->onRepair()V\n\n'
def hook(fname, header):
    p = root + fname
    s = open(p).read()
    i = s.index(header)
    assert s.count(header) == 1
    j = s.index('    .prologue\n', i)
    assert j < s.index('.end method', i)
    k = j + len('    .prologue\n')
    assert 'ModShield' not in s[i:s.index('.end method', i)]
    s = s[:k] + CALL + s[k:]
    open(p, 'w').write(s)
hook('PlayerInfo.smali', '.method public repairShipInPourc(I)I\n')
hook('PlayerInfo.smali', '.method public onUsedInstantRepair()V\n')
hook('PlayerInfo.smali', '.method public onUsedInstantRepairDeluxe()V\n')
hook('PlayerShip.smali', '.method public setFullLifeAndShieldUp()V\n')
print('hooks21_shield ok')
