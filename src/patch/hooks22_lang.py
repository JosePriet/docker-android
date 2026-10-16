# v25-es: force the mod language (ModLang pref "lang") before any resource use. Run ONCE.
# - prologue of every activity onCreate(Bundle): CommonActivity (Main + all), each AndroidAnnotations *_ subclass
#   (they run init_ before super.onCreate), FragmentActivity (ShipsActivity)
# - SpaceCorsairApplication.onCreate after super.onCreate
import sys, glob, os
root = sys.argv[1]
ACT = '    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V\n'
def hook_prologue(p):
    s = open(p).read()
    h = '.method protected onCreate(Landroid/os/Bundle;)V\n'
    if h not in s: h = '.method public onCreate(Landroid/os/Bundle;)V\n'
    i = s.index(h); assert s.count(h) == 1
    j = s.index('    .prologue\n', i); assert j < s.index('.end method', i)
    assert 'ModLang' not in s[i:s.index('.end method', i)]
    k = j + len('    .prologue\n')
    s = s[:k] + ACT + s[k:]
    open(p, 'w').write(s)
a = root + '/fr/testudo/spacecorsair/activity/'
files = [a + 'CommonActivity.smali', root + '/android/support/v4/app/FragmentActivity.smali']
files += [f for f in sorted(glob.glob(a + '*_.smali')) if 'onCreate(Landroid/os/Bundle;)V\n' in open(f).read()]
for f in files: hook_prologue(f)
p = root + '/fr/testudo/spacecorsair/SpaceCorsairApplication.smali'
s = open(p).read()
call = '    invoke-super {p0}, Lfr/testudo/spacecorsair/billing/BillingApp;->onCreate()V\n'
assert s.count(call) == 1 and 'ModLang' not in s
s = s.replace(call, call + '\n    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->applyApp(Landroid/content/Context;)V\n')
open(p, 'w').write(s)
print('hooks22_lang ok: %d activity hooks + application' % len(files))
