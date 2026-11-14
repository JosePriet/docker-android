# v43a-8 (owner 2026-11-14): skull on the radar blip of enemies that clearly outlevel the player.
# GameThread.drawOnRadarAndCalcNearby: the point-blip call (ModMap.radarPoint, hooks42e) also passes the element (p1),
# through v8 (free in that branch), to ModMap.radarPoint2, which draws the dot as before or a red skull instead.
# Run ONCE on work/smali: python3 src/patch/hooks47_skull.py work/smali
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
p = B + 'engine/GameThread.smali'
s = open(p).read()
old = ("    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint("
       "Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V")
new = ("    move-object v8, p1\n\n"
       "    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint2("
       "Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF"
       "Lfr/testudo/spacecorsair/business/Element;)V")
assert s.count(old) == 1, 'hooks47_skull: radar anchor (already applied?)'
open(p, 'w').write(s.replace(old, new))
print('hooks47_skull: radar point -> ModMap.radarPoint2 (element passed)')
