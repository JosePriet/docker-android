# v35: advantage-aware AI, refit-stage / hostile art, name-tag standing colours, mission payout at read time. Run ONCE.
# - Ennemis.doPhysic: ModV35.ai(this, j) after the stock doIa (steering by advantage).
# - Element.registerYourselfToDrawQueue: drawable = ModV35.skin(this, drawable) (enemy_<art>, <art>_stage<n> when they ship).
# - RenderQueue.addTextToTextWaitingQueue(Vector2, ...): ModV35.tag(text) recolours the name tag of the element being drawn.
# - MissionItem / MissionReward / MissionUtils: every creditReward read goes through ModQol.missionPay(stock amount).
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
V = 'Lfr/testudo/spacecorsair/mod/ModV35;'
E = 'Lfr/testudo/spacecorsair/business/ennemis/Ennemis;'
EL = 'Lfr/testudo/spacecorsair/business/Element;'
D = 'Lfr/testudo/spacecorsair/display/Drawable;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


p = 'business/ennemis/Ennemis.smali'; s = rd(p)
a = '    invoke-virtual {p0, p1, p2}, ' + E + '->doIa(J)V\n'
assert s.count(a) == 1 and 'ModV35' not in s
s = s.replace(a, a + '\n    invoke-static {p0, p1, p2}, ' + V + '->ai(' + E + 'J)V\n')
wr(p, s)

p = 'business/Element.smali'; s = rd(p)
a = ('    invoke-virtual {p0}, ' + EL + '->getDrawableObject()' + D + '\n\n    move-result-object v3\n\n    iget v4, p0, ' + EL + '->spin:F\n')
assert s.count(a) == 1 and 'ModV35' not in s
s = s.replace(a, a.replace('    move-result-object v3\n', '    move-result-object v3\n\n    invoke-static {p0, v3}, ' + V + '->skin(' + EL + D + ')' + D + '\n\n    move-result-object v3\n'))
wr(p, s)

p = 'engine/RenderQueue.smali'; s = rd(p)
m = '.method public addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V\n    .registers 18\n\n    .prologue\n'
assert s.count(m) == 1 and 'ModV35' not in s
s = s.replace(m, m + '''    invoke-static {p3}, ''' + V + '''->tag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :v35_tag

    sget p4, ''' + V + '''->tagR:F

    sget p5, ''' + V + '''->tagG:F

    sget p6, ''' + V + '''->tagB:F

    :v35_tag
''')
wr(p, s)

R = 'Lfr/testudo/spacecorsair/business/mission/MissionReward;->creditReward:I'
for p, reg, obj in (('activity/viewgroup/MissionItem.smali', 'v4', 'v4'), ('business/mission/MissionReward.smali', 'v1', 'p0'), ('utils/MissionUtils.smali', 'v6', 'v6')):
    s = rd(p)
    a = '    iget ' + reg + ', ' + obj + ', ' + R + '\n'
    assert s.count(a) == 1 and 'missionPay' not in s, p
    s = s.replace(a, a + '\n    invoke-static {' + reg + '}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I\n\n    move-result ' + reg + '\n')
    wr(p, s)
print('hooks35 ok')
