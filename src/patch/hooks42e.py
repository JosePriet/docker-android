# v42 (owner 2026-11-03 23:29): asteroid radar dots become a small rock icon; bigger in-game (GL) HUD text.
# 1) GameThread.drawOnRadarAndCalcNearby: the element radar point goes through ModMap.radarPoint (same args).
# 2) GameRenderer: every GLText.load(font, px, padX, padY) size passes through ModMap.fontPx(px). Run ONCE on work/smali.
import sys, re
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
p = B + 'engine/GameThread.smali'
s = open(p).read()
old = """    iget v7, p1, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V"""
new = """    iget v7, p1, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V"""
assert s.count(old) == 1, 'hooks42e: radar anchor (already applied?)'
open(p, 'w').write(s.replace(old, new))
p = B + 'engine/GameRenderer.smali'
s = open(p).read()
pat = re.compile(r'(    const/16 (v\d+), (0x[0-9a-f]+)\n\n)(    invoke-virtual \{v0, v1, \2, v\d+, v\d+\}, Lfr/testudo/spacecorsair/textengine/GLText;->load\(Ljava/lang/String;III\)Z)')
n = len(pat.findall(s))
assert n >= 5, 'hooks42e: font loads found %d' % n
s = pat.sub(lambda m: m.group(1) + '    invoke-static {%s}, Lfr/testudo/spacecorsair/mod/ModMap;->fontPx(I)I\n\n    move-result %s\n\n' % (m.group(2), m.group(2)) + m.group(4), s)
open(p, 'w').write(s)
print('hooks42e: radar point -> ModMap.radarPoint; %d font loads -> ModMap.fontPx' % n)
