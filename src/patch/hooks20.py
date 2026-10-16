# v23: seven secret faction ships. Image MOD_SECRET_<KEY> (ordinals 0x31..0x37, values 0x38); SpaceObjectType
# hullSecret<Key> (ordinals 0x144..0x14a, values 0x14b), specs ModShips.spec(40..46). Run ONCE (after hooks18).
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
KEYS = ['spartan', 'reaver', 'kretari', 'varn', 'ironclad', 'helion', 'warden']
DR = 0x7f02006a
p = B + 'business/loot/stuff/playerShip/PlayerShipSpec$Image.smali'
s = open(p).read()
I = 'Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;'
assert s.count('.field public static final enum ') == 49 and 'MOD_SECRET' not in s
fields = ''.join(f'\n.field public static final enum MOD_SECRET_{k.upper()}:{I}\n' for k in KEYS)
s = s.replace(f'.field public static final enum MOD_DEV_PROTOTYPE:{I}\n', f'.field public static final enum MOD_DEV_PROTOTYPE:{I}\n' + fields, 1)
a = f'    sput-object v0, {I}->MOD_DEV_PROTOTYPE:{I}\n'
assert s.count(a) == 1
s = s.replace(a, a + ''.join(f'''
    new-instance v0, {I}
    const-string v1, "MOD_SECRET_{k.upper()}"
    const/16 v2, {hex(0x31 + i)}
    const v12, {hex(DR)}
    invoke-direct {{v0, v1, v2, v12}}, {I}-><init>(Ljava/lang/String;II)V
    sput-object v0, {I}->MOD_SECRET_{k.upper()}:{I}
''' for i, k in enumerate(KEYS)))
old = f'    const/16 v0, 0x31\n\n    new-array v0, v0, [{I}'
assert old in s
s = s.replace(old, old.replace('0x31', '0x38'))
k0 = s.index(f'    sput-object v0, {I}->$VALUES:')
s = s[:k0] + ''.join(f'''
    const/16 v2, {hex(0x31 + i)}
    sget-object v1, {I}->MOD_SECRET_{k.upper()}:{I}
    aput-object v1, v0, v2
''' for i, k in enumerate(KEYS)) + s[k0:]
open(p, 'w').write(s)

p = B + 'business/loot/SpaceObjectType.smali'
s = open(p).read()
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR = f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
PRICE = [1600000, 3200000, 900000, 1600000, 3000000, 1600000, 900000]
NAMES = ['hullSecret' + k.capitalize() for k in KEYS]
assert 'hullSecretSpartan' not in s and 'repSecretWarden' in s
a = f'.field public static final enum repSecretWarden:{T}\n'
s = s.replace(a, a + ''.join(f'\n.field public static final enum {n}:{T}\n' for n in NAMES), 1)
a = f'    sput-object v0, {T}->repSecretWarden:{T}\n'
assert s.count(a) == 1
s = s.replace(a, a + ''.join(f'''
    new-instance v0, {T}
    const-string v1, "{n}"
    const/16 v2, {hex(0x144 + i)}
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const v4, 0x7f070265
    const/4 v5, 0x1
    const v6, {hex(DR)}
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(PRICE[i])}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    const/16 v10, {hex(40 + i)}
    invoke-static {{v10}}, Lfr/testudo/spacecorsair/mod/ModShips;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{n}:{T}
''' for i, n in enumerate(NAMES)))
old = f'    const/16 v0, 0x144\n\n    new-array v0, v0, [{T}'
assert old in s
s = s.replace(old, old.replace('0x144', '0x14b'))
a2 = f'    sget-object v2, {T}->repSecretWarden:{T}\n    aput-object v2, v0, v1\n'
assert s.count(a2) == 1
s = s.replace(a2, a2 + ''.join(f'''
    const/16 v1, {hex(0x144 + i)}
    sget-object v2, {T}->{n}:{T}
    aput-object v2, v0, v1
''' for i, n in enumerate(NAMES)))
open(p, 'w').write(s)
print('hooks20 ok')
