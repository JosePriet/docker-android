# v34 acceptance: the economy sim must hit the owner's pace targets (first cruiser 2 h, battleship 8 h, titan 20 h) within 25%.
import re, subprocess, sys
out = sys.argv[1]
subprocess.check_call([sys.executable, '-I', sys.argv[0].replace('pace_check.py', 'econ_sim.py'), out])
ok = True
for name, target in (('first cruiser', 2), ('first battleship', 8), ('first titan', 20)):
    m = re.search(r'\| ' + name + r'[^|]*\| [\d.]+ \| ([\d.]+) \|', open(out).read().split('## Result: PROPOSED')[-1])
    got = float(m.group(1)) if m else -1
    good = abs(got - target) <= 0.25 * target
    ok &= good
    print(('ok' if good else 'FAIL') + ' pace ' + name + ' = ' + str(got) + ' h (target ' + str(target) + ')')
print('PACE-OK' if ok else 'PACE-FAIL')
