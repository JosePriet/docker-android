# v16.6: DEV kit enum slots. Image MOD_DEV_PROTOTYPE (ordinal 48); SpaceObjectType devOverclockLaser/devPhaseShield/
# devSwarmMissile/hullDev (ordinals 0x121..0x124, values 0x125). Run ONCE on work/smali (asserts guard re-runs).
B = 'work/smali/fr/testudo/spacecorsair/'
def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)

DR = 0x7f02006a
p = 'business/loot/stuff/playerShip/PlayerShipSpec$Image.smali'; s = rd(p)
I = 'Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;'
assert s.count('.field public static final enum ') == 48
nm = 'MOD_DEV_PROTOTYPE'
s = s.replace(f'.field public static final enum MOD_CRIMSON_THRONE:{I}\n', f'.field public static final enum MOD_CRIMSON_THRONE:{I}\n\n.field public static final enum {nm}:{I}\n', 1)
a = f'    sput-object v0, {I}->MOD_CRIMSON_THRONE:{I}\n'; assert s.count(a) == 1
s = s.replace(a, a + f'''
    new-instance v0, {I}
    const-string v1, "{nm}"
    const/16 v2, 0x30
    const v12, {hex(DR)}
    invoke-direct {{v0, v1, v2, v12}}, {I}-><init>(Ljava/lang/String;II)V
    sput-object v0, {I}->{nm}:{I}
''')
old = f'    const/16 v0, 0x30\n\n    new-array v0, v0, [{I}'; assert old in s; s = s.replace(old, old.replace('0x30', '0x31'))
k = s.index(f'    sput-object v0, {I}->$VALUES:')
s = s[:k] + f'''
    const/16 v2, 0x30
    sget-object v1, {I}->{nm}:{I}
    aput-object v1, v0, v2
''' + s[k:]
wr(p, s)

p = 'business/loot/SpaceObjectType.smali'; s = rd(p)
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
CTOR = f'{T}-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/business/loot/LootRarety;IIIZZLfr/testudo/spacecorsair/business/economy/Price;Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;I)V'
LEG = 'Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;'
# name, ordinal, weight, drawable, price, spec call
entries = [
    ('devOverclockLaser', 0x121, 10, 0x7f0200ca, 1000, 'const/4 v10, 0x0\n    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModDev;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;'),
    ('devPhaseShield', 0x122, 10, 0x7f0200d0, 1000, 'const/4 v10, 0x1\n    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModDev;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;'),
    ('devSwarmMissile', 0x123, 10, 0x7f0200e6, 1000, 'const/4 v10, 0x2\n    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModDev;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;'),
    ('hullDev', 0x124, 1, DR, 999999999, 'const/16 v10, 0x27\n    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModShips;->spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;'),
]
fields = ''.join(f'\n.field public static final enum {n}:{T}\n' for n, *_ in entries)
s = s.replace(f'.field public static final enum hullThrone:{T}\n', f'.field public static final enum hullThrone:{T}\n' + fields, 1)
a = f'    sput-object v0, {T}->hullThrone:{T}\n'; assert s.count(a) == 1
code = ''
for n, o, w, d, price, specs in entries:
    code += f'''
    new-instance v0, {T}
    const-string v1, "{n}"
    const/16 v2, {hex(o)}
    sget-object v3, {LEG}
    const v4, 0x7f070265
    const/16 v5, {hex(w)}
    const v6, {hex(d)}
    const/4 v7, 0x0
    const/4 v8, 0x1
    const v9, {hex(price)}
    invoke-static {{v9}}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic(I)Lfr/testudo/spacecorsair/business/economy/Price;
    move-result-object v9
    {specs}
    move-result-object v10
    const v11, 0x7f0700ee
    invoke-direct/range {{v0 .. v11}}, {CTOR}
    sput-object v0, {T}->{n}:{T}
'''
s = s.replace(a, a + code)
old = f'    const/16 v0, 0x121\n\n    new-array v0, v0, [{T}'; assert old in s; s = s.replace(old, old.replace('0x121', '0x125'))
a2 = f'    sget-object v2, {T}->hullThrone:{T}\n    aput-object v2, v0, v1\n'; assert s.count(a2) == 1
put = ''
for n, o, *_ in entries:
    put += f'''
    const/16 v1, {hex(o)}
    sget-object v2, {T}->{n}:{T}
    aput-object v2, v0, v1
'''
s = s.replace(a2, a2 + put)
wr(p, s)
print('hooks8 ok')
