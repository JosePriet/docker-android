# v16.6.1: the game's own gift-code box (BuyInapp.getGift) also accepts the DEV kit code. Run ONCE.
B = 'work/smali/fr/testudo/spacecorsair/'
p = B + 'activity/BuyInapp.smali'
s = open(p).read()
assert 'ModDev;->giftHook' not in s
old = '''.method public getGift()V
    .registers 6

    .prologue
    const/4 v4, 0x4
'''
assert s.count(old) == 1
new = old + '''
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp;->txtGift:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->giftHook(Landroid/app/Activity;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :mod_gift_continue
    return-void
    :mod_gift_continue
'''
s = s.replace(old, new)
open(p, 'w').write(s)
print('hooks9 ok')
