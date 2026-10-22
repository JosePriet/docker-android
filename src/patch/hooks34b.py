# v34 (F1): stock transports can fly as one of the retired industrial hulls (NPC freighters). Run ONCE.
# - TransportCivilShip.initLevelConfig: ModV34.freighter(this) before it returns (picks a hull or the stock look).
# - TransportCivilShip.getDrawableObject: ModV34.freighterArt(this, stock drawable).
import re, sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/business/world/civil/TransportCivilShip.smali'
s = open(p).read()
V = 'Lfr/testudo/spacecorsair/mod/ModV34;'
T = 'Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;'
D = 'Lfr/testudo/spacecorsair/display/Drawable;'
m = re.search(r'\.method public initLevelConfig\(.*?\.end method', s, re.S)
b = m.group(0); assert b.count('    return-object p0') == 1
s = s.replace(b, b.replace('    return-object p0', '    invoke-static {p0}, ' + V + '->freighter(' + T + ')V\n\n    return-object p0'))
a = '    sget-object v0, ' + T + '->drawable:' + D + '\n\n    return-object v0'
assert s.count(a) == 1, s.count(a)
s = s.replace(a, '    sget-object v0, ' + T + '->drawable:' + D + '\n\n    invoke-static {p0, v0}, ' + V + '->freighterArt(' + T + D + ')' + D + '\n\n    move-result-object v0\n\n    return-object v0')
open(p, 'w').write(s)
print('hooks34b ok')
