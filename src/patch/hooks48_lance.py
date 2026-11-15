# v43a-17 Phoenix Lance: 3 SpaceObjectType constants 0x157..0x159 (values 0x15a), specs from ModLance.spec(tier).
# Same constructor as hooks13 / hooks34c. Run ONCE (after hooks34c).
B = 'work/smali/fr/testudo/spacecorsair/'
def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)

NAMES = ["modPhoenixLance", "modPhoenixLanceMk2", "modPhoenixLanceMk3"]
PRICE = [1500000, 3500000, 8000000]   # = ModLance.PRICE

p = 'business/loot/SpaceObjectType.smali'; s = rd(p)
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR = f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
assert 'modPhoenixLance' not in s
entries = [(n, 0x157 + i, i, PRICE[i]) for i, n in enumerate(NAMES)]
fields = ''.join(f'\n.field public static final enum {n}:{T}\n' for n, *_ in entries)
f0 = f'.field public static final enum modBioSpineL15:{T}\n'; assert s.count(f0) == 1
s = s.replace(f0, f0 + fields, 1)
a = f'    sput-object v0, {T}->modBioSpineL15:{T}\n'; assert s.count(a) == 1
code = ''
for n, o, idx, price in entries:
    code += f'''
    new-instance v0, {T}
    const-string v1, "{n}"
    const/16 v2, {hex(o)}
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/16 v5, 0xa
    const v6, 0x7f0200ca
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(price)}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/16 v10, {hex(idx)}
    invoke-static {{v10}}, Lfr/testudo/spacecorsair/mod/ModLance;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{n}:{T}
'''
s = s.replace(a, a + code)
old = f'    const/16 v0, 0x157\n\n    new-array v0, v0, [{T}'; assert s.count(old) == 1; s = s.replace(old, old.replace('0x157', '0x15a'))
a2 = f'    sget-object v2, {T}->modBioSpineL15:{T}\n    aput-object v2, v0, v1\n'; assert s.count(a2) == 1
put = ''
for n, o, *_ in entries:
    put += f'''
    const/16 v1, {hex(o)}
    sget-object v2, {T}->{n}:{T}
    aput-object v2, v0, v1
'''
s = s.replace(a2, a2 + put)
wr(p, s)
print('hooks48_lance ok')
