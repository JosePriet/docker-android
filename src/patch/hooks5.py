import re
B='work/smali/fr/testudo/spacecorsair/'
def rd(p): return open(B+p).read()
def wr(p,s): open(B+p,'w').write(s)
def method(s,sig):
    i=s.index(sig); j=s.index('.end method',i); return i,j
NEW=[('hullComet','comet','RARE',30000),('hullKite','kite','FINE',18000),('hullTalon','talon','EXCEPTIONAL',70000),('hullNightjar','nightjar','EXCEPTIONAL',90000),
('hullSeraph','seraph','RARE',80000),('hullAurora','aurora','EXCEPTIONAL',160000),('hullRaven','raven','EXCEPTIONAL',180000),
('hullBulldog','bulldog','RARE',70000),('hullIronside','ironside','RARE',350000),('hullFoundry','foundry','EXCEPTIONAL',500000),
('hullTidewarden','tidewarden','RARE',55000),('hullCobalt','cobalt','EXCEPTIONAL',170000),('hullMantis','mantis','RARE',320000),('hullHydra','hydra','EXCEPTIONAL',620000),
('hullCardinal','cardinal','EXCEPTIONAL',700000),('hullVerdant','verdant','RARE',1000000),('hullSovereign','sovereign','EXCEPTIONAL',1500000),('hullSunlance','sunlance','EXCEPTIONAL',1600000),
('hullGraywall','graywall','EXCEPTIONAL',900000),('hullImperator','imperator','RARE',3200000),('hullWraith','wraith','EXCEPTIONAL',5500000),('hullBastille','bastille','EXCEPTIONAL',6000000),('hullMoth','moth','LEGENDARY',12000000)]
DR=0x7f02006a
# Image enum
p='business/loot/stuff/playerShip/PlayerShipSpec$Image.smali'; s=rd(p)
I='Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;'
cnt=len(re.findall(r'\.field public static final enum ',s)); assert cnt==24, cnt
fields=''; code=''; vals=''
for k,(sid,art,rar,pr) in enumerate(NEW):
    nm='MOD_'+art.upper(); o=24+k
    fields+=f'.field public static final enum {nm}:{I}\n\n'
    code+=f'''
    new-instance v0, {I}
    const-string v1, "{nm}"
    const/16 v2, {hex(o)}
    const v12, {hex(DR)}
    invoke-direct {{v0, v1, v2, v12}}, {I}-><init>(Ljava/lang/String;II)V
    sput-object v0, {I}->{nm}:{I}
'''
    vals+=f'''
    const/16 v2, {hex(o)}
    sget-object v1, {I}->{nm}:{I}
    aput-object v1, v0, v2
'''
s=s.replace(f'.field public static final enum MOD_LEVIATHAN:{I}\n',f'.field public static final enum MOD_LEVIATHAN:{I}\n\n'+fields,1)
a=f'    sput-object v0, {I}->MOD_LEVIATHAN:{I}\n'; assert s.count(a)==1; s=s.replace(a,a+code)
old='    const/16 v0, 0x18\n\n    new-array v0, v0, [%s'%I; assert old in s; s=s.replace(old,old.replace('0x18',hex(24+len(NEW))))
i=s.index(f'    sput-object v0, {I}->$VALUES:'); s=s[:i]+vals+s[i:]
wr(p,s)
# SpaceObjectType
p='business/loot/SpaceObjectType.smali'; s=rd(p)
T='Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR=f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
base=0x109; fields=''; code=''; vals=''
for k,(sid,art,rar,pr) in enumerate(NEW):
    o=base+k
    fields+=f'.field public static final enum {sid}:{T}\n\n'
    code+=f'''
    new-instance v0, {T}
    const-string v1, "{sid}"
    const/16 v2, {hex(o)}
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->{rar}:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/4 v5, 0x1
    const v6, {hex(DR)}
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(pr)}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/16 v10, {hex(15+k)}
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
last='hullLeviathan'
s=s.replace(f'.field public static final enum {last}:{T}\n',f'.field public static final enum {last}:{T}\n\n'+fields,1)
a=f'    sput-object v0, {T}->{last}:{T}\n'; assert s.count(a)==1; s=s.replace(a,a+code)
old=f'    const/16 v0, 0x109\n\n    new-array v0, v0, [{T}'; assert old in s, 'values size'; s=s.replace(old,old.replace('0x109',hex(base+len(NEW))))
a2=f'    sget-object v2, {T}->{last}:{T}\n    aput-object v2, v0, v1\n'; assert s.count(a2)==1; s=s.replace(a2,a2+vals)
wr(p,s); print('ok')
