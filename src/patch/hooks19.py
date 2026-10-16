# v22: the mission screen opened by HAIL (in flight) lists missions like a docked command center. Run ONCE.
import sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/utils/MissionUtils.smali'
s = open(p).read()
sig = '.method public static isDockedToMission()Z\n    .registers 1\n\n    .prologue\n'
assert s.count(sig) == 1 and 'ModComms' not in s
s = s.replace(sig, sig + '''    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->hailing()Z

    move-result v0

    if-eqz v0, :mod_not_hailing

    return v0

    :mod_not_hailing
''')
open(p, 'w').write(s)
print('hooks19 ok')
