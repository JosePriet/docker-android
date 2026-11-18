# v46 (owner 2026-11-18): the flight menu bar gets a Multiplayer entry (1.5.1 lost the original one). Run ONCE.
# MenuDisplayer.init -> ModLanUi.menuEntry(context, menuView) after the six stock entries are wired;
# MenuDisplayer.showMenu -> ModLanUi.menuShown() after the bar is made visible (label shows the link state).
P = 'work/smali/fr/testudo/spacecorsair/utils/MenuDisplayer.smali'
s = open(P).read()
M = 'Lfr/testudo/spacecorsair/utils/MenuDisplayer;'
old = '''    .line 211
    invoke-static {}, %s->updateSelectedLayout()V
''' % M
assert s.count(old) == 1
s = s.replace(old, old + '''
    sget-object v0, %s->menuView:Landroid/view/View;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menuEntry(Landroid/content/Context;Landroid/view/View;)V
''' % M)
old2 = '''    .line 273
    sget-object v0, %s->menuView:Landroid/view/View;
''' % M
assert s.count(old2) == 1
s = s.replace(old2, '''    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLanUi;->menuShown()V

''' + old2)
open(P, 'w').write(s)
print('hooks56_mpmenu ok')
