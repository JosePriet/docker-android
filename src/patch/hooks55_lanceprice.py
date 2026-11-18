# v43a-17b (owner 2026-11-18): Phoenix Lance Mk I/II/III shop prices to 25% (1.5M/3.5M/8M -> 375k/875k/2M). Run ONCE (after hooks48_lance).
P = 'work/smali/fr/testudo/spacecorsair/business/loot/SpaceObjectType.smali'
s = open(P).read()
for name, old, new in [("modPhoenixLance", 1500000, 375000), ("modPhoenixLanceMk2", 3500000, 875000), ("modPhoenixLanceMk3", 8000000, 2000000)]:
    head = f'    const-string v1, "{name}"\n'
    assert s.count(head) == 1, name
    i = s.index(head)
    seg_end = s.index('sput-object v0', i)
    seg = s[i:seg_end]
    o = f'    const v9, {hex(old)}\n'
    assert seg.count(o) == 1, name
    s = s[:i] + seg.replace(o, f'    const v9, {hex(new)}\n') + s[seg_end:]
open(P, 'w').write(s)
print('hooks55_lanceprice ok')
