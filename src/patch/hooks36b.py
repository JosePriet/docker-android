# v36b (owner 2026-10-30: "gold with a bigger dot"): minimap asteroid dots 2 -> 3 px, big asteroids 3 -> 4.5 px (same ratio). Run ONCE.
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/business/world/'
for cls, old, new in (('Asteroid', '    const/high16 v0, 0x40000000    # 2.0f\n', '    const/high16 v0, 0x40400000    # 3.0f\n'),
                      ('BigAsteroid', '    const/high16 v0, 0x40400000    # 3.0f\n', '    const/high16 v0, 0x40900000    # 4.5f\n')):
    p = B + cls + '.smali'; s = open(p).read()
    a = old + '\n    iput v0, p0, Lfr/testudo/spacecorsair/business/world/' + cls + ';->radarPointSize:F\n'
    assert s.count(a) == 1, p
    s = s.replace(a, a.replace(old, new))
    open(p, 'w').write(s)
print('hooks36b ok')
