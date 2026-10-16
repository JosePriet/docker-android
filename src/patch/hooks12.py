# v17: capital-ship visuals + titan weapons. Run ONCE.
B = 'work/smali/fr/testudo/spacecorsair/'


def edit(path, fn):
    s = open(B + path).read()
    s2 = fn(s)
    assert s2 != s, path
    open(B + path, 'w').write(s2)


# a) PlayerShip.registerYourselfToDrawQueue: overlays after the hull (single return, all paths)
def a(s):
    i = s.index('.method public registerYourselfToDrawQueue()V')
    j = s.index('.end method', i)
    body = s[i:j]
    assert 'ModCaps;->drawOver' not in body and body.count('return-void') == 1
    body = body.replace('    return-void', '    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V\n\n    return-void')
    return s[:i] + body + s[j:]
edit('business/player/PlayerShip.smali', a)


# b) EnergyBullet.getDrawableObject: titan bolts
def b(s):
    old = '''.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
'''
    assert s.count(old) == 1 and 'ModTitan;->bullet' not in s
    return s.replace(old, old + '''    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :mod_bullet_stock
    return-object v0
    :mod_bullet_stock
''')
edit('business/projectiles/EnergyBullet.smali', b)


# c) PlayerShip.shootMissile: siege missile stats + launch flash, before it joins the level
def c(s):
    i = s.index('.method private shootMissile(I)V')
    j = s.index('.end method', i)
    body = s[i:j]
    old = '''    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
'''
    assert body.count(old) == 1
    body = body.replace(old, '''    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitan;->onMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

''' + old)
    return s[:i] + body + s[j:]
edit('business/player/PlayerShip.smali', c)


# d) Missile.onDestroyed: blast range from ModTitan (350 for everyone else)
def d(s):
    i = s.index('.method public onDestroyed(Z)V')
    j = s.index('.end method', i)
    body = s[i:j]
    old = '''    const/high16 v0, 0x43af0000    # 350.0f
'''
    assert body.count(old) == 1
    body = body.replace(old, '''    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->blastRange(Lfr/testudo/spacecorsair/business/projectiles/Missile;)F

    move-result v0
''')
    return s[:i] + body + s[j:]
edit('business/projectiles/Missile.smali', d)
print('hooks12 ok')
