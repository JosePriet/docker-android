# v34: level cap 40, enemy curve and stock spawn levels. Run ONCE on work/smali (log in work/HOOKS_APPLIED.txt).
# - XpBuilder: LEVEL_MAX 17 -> 40; XP_CAP and PLAYER_SHIP_LIFE come from ModV34 (41 entries); getNextLevelXp cap 40.
# - PlayerInfo.addXp: stops at 40 instead of 17.
# - EnnemisFactory.newX(I): ModV34.want(level) first (the factory clamps the level to its table).
# - every stock initLevelConfig: ModV34.scale(this) before it returns; Ennemis.setElite(Z): ModV34.elite(this).
# - stock builders and mission engines: EnnemisFactory calls go through ModStockSpawn (stock level -> 0-40 scale).
import re, sys, glob
root = sys.argv[1] + '/fr/testudo/spacecorsair/'
V = 'Lfr/testudo/spacecorsair/mod/ModV34;'

def rd(p): return open(root + p).read()
def wr(p, s): open(root + p, 'w').write(s)

p = 'business/player/XpBuilder.smali'; s = rd(p)
s = s.replace('.field public static final LEVEL_MAX:I = 0x11', '.field public static final LEVEL_MAX:I = 0x28', 1)
a = '    const/16 v0, 0x14\n\n    new-array v0, v0, [J\n\n    fill-array-data v0, :array_52\n'
assert s.count(a) == 1; s = s.replace(a, '    invoke-static {}, ' + V + '->xpCap()[J\n\n    move-result-object v0\n')
a = '    const/16 v0, 0x18\n\n    new-array v0, v0, [I\n\n    fill-array-data v0, :array_a6\n'
assert s.count(a) == 1; s = s.replace(a, '    invoke-static {}, ' + V + '->shipLife()[I\n\n    move-result-object v0\n')
a = '    .line 31\n    const/16 v0, 0x11\n'
assert s.count(a) == 1; s = s.replace(a, '    .line 31\n    const/16 v0, 0x28\n')
wr(p, s)

p = 'business/player/PlayerInfo.smali'; s = rd(p)
a = '    .line 93\n    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I\n\n    const/16 v1, 0x11\n'
assert s.count(a) == 1; s = s.replace(a, a.replace('0x11', '0x28'))
wr(p, s)

p = 'business/ennemis/EnnemisFactory.smali'; s = rd(p)
s, n = re.subn(r'(\.method public static new\w+\(I\)L[^\n]+\n    \.registers \d+\n\n    \.prologue\n)', r'\1    invoke-static {p0}, ' + V + r'->want(I)V\n\n', s)
assert n == 11, n
wr(p, s)

ENN = 'Lfr/testudo/spacecorsair/business/ennemis/Ennemis;'
for c in ['Albatros', 'AlienBlatte', 'AlienRat', 'AlienTourelle', 'BasicEnnemyShip', 'DefensorShip', 'FixedTourelle', 'FrelonShip', 'RocketTourelle', 'TaupeShip', 'UfoAlienShip']:
    p = 'business/ennemis/' + c + '.smali'; s = rd(p)
    m = re.search(r'\.method public initLevelConfig\(.*?\.end method', s, re.S)
    body = m.group(0)
    assert body.count('return-object') == 1, c
    nb = re.sub(r'(\n    )(return-object \w+)', r'\1invoke-static {p0}, ' + V + r'->scale(' + ENN + r')V\n\1\2', body)
    wr(p, s.replace(body, nb))

p = 'business/ennemis/Ennemis.smali'; s = rd(p)
m = re.search(r'\.method public setElite\(Z\).*?\.end method', s, re.S)
body = m.group(0); assert body.count('return-object p0') == 1
wr(p, s.replace(body, body.replace('    return-object p0', '    invoke-static {p0}, ' + V + '->elite(' + ENN + ')V\n\n    return-object p0')))

n = 0
for f in glob.glob(root + '**/*.smali', recursive=True):
    if '/mod/' in f or f.endswith('/EnnemisFactory.smali') or f.endswith('/AlienBlatte.smali'): continue
    s = open(f).read()
    if 'EnnemisFactory;->' not in s: continue
    k = s.count('Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->')
    s = s.replace('Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->', 'Lfr/testudo/spacecorsair/mod/ModStockSpawn;->')
    open(f, 'w').write(s); n += k
print('hooks34 ok, stock spawn calls redirected:', n)
