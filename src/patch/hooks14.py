# v19: faction flagships draw / collide through ModCapitals (GuardianCivilShip prologues). Run ONCE.
B = 'work/smali/fr/testudo/spacecorsair/business/world/civil/GuardianCivilShip.smali'
s = open(B).read()
assert 'ModCapitals' not in s
G = 'Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;'

def pro(sig, regs, code):
    global s
    head = f'.method public {sig}\n    .registers {regs}\n\n    .prologue\n'
    assert s.count(head) == 1, sig
    s = s.replace(head, head + code)

pro('getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;', 2, f'''    invoke-static {{p0}}, Lfr/testudo/spacecorsair/mod/ModCapitals;->drawable({G})Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :mod_cap_d
    return-object v0
    :mod_cap_d
''')
pro('getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;', 2, f'''    invoke-static {{p0}}, Lfr/testudo/spacecorsair/mod/ModCapitals;->physic({G})Lfr/testudo/spacecorsair/engine/Vector2;
    move-result-object v0
    if-eqz v0, :mod_cap_p
    return-object v0
    :mod_cap_p
''')
pro('pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z', 11, f'''    invoke-static {{p0, p1}}, Lfr/testudo/spacecorsair/mod/ModCapitals;->prune({G}Lfr/testudo/spacecorsair/business/Element;)I
    move-result v0
    if-ltz v0, :mod_cap_c
    return v0
    :mod_cap_c
''')
pro('registerYourselfToDrawQueue()V', 13, f'''    invoke-static {{p0}}, Lfr/testudo/spacecorsair/mod/ModCapitals;->draw({G})Z
    move-result v0
    if-eqz v0, :mod_cap_r
    return-void
    :mod_cap_r
''')
open(B, 'w').write(s)
print('hooks14 ok')
