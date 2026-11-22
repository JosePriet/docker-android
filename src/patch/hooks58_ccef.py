# CCEF (owner 2026-11-22): secret achievement "Escape from Certain Death" (Achievement.escapeCertainDeath).
# - Achievement: new enum constant (ordinal 0x6d, qualitative, threshold 1, secret, success_skull icon). Its name/desc
#   resource ids reuse killByTheDev's (never shown: the hooks below supply the text).
# - Achievement.getLocalizedLabel / getLocalizedDesc: ModCcef.achText(this, desc) first; null = stock text.
# Saves keep achievements by name (AchievementBackup), so old saves load unchanged.
# Run ONCE on work/smali: python3 src/patch/hooks58_ccef.py work/smali
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
p = B + 'game/achievements/Achievement.smali'
s = open(p).read()
A = 'Lfr/testudo/spacecorsair/game/achievements/Achievement;'
assert 'escapeCertainDeath' not in s, 'hooks58_ccef: already applied'

field_old = '.field public static final enum winMultiplayer:' + A + '\n'
assert s.count(field_old) == 1
s = s.replace(field_old, field_old + '\n.field public static final enum escapeCertainDeath:' + A + '\n')

ctor_old = '    sput-object v0, ' + A[:-1] + ';->winMultiplayer:' + A + '\n'
assert s.count(ctor_old) == 1
ctor_new = ctor_old + (
    '\n    new-instance v1, ' + A + '\n\n'
    '    const-string v2, "escapeCertainDeath"\n\n'
    '    const/16 v3, 0x6d\n\n'
    '    const v4, 0x7f0700e3\n\n'
    '    const v5, 0x7f0700e4\n\n'
    '    sget-object v6, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->qualitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;\n\n'
    '    const v7, 0x7f020137\n\n'
    '    const-wide/16 v8, 0x1\n\n'
    '    const/4 v10, 0x1\n\n'
    '    invoke-direct/range {v1 .. v10}, ' + A + '-><init>(Ljava/lang/String;IIILfr/testudo/spacecorsair/game/achievements/AchievementKind;IJZ)V\n\n'
    '    sput-object v1, ' + A[:-1] + ';->escapeCertainDeath:' + A + '\n')
s = s.replace(ctor_old, ctor_new)

arr_old = '    const/16 v0, 0x6d\n\n    new-array v0, v0, [' + A + '\n'
assert s.count(arr_old) == 1
s = s.replace(arr_old, '    const/16 v0, 0x6e\n\n    new-array v0, v0, [' + A + '\n')

put_old = ('    sget-object v2, ' + A[:-1] + ';->winMultiplayer:' + A + '\n\n'
           '    aput-object v2, v0, v1\n')
assert s.count(put_old) == 1
s = s.replace(put_old, put_old + (
    '\n    const/16 v1, 0x6d\n\n'
    '    sget-object v2, ' + A[:-1] + ';->escapeCertainDeath:' + A + '\n\n'
    '    aput-object v2, v0, v1\n'))

for meth, flag in (('getLocalizedLabel', '0x0'), ('getLocalizedDesc', '0x1')):
    old = '.method public ' + meth + '()Ljava/lang/String;\n    .registers 3\n'
    assert s.count(old) == 1, meth
    s = s.replace(old, old + (
        '\n    const/4 v0, ' + flag + '\n\n'
        '    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->achText(' + A + 'Z)Ljava/lang/String;\n\n'
        '    move-result-object v0\n\n'
        '    if-eqz v0, :mod_ccef_stock\n\n'
        '    return-object v0\n\n'
        '    :mod_ccef_stock\n'))
open(p, 'w').write(s)
print('hooks58_ccef: Achievement.escapeCertainDeath + label/desc text hooks')
