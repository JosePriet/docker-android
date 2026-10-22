# v34 (H3): reskin weapon families Flak (Reaver), Lance (Helion), Bio-spines (Kre'tari): 12 SpaceObjectType constants
# 0x14b..0x156 (values 0x157), specs from ModWeapons.reskinSpec(i). Same constructor as hooks13. Run ONCE (after hooks20).
B = 'work/smali/fr/testudo/spacecorsair/'
def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)

BASE = ["modFlak", "modLance", "modBioSpine"]
LV = [0, 5, 10, 15]
PRICE = [30000, 90000, 250000, 600000]
RAR = ['RARE', 'EXCEPTIONAL', 'EXCEPTIONAL', 'LEGENDARY']

p = 'business/loot/SpaceObjectType.smali'; s = rd(p)
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR = f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
assert 'modFlak' not in s
entries = []
o = 0x14b
for f, b in enumerate(BASE):
    for t in range(4):
        n = b if t == 0 else f'{b}L{LV[t]}'
        entries.append((n, o, f * 4 + t, PRICE[t], RAR[t]))
        o += 1
assert o == 0x157
fields = ''.join(f'\n.field public static final enum {n}:{T}\n' for n, *_ in entries)
s = s.replace(f'.field public static final enum hullSecretWarden:{T}\n', f'.field public static final enum hullSecretWarden:{T}\n' + fields, 1)
a = f'    sput-object v0, {T}->hullSecretWarden:{T}\n'; assert s.count(a) == 1
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
    invoke-static {{v10}}, Lfr/testudo/spacecorsair/mod/ModWeapons;->reskinSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{n}:{T}
'''
s = s.replace(a, a + code)
old = f'    const/16 v0, 0x14b\n\n    new-array v0, v0, [{T}'; assert old in s; s = s.replace(old, old.replace('0x14b', '0x157'))
a2 = f'    sget-object v2, {T}->hullSecretWarden:{T}\n    aput-object v2, v0, v1\n'; assert s.count(a2) == 1
put = ''
for n, o, *_ in entries:
    put += f'''
    const/16 v1, {hex(o)}
    sget-object v2, {T}->{n}:{T}
    aput-object v2, v0, v1
'''
s = s.replace(a2, a2 + put)
wr(p, s)
print('hooks34c ok')
