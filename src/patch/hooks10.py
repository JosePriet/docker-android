# v16.8: Missile.getDrawableObject asks ModArt.missile first (green X-0 missiles). Run ONCE.
B = 'work/smali/fr/testudo/spacecorsair/'
p = B + 'business/projectiles/Missile.smali'
s = open(p).read()
assert 'ModArt;->missile' not in s
old = '''.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
'''
assert s.count(old) == 1
new = old + '''    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->missile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :mod_missile_stock
    return-object v0
    :mod_missile_stock
'''
s = s.replace(old, new)
open(p, 'w').write(s)
print('hooks10 ok')
