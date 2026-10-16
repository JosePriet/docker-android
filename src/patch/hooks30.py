# v30 hooks. Run ONCE on work/smali.
#  - Shield.doPhysic: the regen amount per second passes through ModShield.rate (EVE curve, enemy rules, reboots)
#  - GameThread.doPhysic: each visible element is queued through ModLive.draw (markers/rims under, glow/plates over)
#  - Element.applyProjectileHit: damage passes through ModLive.hit (shield walls, armour plates) before ModQol.onHit
#  - Element.onDestroyed: ModWreck.onDestroyed (wrecks, player break-up, alien spore death)
#  - GameThread.showDialog: ModDev.noDialog (emulator tests only: /data/local/tmp/corsair_nodialog)
import sys
R = sys.argv[1] + '/fr/testudo/spacecorsair/'
M = 'Lfr/testudo/spacecorsair/mod/'

def edit(path, fn):
    p = R + path
    s = open(p).read()
    t = fn(s)
    assert t != s, path
    open(p, 'w').write(t)

def method(s, header):
    i = s.index(header)
    assert s.count(header) == 1, header
    return i, s.index('.end method', i)

def shield(s):
    i, e = method(s, '.method public doPhysic(J)V\n')
    body = s[i:e]
    assert 'ModShield' not in body
    lab = '    :cond_86\n'
    assert body.count(lab) == 1
    body = body.replace(lab, lab + '    invoke-static {p0, v0}, ' + M + 'ModShield;->rate(Lfr/testudo/spacecorsair/business/player/Shield;F)F\n\n    move-result v0\n\n')
    return s[:i] + body + s[e:]

def draw(s):
    i, e = method(s, '.method private doPhysic(J)V\n')
    body = s[i:e]
    old = '    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V\n'
    assert body.count(old) == 1
    body = body.replace(old, '    invoke-static {v0}, ' + M + 'ModLive;->draw(Lfr/testudo/spacecorsair/business/Element;)V\n')
    return s[:i] + body + s[e:]

def dialog(s):
    i, e = method(s, '.method public showDialog(IIIIZLjava/lang/String;)V\n')
    body = s[i:e]
    pro = '    .prologue\n'
    assert 'ModDev' not in body and body.count(pro) == 1
    body = body.replace(pro, pro + '    invoke-static {p6}, ' + M + 'ModDev;->noDialog(Ljava/lang/String;)Z\n\n    move-result v0\n\n'
                        '    if-eqz v0, :mod_dialog_go\n\n    return-void\n\n    :mod_dialog_go\n')
    return s[:i] + body + s[e:]

def hit(s):
    old = '    invoke-static {p0, v0, p1}, ' + M + 'ModQol;->onHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V\n'
    assert s.count(old) == 1
    return s.replace(old, '    invoke-static {p0, v0, p1}, ' + M + 'ModLive;->hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F\n\n    move-result v0\n')

def destroyed(s):
    i, e = method(s, '.method public onDestroyed(Z)V\n')
    body = s[i:e]
    pro = '    .prologue\n'
    assert 'ModWreck' not in body and body.count(pro) == 1
    body = body.replace(pro, pro + '    invoke-static {p0, p1}, ' + M + 'ModWreck;->onDestroyed(Lfr/testudo/spacecorsair/business/Element;Z)V\n\n')
    return s[:i] + body + s[e:]

edit('business/player/Shield.smali', shield)
edit('engine/GameThread.smali', draw)
edit('engine/GameThread.smali', dialog)
edit('business/Element.smali', hit)
edit('business/Element.smali', destroyed)
print('hooks30 ok')
