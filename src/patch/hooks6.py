# v16 hooks: QoL layer (ModQol / ModUi) + Crimson Throne titan enum slots. Run ONCE on work/smali (not idempotent).
import re, sys
B = 'work/smali/fr/testudo/spacecorsair/'
Q = 'Lfr/testudo/spacecorsair/mod/ModQol;'
def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)
def method(s, sig):
    i = s.index(sig); j = s.index('.end method', i); return i, j
def in_method(s, sig, old, new, count=1):
    i, j = method(s, sig); m = s[i:j]
    assert m.count(old) >= 1, (sig, old[:60])
    m = m.replace(old, new, count)
    return s[:i] + m + s[j:]
def after_prologue(s, sig, code):
    i, j = method(s, sig); m = s[i:j]
    k = m.index('.prologue') + len('.prologue') if '.prologue' in m else m.index('\n', m.index('.registers'))
    m = m[:k] + '\n' + code + '\n' + m[k:]
    return s[:i] + m + s[j:]
def bump_regs(s, sig, n):
    i, j = method(s, sig); m = s[i:j]
    r = int(re.search(r'\.registers (\d+)', m).group(1))
    if r < n: m = m.replace(f'.registers {r}', f'.registers {n}', 1)
    return s[:i] + m + s[j:]

# 1. Tech I hulls repair for free
p = 'business/player/XpBuilder.smali'; s = rd(p)
i, j = method(s, '.method public static getDeathMoneyPenality()I')
s = s[:i] + f'''.method public static getDeathMoneyPenality()I
    .registers 1

    .prologue
    invoke-static {{}}, {Q}->deathFee()I

    move-result v0

    return v0
''' + s[j:]
wr(p, s)

# 2. gate labels
p = 'business/world/Portal.smali'; s = rd(p)
s = in_method(s, '.method public registerYourselfToDrawQueue()V',
    'TextSize;)V\n\n    goto :goto_b',
    f'TextSize;)V\n\n    invoke-static {{p0}}, {Q}->gateLabel(Lfr/testudo/spacecorsair/business/world/Portal;)V\n\n    goto :goto_b')
wr(p, s)

# 3. HUD numbers / inbox notice (end of drawHud) and 4. bigger buttons (end of initLaserAndMissileButonPos)
p = 'engine/GameRenderer.smali'; s = rd(p)
i, j = method(s, '.method public drawHud(Ljavax/microedition/khronos/opengles/GL10;)V')
m = s[i:j]; assert m.count('return-void') == 1
m = m.replace('    return-void', f'    invoke-static {{p1}}, {Q}->drawHud(Ljavax/microedition/khronos/opengles/GL10;)V\n\n    return-void')
s = s[:i] + m + s[j:]
i, j = method(s, '.method public static initLaserAndMissileButonPos()V')
m = s[i:j]; assert m.count('return-void') == 1
m = m.replace('    return-void', f'    invoke-static {{}}, {Q}->buttons()V\n\n    return-void')
s = s[:i] + m + s[j:]
wr(p, s)

# 5. damage numbers + shake: right before applyDamage in applyProjectileHit
p = 'business/Element.smali'; s = rd(p)
call = '    invoke-virtual {p0, v0, v4, p1}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V'
s = in_method(s, '.method public applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V', call,
    f'    invoke-static {{p0, v0, p1}}, {Q}->onHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V\n\n' + call)
wr(p, s)

# 6. level-up notices
p = 'business/player/PlayerInfo.smali'; s = rd(p)
i, j = method(s, '.method private onLevelUp()V'); m = s[i:j]; assert m.count('return-void') == 1
m = m.replace('    return-void', f'    invoke-static {{p0}}, {Q}->onLevelUp(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V\n\n    return-void')
s = s[:i] + m + s[j:]
wr(p, s)

# 7. settings screen options
p = 'activity/SettingsActivity.smali'; s = rd(p)
i, j = method(s, '.method public bindUI()V'); m = s[i:j]; assert m.count('return-void') == 1
m = m.replace('    return-void', f'    invoke-static {{p0}}, {Q}->settings(Ljava/lang/Object;)V\n\n    return-void')
s = s[:i] + m + s[j:]
wr(p, s)

# 8. confirm before selling Rare+ items
p = 'activity/StationActivity$1.smali'; s = rd(p)
sig = '.method public onItemPick(ILfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V'
s = after_prologue(s, sig, f'''    invoke-static {{p0, p1, p2, p3}}, {Q}->confirmSell(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :mod_sell_go

    return-void

    :mod_sell_go''')
wr(p, s)

# 9. screen shake: camera centre goes through ModQol.camCenter
p = 'engine/Camera.smali'; s = rd(p)
s = in_method(s, '.method public snapToTarget(Ljava/lang/Long;)V',
    '    iget-object v2, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;\n    iput-object v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;',
    f'    iget-object v2, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;\n    invoke-static {{v2, v0}}, {Q}->camCenter(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;\n    move-result-object v2\n    iput-object v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;')
