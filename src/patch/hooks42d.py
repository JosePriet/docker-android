# v42 (owner 2026-11-03 22:38): no allied ships arrive during defend-zone missions.
# Level's queued-element merge calls ModCalm.add(elements, e) instead of elements.add(e). Run ONCE on work/smali.
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
p = B + 'game/levels/Level.smali'
s = open(p).read()
old = """    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 146
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
"""
new = """    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 146
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModCalm;->add(Ljava/util/List;Lfr/testudo/spacecorsair/business/Element;)V
"""
assert s.count(old) == 1, 'hooks42d: anchor not found (already applied?)'
open(p, 'w').write(s.replace(old, new))
print('hooks42d: Level toAdd merge -> ModCalm.add')
