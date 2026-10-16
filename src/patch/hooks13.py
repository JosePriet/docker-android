# v18: weapon families (24 SpaceObjectType constants 0x125..0x13c, values 0x13d) + EnergyBullet impact hook. Run ONCE.
B = 'work/smali/fr/testudo/spacecorsair/'
def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)

BASE = ["modRailgun", "modAutocannon", "modArtillery", "modBlaster", "modDisintegrator", "modArcProjector"]
LV = [0, 5, 10, 15]
PRICE = [30000, 90000, 250000, 600000]
RAR = ['RARE', 'EXCEPTIONAL', 'EXCEPTIONAL', 'LEGENDARY']

p = 'business/loot/SpaceObjectType.smali'; s = rd(p)
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR = f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
assert 'modRailgun' not in s
entries = []
o = 0x125
for f, b in enumerate(BASE):
    for t in range(4):
        n = b if t == 0 else f'{b}L{LV[t]}'
        entries.append((n, o, f * 4 + t, PRICE[t], RAR[t]))
        o += 1
assert o == 0x13d
fields = ''.join(f'\n.field public static final enum {n}:{T}\n' for n, *_ in entries)
s = s.replace(f'.field public static final enum hullDev:{T}\n', f'.field public static final enum hullDev:{T}\n' + fields, 1)
a = f'    sput-object v0, {T}->hullDev:{T}\n'; assert s.count(a) == 1
code = ''
for n, o, idx, price, rar in entries:
    code += f'''
    new-instance v0, {T}
    const-string v1, "{n}"
    const/16 v2, {hex(o)}
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->{rar}:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/16 v5, 0xa
    const v6, 0x7f0200ca
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(price)}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/16 v10, {hex(idx)}
    invoke-static {{v10}}, Lfr/testudo/spacecorsair/mod/ModWeapons;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{n}:{T}
'''
s = s.replace(a, a + code)
old = f'    const/16 v0, 0x125\n\n    new-array v0, v0, [{T}'; assert old in s; s = s.replace(old, old.replace('0x125', '0x13d'))
a2 = f'    sget-object v2, {T}->hullDev:{T}\n    aput-object v2, v0, v1\n'; assert s.count(a2) == 1
put = ''
for n, o, *_ in entries:
    put += f'''
    const/16 v1, {hex(o)}
    sget-object v2, {T}->{n}:{T}
    aput-object v2, v0, v1
'''
s = s.replace(a2, a2 + put)
wr(p, s)

p = 'business/projectiles/EnergyBullet.smali'; s = rd(p)
old = '''.method public onImpactWithElement(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
'''
assert s.count(old) == 1 and 'ModWeapons;->onImpact' not in s
s = s.replace(old, old + '''    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->onImpact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V

''')
wr(p, s)
print('hooks13 ok')
