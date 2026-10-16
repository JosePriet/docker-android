import re
B='work/smali/fr/testudo/spacecorsair/'
def rd(p): return open(B+p).read()
def wr(p,s): open(B+p,'w').write(s)
def method(s,sig):
    i=s.index(sig); j=s.index('.end method',i); return i,j
HULLS=[('hullViper','viper',0x7f02006a,'RARE',15000),('hullShade','shade',0x7f02013c,'EXCEPTIONAL',45000),
 ('hullBastion','bastion',0x7f020067,'RARE',60000),('hullHornet','hornet',0x7f02009f,'EXCEPTIONAL',140000),
 ('hullAlbatros','albatros',0x7f0200e1,'RARE',300000),('hullRaptor','raptor',0x7f0200e1,'EXCEPTIONAL',650000),
 ('hullSanctum','sanctum',0x7f0200e1,'EXCEPTIONAL',600000),('hullMule','mule',0x7f02005d,'FINE',50000),
 ('hullTortoise','tortoise',0x7f02005c,'RARE',220000),('hullBulwark','bulwark',0x7f020142,'EXCEPTIONAL',420000),
 ('hullWarlord','warlord',0x7f0200fe,'EXCEPTIONAL',1200000),('hullHarbinger','harbinger',0x7f0200fe,'EXCEPTIONAL',1300000),
 ('hullMonolith','monolith',0x7f020065,'RARE',3000000),('hullTempest','tempest',0x7f020065,'EXCEPTIONAL',5000000),
 ('hullLeviathan','leviathan',0x7f020065,'LEGENDARY',25000000)]
# 1. Image enum slots
p='business/loot/stuff/playerShip/PlayerShipSpec$Image.smali'; s=rd(p)
I='Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;'
fields=''; code=''; vals=''
for k,(sid,art,dr,rar,pr) in enumerate(HULLS):
    nm='MOD_'+art.upper(); o=9+k
    fields+=f'.field public static final enum {nm}:{I}\n\n'
    code+=f'''
    new-instance v0, {I}
    const-string v1, "{nm}"
    const/16 v2, {hex(o)}
    const v12, {hex(dr)}
    invoke-direct {{v0, v1, v2, v12}}, {I}-><init>(Ljava/lang/String;II)V
    sput-object v0, {I}->{nm}:{I}
'''
    vals+=f'''
    const/16 v2, {hex(o)}
    sget-object v1, {I}->{nm}:{I}
    aput-object v1, v0, v2
'''
s=s.replace(f'.field public static final enum POLICE:{I}\n',f'.field public static final enum POLICE:{I}\n\n'+fields,1)
a=f'    sput-object v0, {I}->POLICE:{I}\n'; assert s.count(a)==1; s=s.replace(a,a+code)
old=f'    const/16 v0, 0x9\n\n    new-array v0, v0, [{I}'; assert old in s; s=s.replace(old,old.replace('0x9',hex(9+len(HULLS))))
i=s.index(f'    sput-object v0, {I}->$VALUES:'); s=s[:i]+vals+s[i:]
i,j=method(s,'.method static constructor <clinit>()V'); m=s[i:j]; r=int(re.search(r'\.registers (\d+)',m).group(1))
if r<13: m=m.replace(f'.registers {r}','.registers 13',1); s=s[:i]+m+s[j:]
wr(p,s)
# 2. SpaceObjectType ship entries
p='business/loot/SpaceObjectType.smali'; s=rd(p)
T='Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR=f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
fields=''; code=''; vals=''; base=0xfa
for k,(sid,art,dr,rar,pr) in enumerate(HULLS):
    o=base+k
    fields+=f'.field public static final enum {sid}:{T}\n\n'
    code+=f'''
    new-instance v0, {T}
    const-string v1, "{sid}"
    const/16 v2, {hex(o)}
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->{rar}:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/4 v5, 0x1
    const v6, {hex(dr)}
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(pr)}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/16 v10, {hex(k)}
    invoke-static {{v10}}, Lfr/testudo/spacecorsair/mod/ModShips;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{sid}:{T}
'''
    vals+=f'''
    const/16 v1, {hex(o)}
    sget-object v2, {T}->{sid}:{T}
    aput-object v2, v0, v1
'''
last='regentHiveBayL15'
s=s.replace(f'.field public static final enum {last}:{T}\n',f'.field public static final enum {last}:{T}\n\n'+fields,1)
a=f'    sput-object v0, {T}->{last}:{T}\n'; assert s.count(a)==1; s=s.replace(a,a+code)
old=f'    const/16 v0, 0xfa\n\n    new-array v0, v0, [{T}'; assert old in s; s=s.replace(old,old.replace('0xfa',hex(base+len(HULLS))))
a2=f'    sget-object v2, {T}->{last}:{T}\n    aput-object v2, v0, v1\n'; assert s.count(a2)==1; s=s.replace(a2,a2+vals)
wr(p,s)
# 3. texture loader
p='game/Game.smali'; s=rd(p)
i,j=method(s,'.method public loadTextures(Ljavax/microedition/khronos/opengles/GL10;)V'); m=s[i:j]
k=m.index('.prologue')+len('.prologue')
m=m[:k]+'''
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;
    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->load(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
'''+m[k:]
s=s[:i]+m+s[j:]; wr(p,s)
# 4. ship screen icon
p='activity/viewgroup/SpaceShipItem.smali'; s=rd(p)
old='    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V\n'
assert s.count(old)==1
s=s.replace(old,old+'''
    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModArt;->shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
''')
wr(p,s)
# 5. cargo
p='business/player/Inventory.smali'; s=rd(p)
i,j=method(s,'.method public getCapacityInTon()I'); 
s=s[:i]+'''.method public getCapacityInTon()I
    .registers 3
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->capacityInTon:I
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z
    if-eqz v1, :plain
    int-to-float v0, v0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShips;->cargoMult()F
    move-result v1
    mul-float/2addr v0, v1
    float-to-int v0, v0
    :plain
    return v0
'''+s[j:]
wr(p,s)
# 6. hull licence
p='business/player/PlayerInfo.smali'; s=rd(p)
i,j=method(s,'.method public buyShipAndEquip('); m=s[i:j]
k=m.index('.prologue')+len('.prologue')
m=m[:k]+'''
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->canBuy(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    move-result v0
    if-nez v0, :mod_licensed
    return-void
    :mod_licensed
'''+m[k:]
s=s[:i]+m+s[j:]; wr(p,s)
print('ok')
