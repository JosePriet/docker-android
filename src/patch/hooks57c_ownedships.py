# v57c (owner 2026-11-19): ship unlock levels moved up; a ship the pilot already owns stays equipable. Run ONCE.
# SpaceObjectType.canEquip -> true first when ModV34.ownedShip(this).
P = 'work/smali/fr/testudo/spacecorsair/business/loot/SpaceObjectType.smali'
s = open(P).read()
old = '''.method public canEquip()Z
    .registers 3

    .prologue
'''
assert s.count(old) == 1
s = s.replace(old, old + '''    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->ownedShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :own57_no

    return v0

    :own57_no
''')
open(P, 'w').write(s)
print('hooks57c_ownedships ok')
