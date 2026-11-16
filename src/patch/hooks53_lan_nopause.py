# v45 multiplayer: opening the game menu must not pause a linked game (the other player's world would freeze).
# GameThread.showGameMenu -> ModLan.menuOpening() first; Game.pause -> returns at once when ModLan.keepRunning().
# Solo play, docking, the map and leaving the app pause as before.
# Run ONCE on work/smali: python3 src/patch/hooks53_lan_nopause.py work/smali
import sys
base = sys.argv[1] + '/fr/testudo/spacecorsair/'
p = base + 'engine/GameThread.smali'
s = open(p).read()
assert 'ModLan;->menuOpening' not in s, 'hooks53_lan_nopause: already applied'
a = '.method public showGameMenu()V\n    .registers 5\n'
assert s.count(a) == 1
s = s.replace(a, a + '\n    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->menuOpening()V\n')
open(p, 'w').write(s)
p = base + 'game/Game.smali'
s = open(p).read()
assert 'ModLan;->keepRunning' not in s
a = '.method public pause()V\n    .registers 3\n'
assert s.count(a) == 1
s = s.replace(a, a + '\n    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->keepRunning()Z\n\n    move-result v0\n\n    if-eqz v0, :lan_pause\n\n    return-void\n\n    :lan_pause\n')
open(p, 'w').write(s)
print('hooks53_lan_nopause: showGameMenu -> ModLan.menuOpening, Game.pause skipped while ModLan.keepRunning')
