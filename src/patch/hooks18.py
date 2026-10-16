# v22: seven faction secret weapons (SpaceObjectType 0x13d..0x143, values 0x144), specs from ModRep.spec(i). Run ONCE.
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
p = B + 'business/loot/SpaceObjectType.smali'
s = open(p).read()
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR = f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
assert 'repSecretSpartan' not in s and 'modArcProjectorL15' in s
NAMES = ["repSecretSpartan", "repSecretReaver", "repSecretKretari", "repSecretVarn", "repSecretIronclad", "repSecretHelion", "repSecretWarden"]
fields = ''.join(f'\n.field public static final enum {n}:{T}\n' for n in NAMES)
a = f'.field public static final enum modArcProjectorL15:{T}\n'
assert s.count(a) == 1
s = s.replace(a, a + fields)
a = f'    sput-object v0, {T}->modArcProjectorL15:{T}\n'
assert s.count(a) == 1
code = ''
for i, n in enumerate(NAMES):
    code += f'''
    new-instance v0, {T}
    const-string v1, "{n}"
    const/16 v2, {hex(0x13d + i)}
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/16 v5, 0xa
    const v6, 0x7f0200ca
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, 0x124f80
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/16 v10, {hex(i)}
    invoke-static {{v10}}, Lfr/testudo/spacecorsair/mod/ModRep;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{n}:{T}
'''
s = s.replace(a, a + code)
old = f'    const/16 v0, 0x13d\n\n    new-array v0, v0, [{T}'
assert old in s
s = s.replace(old, old.replace('0x13d', '0x144'))
a2 = f'    sget-object v2, {T}->modArcProjectorL15:{T}\n\n    aput-object v2, v0, v1\n'
if a2 not in s:
    a2 = f'    sget-object v2, {T}->modArcProjectorL15:{T}\n    aput-object v2, v0, v1\n'
assert s.count(a2) == 1
put = ''.join(f'''
    const/16 v1, {hex(0x13d + i)}
    sget-object v2, {T}->{n}:{T}
    aput-object v2, v0, v1
''' for i, n in enumerate(NAMES))
s = s.replace(a2, a2 + put)
open(p, 'w').write(s)
print('hooks18 ok')
