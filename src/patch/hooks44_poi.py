# v44 (gpt-catchup item 10): POI structure art. Station getDrawableObject() returns ModPoi.drawable(this, stock).
# Run ONCE on work/smali.
import sys, re
B = sys.argv[1] + '/fr/testudo/spacecorsair/business/world/station/'
CALL = ("    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPoi;->drawable("
        "Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/display/Drawable;)"
        "Lfr/testudo/spacecorsair/display/Drawable;\n\n    move-result-object v0\n\n")
for cls in ('BasicTradeStation', 'MissionStation', 'CasinoStation', 'ThreeDockStation', 'AlienTradeStation'):
    p = B + cls + '.smali'
    s = open(p).read()
    m = re.search(r'\.method public getDrawableObject\(\)Lfr/testudo/spacecorsair/display/Drawable;\n(.*?)\.end method', s, re.S)
    assert m, 'hooks44_poi: no getDrawableObject in ' + cls
    body = m.group(1)
    assert 'ModPoi' not in body, 'hooks44_poi: already applied to ' + cls
    assert body.count('    return-object v0\n') == 1, 'hooks44_poi: anchor not unique in ' + cls
    nb = body.replace('    return-object v0\n', CALL + '    return-object v0\n')
    s = s[:m.start(1)] + nb + s[m.end(1):]
    open(p, 'w').write(s)
    print('hooks44_poi:', cls, 'getDrawableObject -> ModPoi.drawable')
