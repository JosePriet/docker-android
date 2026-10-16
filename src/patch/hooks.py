import re,sys
B='work/smali/fr/testudo/spacecorsair/'
MOD='Lfr/testudo/spacecorsair/mod/Mod;'
SPECS='Lfr/testudo/spacecorsair/mod/ModSpecs;'
EL='Lfr/testudo/spacecorsair/business/Element;'
PS='Lfr/testudo/spacecorsair/business/player/PlayerShip;'
def rd(p): return open(B+p).read()
def wr(p,s): open(B+p,'w').write(s)
def method(s,sig):
    i=s.index(sig); j=s.index('.end method',i); return i,j
def after_prologue(s,sig,code):
    i,j=method(s,sig); m=s[i:j]; k=m.index('.prologue')+len('.prologue')
    return s[:i]+m[:k]+'\n'+code+'\n'+m[k:]+s[j:]
def replace_body(s,sig,body):
    i,j=method(s,sig); return s[:i]+body.strip()+'\n'+s[j+len('.end method\n'):]
def in_method(s,sig,old,new,count=1):
    i,j=method(s,sig); m=s[i:j]; assert m.count(old)>=1,(sig,old); m=m.replace(old,new) if count==0 else m.replace(old,new,count)
    return s[:i]+m+s[j:]

# 1. Element: drone-aware friendly fire + kill credit
s=rd('business/Element.smali')
s=after_prologue(s,'.method public applyProjectileHit(',f'''    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:{EL}
    if-eqz v0, :mod_orig
    invoke-static {{v0, p0}}, {MOD}->sideCheck({EL}{EL})I
    move-result v0
    if-eqz v0, :mod_orig
    const/4 v1, 0x1
    if-ne v0, v1, :mod_hit
    return-void
    :mod_hit
    const/4 v1, 0x1
    const/4 v2, 0x0
    goto :cond_11
    :mod_orig''')
s=after_prologue(s,'.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V',
f'''    invoke-static {{p2}}, {MOD}->creditKiller({EL}){EL}
    move-result-object p2''')
wr('business/Element.smali',s)

# 2. Ennemis: drones never switch to the player
s=rd('business/ennemis/Ennemis.smali')
s=after_prologue(s,'.method private checkIfPlayerDetected()V',f'''    invoke-static {{p0}}, {MOD}->isDrone({EL})Z
    move-result v0
    if-eqz v0, :mod_not_drone
    return-void
    :mod_not_drone''')
wr('business/ennemis/Ennemis.smali',s)

# 3. PlayerShip
s=rd('business/player/PlayerShip.smali')
s=in_method(s,'.method public doPhysic(J)V',f'    invoke-direct {{p0}}, {PS}->beamPreFrame()V',
  f'    invoke-direct {{p0}}, {PS}->beamPreFrame()V\n    invoke-static {{p0, p1, p2}}, {MOD}->tick({PS}J)V')
s=replace_body(s,'.method private beamShoot()Z',f'''.method private beamShoot()Z
    .registers 2
    invoke-static {{p0}}, {MOD}->beamShoot({PS})Z
    move-result v0
    return v0
.end method''')
s=replace_body(s,'.method private drawBeam()V',f'''.method private drawBeam()V
    .registers 1
    invoke-static {{p0}}, {MOD}->drawBeam({PS})V
    return-void
.end method''')
s=replace_body(s,'.method public getDrawableObject()',f'''.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2
    invoke-static {{p0}}, {MOD}->frame({PS})Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :plain
    return-object v0
    :plain
    sget-object v0, {PS}->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;
    return-object v0
.end method''')
s=after_prologue(s,'.method public ensureImageLoaded()V',f'    invoke-static {{}}, {MOD}->fixTextures()V')
s=after_prologue(s,'.method public requestMissileShoot()V',f'''    invoke-static {{p0}}, {MOD}->launchDrones({PS})Z
    move-result v0
    if-eqz v0, :mod_normal_missile
    return-void
    :mod_normal_missile''')
s=in_method(s,'.method private shootEnergyBullet(','invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z',
  f'invoke-static {{v1, v0}}, {MOD}->addBullet(Ljava/util/List;Ljava/lang/Object;)Z')
s=in_method(s,'.method public shoot()V','invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playPlayerLaser()V',
  f'invoke-static {{}}, {MOD}->playLaserSound()V')
s=s.rstrip()+f'''

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 2
    invoke-super {{p0, p1}}, {EL}->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    invoke-static {{p0, p1}}, {MOD}->onMissileLock({PS}Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    return-void
.end method
'''
wr('business/player/PlayerShip.smali',s)

# 4. PlayerCanon
s=rd('business/player/PlayerCanon.smali')
s=in_method(s,'.method private processShoot(','invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z',
  f'invoke-static {{v3, v2}}, {MOD}->addBullet(Ljava/util/List;Ljava/lang/Object;)Z')
s=in_method(s,'.method public requestShoot()V','invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playPlayerLaser()V',
  f'invoke-static {{}}, {MOD}->playLaserSound()V')
wr('business/player/PlayerCanon.smali',s)
print('hooks ok')
