# v20: drop saved support-fragment state so screens with ship/item pagers (SpaceShipItem has no
# empty constructor) rebuild fresh instead of crashing when Android restores a killed process.
import sys
p = sys.argv[1] + "/android/support/v4/app/FragmentActivity.smali"
s = open(p).read()
head = ".method protected onCreate(Landroid/os/Bundle;)V\n    .registers 6\n\n    .prologue\n"
assert head in s and "mod_nofrag" not in s
s = s.replace(head, head + "    if-eqz p1, :mod_nofrag\n    const-string v0, \"android:support:fragments\"\n    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V\n    :mod_nofrag\n", 1)
open(p, "w").write(s)
print("hooks15 ok")