wr(p, s)

# 10. optional floating joystick
p = 'display/hud/Joystick.smali'; s = rd(p)
s = after_prologue(s, '.method public static doesTouche(II)Z', f'''    invoke-static {{p0, p1}}, {Q}->joyTouch(II)I

    move-result v0

    if-ltz v0, :mod_joy_orig

    return v0

    :mod_joy_orig''')
s = after_prologue(s, '.method public static setFingerUp()V', f'    invoke-static {{}}, {Q}->joyUp()V')
wr(p, s)

# 11. galaxy map: level range, shop marker, mission highlight
p = 'engine/GameThread.smali'; s = rd(p)
rec = '    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/engine/GameThread;->displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V'
s = in_method(s, '.method private displayLevelOfGalaxy(Lfr/testudo/spacecorsair/game/levels/LevelId;)V', rec,
    f'    invoke-static {{p1}}, {Q}->galaxyExtra(Lfr/testudo/spacecorsair/game/levels/LevelId;)V\n\n' + rec)
wr(p, s)

# 12. police response in sectors without their own (base LevelAnimator only)
p = 'game/levels/LevelAnimator.smali'; s = rd(p)
s = after_prologue(s, '.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V',
    f'    invoke-static {{p1}}, {Q}->civilAttacked(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V')
wr(p, s)

# 13. police scaling (Highway: always above the pilot, no level ceiling)
p = 'business/world/civil/CivilFactory.smali'; s = rd(p)
sig = '.method public static newPolice(I)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;'
s = bump_regs(s, sig, 4)
s = after_prologue(s, sig, '    move v2, p0')
s = in_method(s, sig, '    return-object v0',
    f'    invoke-static {{v0, v2}}, {Q}->policeLevel(Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;I)V\n\n    return-object v0')
wr(p, s)

# 14. Crimson Throne titan: Image MOD_CRIMSON_THRONE (ordinal 47), SpaceObjectType hullThrone (ordinal 0x120), ModShips.spec(38)
DR = 0x7f02006a
p = 'business/loot/stuff/playerShip/PlayerShipSpec$Image.smali'; s = rd(p)
I = 'Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;'
assert len(re.findall(r'\.field public static final enum ', s)) == 47
nm = 'MOD_CRIMSON_THRONE'
s = s.replace(f'.field public static final enum MOD_MOTH:{I}\n', f'.field public static final enum MOD_MOTH:{I}\n\n.field public static final enum {nm}:{I}\n', 1)
a = f'    sput-object v0, {I}->MOD_MOTH:{I}\n'; assert s.count(a) == 1
s = s.replace(a, a + f'''
    new-instance v0, {I}
    const-string v1, "{nm}"
    const/16 v2, 0x2f
    const v12, {hex(DR)}
    invoke-direct {{v0, v1, v2, v12}}, {I}-><init>(Ljava/lang/String;II)V
    sput-object v0, {I}->{nm}:{I}
''')
old = f'    const/16 v0, 0x2f\n\n    new-array v0, v0, [{I}'; assert old in s; s = s.replace(old, old.replace('0x2f', '0x30'))
k = s.index(f'    sput-object v0, {I}->$VALUES:')
s = s[:k] + f'''
    const/16 v2, 0x2f
    sget-object v1, {I}->{nm}:{I}
    aput-object v1, v0, v2
''' + s[k:]
wr(p, s)

p = 'business/loot/SpaceObjectType.smali'; s = rd(p)
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR = f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
sid = 'hullThrone'
s = s.replace(f'.field public static final enum hullMoth:{T}\n', f'.field public static final enum hullMoth:{T}\n\n.field public static final enum {sid}:{T}\n', 1)
a = f'    sput-object v0, {T}->hullMoth:{T}\n'; assert s.count(a) == 1
s = s.replace(a, a + f'''
    new-instance v0, {T}
    const-string v1, "{sid}"
    const/16 v2, 0x120
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/4 v5, 0x1
    const v6, {hex(DR)}
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(22000000)}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/16 v10, 0x26
    invoke-static {{v10}}, Lfr/testudo/spacecorsair/mod/ModShips;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{sid}:{T}
''')
old = f'    const/16 v0, 0x120\n\n    new-array v0, v0, [{T}'; assert old in s; s = s.replace(old, old.replace('0x120', '0x121'))
a2 = f'    sget-object v2, {T}->hullMoth:{T}\n    aput-object v2, v0, v1\n'; assert s.count(a2) == 1
s = s.replace(a2, a2 + f'''
    const/16 v1, 0x120
    sget-object v2, {T}->{sid}:{T}
    aput-object v2, v0, v1
''')
wr(p, s)
print('hooks6 ok')
