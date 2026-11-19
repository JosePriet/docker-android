# v57b (owner 2026-11-19): XpBuilder.getMitigedXp -> ModV34.mitigedXp (0 XP at 10+ levels below, was 4+). Run ONCE.
P = 'work/smali/fr/testudo/spacecorsair/business/player/XpBuilder.smali'
s = open(P).read()
a = s.index('.method public static getMitigedXp(II)F')
b = s.index('.end method', a) + len('.end method')
s = s[:a] + '''.method public static getMitigedXp(II)F
    .registers 3

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModV34;->mitigedXp(II)F

    move-result v0

    return v0
.end method''' + s[b:]
open(P, 'w').write(s)
print('hooks57b_xpwindow ok')
