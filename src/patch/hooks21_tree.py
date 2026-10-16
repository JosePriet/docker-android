# v25 (optional): BACK on a ship page returns to the faction ship tree (ModShipTree), BACK on the tree leaves as before.
# Start of ShipsActivity_.onKeyDown: ModShipTree.onKey(activity, keyCode, event) -> true = consumed (super.onKeyDown is not
# called, so the key is not tracked and onBackPressed never runs). ModShipTree also catches BACK in Java through a focused
# 1x1 key-catcher view; this hook only covers the case where that view lost focus. Run ONCE.
import sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/activity/ShipsActivity_.smali'
s = open(p).read()
sig = '.method public onKeyDown(ILandroid/view/KeyEvent;)Z\n    .registers 5\n\n    .prologue\n'
assert s.count(sig) == 1 and 'ModShipTree' not in s
s = s.replace(sig, sig + '''    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->onKey(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :mod_tree_pass

    return v0

    :mod_tree_pass
''')
open(p, 'w').write(s)
print('hooks21_tree ok')
