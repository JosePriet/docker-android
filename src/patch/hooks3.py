import re
B='work/smali/fr/testudo/spacecorsair/'
T='Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
SP='Lfr/testudo/spacecorsair/mod/ModSpecs;'
def rd(p): return open(B+p).read()
def wr(p,s): open(B+p,'w').write(s)
def method(s,sig):
    i=s.index(sig); j=s.index('.end method',i); return i,j
def after_prologue(s,sig,code):
    i,j=method(s,sig); m=s[i:j]
    k=m.index('.prologue')+len('.prologue') if '.prologue' in m else m.index('\n',m.index('.registers'))+1
    return s[:i]+m[:k]+'\n'+code+'\n'+m[k:]+s[j:]
def before_returns(s,sig,code):
    i,j=method(s,sig); m=s[i:j]
    m=m.replace('    return-void','%s\n    return-void'%code)
    return s[:i]+m+s[j:]

# 1. tier enum constants
p='business/loot/SpaceObjectType.smali'; s=rd(p)
CTOR=f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
fams=['alienBeamLaser','regentBeamLaser','arwingBoltLaser','megatronBattery','megatronSalvo','regentHiveBay']
LASER=0x7f0200ca; MISSILEMOD=0x7f0200e6
prices={1:80000,2:160000,3:300000}; lv={1:5,2:10,3:15}
fields=''; code=''; vals=''; ordn=0xe8
for fi,fn in enumerate(fams):
    for t in (1,2,3):
        name=f'{fn}L{lv[t]}'
        dr=MISSILEMOD if fi>=4 else LASER; w=15 if fi>=4 else 10
        fields+=f'.field public static final enum {name}:{T}\n\n'
        code+=f'''
    new-instance v0, {T}
    const-string v1, "{name}"
    const/16 v2, {hex(ordn)}
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/16 v5, {hex(w)}
    const v6, {hex(dr)}
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(prices[t])}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/4 v10, {hex(fi)}
    const/4 v11, {hex(t)}
    invoke-static {{v10, v11}}, {SP}->gear(II)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{name}:{T}
'''
        vals+=f'''
    const/16 v1, {hex(ordn)}
    sget-object v2, {T}->{name}:{T}
    aput-object v2, v0, v1
'''
        ordn+=1
s=s.replace(f'.field public static final enum megatronShip:{T}\n',f'.field public static final enum megatronShip:{T}\n\n'+fields,1)
a=f'    sput-object v0, {T}->megatronShip:{T}\n'; assert s.count(a)==1; s=s.replace(a,a+code)
old=f'    const/16 v0, 0xe8\n\n    new-array v0, v0, [{T}'; assert old in s; s=s.replace(old,old.replace('0xe8',hex(ordn)))
a2=f'    sget-object v2, {T}->megatronShip:{T}\n\n    aput-object v2, v0, v1\n'
if a2 not in s: a2=f'    sget-object v2, {T}->megatronShip:{T}\n    aput-object v2, v0, v1\n'
assert s.count(a2)==1; s=s.replace(a2,a2+vals)
wr(p,s)

# 2. mission hubs
for p,sig,field,area in [
 ('business/mission/VentoHighMissions.smali','.method private static loadVentoHighMission()V','Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->ventoHighMissions:Ljava/util/List;','VENTOHIGH'),
 ('business/mission/SpartanMissions.smali','.method private static loadSpartanMission()V','Lfr/testudo/spacecorsair/business/mission/SpartanMissions;->spartanMissions:Ljava/util/List;','SPARTAN'),
 ('business/mission/engine/OmicronPrimeMissions.smali','.method private static loadOmicronPrimeMissions()V','Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions;->omicronPrimeMissions:Ljava/util/List;','OMICRON')]:
    s=rd(p)
    s=before_returns(s,sig,f'''    const-string v0, "{area}"
    sget-object v1, {field}
    invoke-static {{v0, v1}}, Lfr/testudo/spacecorsair/mod/ModBoss;->addMissions(Ljava/lang/String;Ljava/util/List;)V
''')
    i,j=method(s,sig); m=s[i:j]; r=int(re.search(r'\.registers (\d+)',m).group(1))
    if r<2: m=m.replace(f'.registers {r}','.registers 2',1); s=s[:i]+m+s[j:]
    wr(p,s)

# 3. texts for fake ids
p='engine/ObjectRegistry.smali'; s=rd(p)
for sig in ('.method public getLocalizedString(I)Ljava/lang/String;','.method public getStringRessource(I)Ljava/lang/String;'):
    s=after_prologue(s,sig,'''    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModBoss;->text(I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :mod_real_text
    return-object v0
    :mod_real_text''')
wr(p,s)

# 4. save sanitizer
p='storage/StorageManager.smali'; s=rd(p)
s=before_returns(s,'.method public restore()V','    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSave;->sanitize()V\n')
wr(p,s)

# 5. kill drops
p='business/ennemis/Ennemis.smali'; s=rd(p)
s=after_prologue(s,'.method public onDestroyed(Z)V','''    if-eqz p1, :mod_no_drop
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLoot;->onEnemyKilled(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    :mod_no_drop''')
wr(p,s)

# 6. camera zoom bonus for big ships
p='engine/Camera.smali'; s=rd(p)
old='''    sget v3, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F
    add-float v1, v2, v3
'''
assert old in s
s=s.replace(old,old+'''    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->zoomBonus()F
    move-result v3
    add-float/2addr v1, v3
''')
wr(p,s)
print('ok, last ordinal',hex(ordn-1))
