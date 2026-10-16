# v16.8: every CommonActivity screen gets the always-visible scrollbars (ModScroll). Run ONCE.
B = 'work/smali/fr/testudo/spacecorsair/'
p = B + 'activity/CommonActivity.smali'
s = open(p).read()
assert 'ModScroll;->attach' not in s
old = '''    invoke-super {p0}, Landroid/app/Activity;->onResume()V
'''
assert s.count(old) == 1
s = s.replace(old, old + '''
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModScroll;->attach(Landroid/app/Activity;)V
''')
open(p, 'w').write(s)
print('hooks11 ok')
