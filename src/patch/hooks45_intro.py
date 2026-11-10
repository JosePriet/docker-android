# v45 intro cinematic (owner 2026-11-10): ModIntro hooks. Run ONCE on work/smali: python3 src/patch/hooks45_intro.py work/smali
# - GameRenderer.drawHud: ModIntro.draw(gl) after ModQol.drawHud (last thing drawn in the frame).
# - GameThread.run: the frame's elapsed ms -> ModIntro.dt(elapsed) right after lastTime is stored (1 ms while the intro runs).
# - GameThread.processInputEvent: ModIntro.touch(event) first; true swallows the touch (skip taps).
# - GameThread.showDialog(IIIIZString): after the ModDev.noDialog check, ModIntro.holdDialog(...) true = held until the intro ends.
# - Main.onFirstStart: ModIntro.firstStart() after Config.unSetFirstStart().
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
I = 'Lfr/testudo/spacecorsair/mod/ModIntro;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


def method(s, sig):
    i = s.index('.method ' + sig)
    return i, s.index('.end method', i)


# GameRenderer.drawHud: draw after ModQol.drawHud
p = 'engine/GameRenderer.smali'; s = rd(p)
assert 'ModIntro' not in s
a = '    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModQol;->drawHud(Ljavax/microedition/khronos/opengles/GL10;)V\n'
assert s.count(a) == 1
s = s.replace(a, a + '\n    invoke-static {p1}, ' + I + '->draw(Ljavax/microedition/khronos/opengles/GL10;)V\n')
wr(p, s)

# GameThread
p = 'engine/GameThread.smali'; s = rd(p)
assert 'ModIntro' not in s
# run(): elapsed in v0/v1 after lastTime is stored
i, k = method(s, 'public run()V')
seg = s[i:k]
a = '    iput-wide v2, p0, Lfr/testudo/spacecorsair/engine/GameThread;->lastTime:J\n'
assert seg.count(a) == 1
seg = seg.replace(a, a + '\n    invoke-static {v0, v1}, ' + I + '->dt(J)J\n\n    move-result-wide v0\n')
s = s[:i] + seg + s[k:]
# processInputEvent: swallow while the intro runs
i, k = method(s, 'public processInputEvent(Landroid/view/MotionEvent;)V')
j = s.index('    .prologue\n', i) + len('    .prologue\n')
assert j < k
s = s[:j] + ('    invoke-static {p1}, ' + I + '->touch(Landroid/view/MotionEvent;)Z\n\n    move-result v0\n\n'
             '    if-eqz v0, :intro45_go\n\n    return-void\n\n    :intro45_go\n') + s[j:]
# showDialog(IIIIZString): hold after the noDialog check
i, k = method(s, 'public showDialog(IIIIZLjava/lang/String;)V')
seg = s[i:k]
a = '    :mod_dialog_go\n'
assert seg.count(a) == 1
seg = seg.replace(a, a + ('    invoke-static/range {p0 .. p6}, ' + I + '->holdDialog(Lfr/testudo/spacecorsair/engine/GameThread;IIIIZLjava/lang/String;)Z\n\n'
                          '    move-result v0\n\n    if-eqz v0, :intro45_dialog\n\n    return-void\n\n    :intro45_dialog\n'))
s = s[:i] + seg + s[k:]
wr(p, s)

# Main.onFirstStart
p = 'activity/Main.smali'; s = rd(p)
assert 'ModIntro' not in s
i, k = method(s, 'private onFirstStart()V')
seg = s[i:k]
a = '    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Config;->unSetFirstStart()V\n'
assert seg.count(a) == 1
seg = seg.replace(a, a + '\n    invoke-static {}, ' + I + '->firstStart()V\n')
s = s[:i] + seg + s[k:]
wr(p, s)
print('hooks45_intro ok')
