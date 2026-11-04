# Preview of the station turret mounts (ModStationGuns.MOUNTS) on the poi_* art: one sheet, turrets drawn idle (pointing outward).
#   python3 -I src/previewstationguns44.py out.png
import sys, math, re
from PIL import Image
ART = 'work/modart'
src = open('src/java/fr/testudo/spacecorsair/mod/ModStationGuns.java').read()
mounts = {k: [float(x.rstrip('f')) for x in v.split(',')] for k, v in re.findall(r'"(poi_\w+)", new float\[\] ?\{([^}]*)\}', src)}
TEX = {'poi_base_ironclad': 'ironclad', 'poi_base_kretari': 'kretari', 'poi_base_reaver': 'reaver', 'poi_base_spartan': 'spartan',
       'poi_base_varn': 'varn', 'poi_base_warden': 'warden'}
TS = float(re.search(r'TURRET = ([0-9.]+)f', src).group(1))
W = 512
keys = sorted(mounts)
sheet = Image.new('RGB', (W * 4, W * ((len(keys) + 3) // 4)), (30, 34, 60))
for i, k in enumerate(keys):
    im = Image.open('%s/%s.webp' % (ART, k)).convert('RGBA').resize((W, W))
    bg = Image.new('RGBA', (W, W), (30, 34, 60, 255)); bg.alpha_composite(im)
    t = Image.open('%s/hw_turret_cap_%s.webp' % (ART, TEX.get(k, 'spartan'))).convert('RGBA')
    ts = int(TS * W)
    m = mounts[k]
    for j in range(0, len(m), 2):
        x, y = m[j], m[j + 1]
        ang = math.degrees(math.atan2(x, -y))          # outward, nose up = 0
        tt = t.resize((ts, ts)).rotate(-ang, resample=Image.BICUBIC, expand=True)
        cx, cy = int((x + 0.5) * W), int((y + 0.5) * W)
        bg.alpha_composite(tt, (cx - tt.width // 2, cy - tt.height // 2))
    sheet.paste(bg.convert('RGB'), ((i % 4) * W, (i // 4) * W))
sheet.save(sys.argv[1])
