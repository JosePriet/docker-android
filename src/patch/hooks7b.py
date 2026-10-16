# v16.5: mod hull prices in the SpaceObjectType enum <clinit>, taken from ModShips.java (single source of truth).
import re
J = 'src/java/fr/testudo/spacecorsair/mod/ModShips.java'
P = 'work/smali/fr/testudo/spacecorsair/business/loot/SpaceObjectType.smali'
prices = {m.group(1): int(m.group(2)) for m in re.finditer(
    r'new Hull\("([^"]+)", "[^"]+", [A-Z]+, [0-9], "[^"]+", "[^"]+", [0-9]+, [0-9]+, ([0-9]+)', open(J).read())}
s = open(P).read()
n = 0
for hid, price in prices.items():
    pat = re.compile(r'(const-string v1, "' + re.escape(hid) + r'"\n(?:(?!sput-object).*\n)*?\s*const v9, )(0x[0-9a-f]+)(\n\s*invoke-static \{v9\}, Lfr/testudo/spacecorsair/business/economy/Price;->newStatic)')
    s, k = pat.subn(lambda m: m.group(1) + hex(price) + m.group(3), s)
    assert k == 1, (hid, k)
    n += 1
open(P, 'w').write(s)
print('hull prices patched:', n)
