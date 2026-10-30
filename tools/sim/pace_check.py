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
# v37: the game's rare salvage odds and amounts must be the sim's (ModV34.RARE_P / RARE_K)
rep = open(out).read()
src = open(sys.argv[2] if len(sys.argv) > 2 else 'src/java/fr/testudo/spacecorsair/mod/ModV34.java').read()
for name in ('RARE_P', 'RARE_K'):
    sim = [float(x) for x in re.search(name + r' += ([\d., ]+?) +#', rep).group(1).split(',')]
    m = re.search(name + r' = \{([^}]*)\}', src)
    code = [float(x.strip().rstrip('f')) for x in m.group(1).split(',')] if m else []
    good = len(code) == len(sim) and all(abs(a - b) < 1e-4 for a, b in zip(code, sim))
    ok &= good
    print(('ok' if good else 'FAIL') + ' ' + name + ' code ' + str(code) + ' = sim ' + str(sim))
good = 'Rare salvage (loot term)' in rep and ': PASS (G3' in rep
ok &= good
print(('ok' if good else 'FAIL') + ' rare salvage G3 check in the sim')
print('PACE-OK' if ok else 'PACE-FAIL')
