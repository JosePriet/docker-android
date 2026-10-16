# v18 weapon family sounds (railgun, autocannon, artillery, blaster, disintegrator, arc). Same toolkit as gensfx2.
import sys, importlib.util
spec = importlib.util.spec_from_file_location('g2', sys.argv[3]); 
src = open(sys.argv[3]).read().split('las1, las2, las3 = load')[0]   # helpers only
g = {}
sys_argv = sys.argv
exec(compile(src.replace("SRC, OUT = sys.argv[1], sys.argv[2]", "SRC, OUT = %r, %r" % (sys_argv[1], sys_argv[2])), 'gensfx2-helpers', 'exec'), g)
load, pitch, lp, hp, t, noise, env, mix, sub, crack, saturate, reverb, write, R, np = (g[k] for k in
    ('load', 'pitch', 'lp', 'hp', 't', 'noise', 'env', 'mix', 'sub', 'crack', 'saturate', 'reverb', 'write', 'R', 'np'))
las1, las2, las3, ex1, ex2, hit = load('laser1'), load('laser2'), load('laser3'), load('explosion1'), load('explosion2'), load('hit3')

# railgun: supersonic crack + rising electric whine + short boom
whine = np.sin(2 * np.pi * np.cumsum(np.geomspace(500, 3200, int(0.18 * R))) / R) * env(int(0.18 * R), 0.01, 1.5) * 0.4
write('wpn_rail', reverb(saturate(mix(whine, np.concatenate([np.zeros(int(0.12 * R)), crack(0.03, 1500) * 1.4, pitch(las3, 0.5) * 0.6]), np.concatenate([np.zeros(int(0.12 * R)), sub(0.5, 110, 40, 2.5) * 1.1])), 2.4), 1.2, 0.4))
# autocannon: short dry punchy thud
write('wpn_auto', reverb(saturate(mix(crack(0.012, 2500) * 0.9, lp(noise(0.08), 1800) * env(int(0.08 * R), 0.001, 3) * 0.8, sub(0.12, 160, 80, 3) * 0.9), 2.0), 0.25, 0.2), 0.8)
# artillery: big boom with long tail
write('wpn_arty', reverb(saturate(mix(crack(0.04, 1200) * 1.2, lp(pitch(ex2, 0.6), 2000) * 0.9, sub(0.9, 90, 30, 2) * 1.5), 2.8), 2.2, 0.5))
# blaster: thumpy plasma zap
write('wpn_blast', reverb(saturate(mix(pitch(las2, 0.7) * 0.8, sub(0.2, 220, 90, 3) * 0.9, crack(0.01, 3000) * 0.4), 1.8), 0.5, 0.3), 0.8)
# disintegrator: warbling entropic hum burst
tt = t(0.3)
warble = np.sin(2 * np.pi * (300 + 120 * np.sin(2 * np.pi * 28 * tt)) * tt) * env(len(tt), 0.005, 1.6)
write('wpn_disint', reverb(saturate(mix(warble * 0.8, lp(noise(0.3), 1200) * env(len(tt), 0.002, 2) * 0.3, sub(0.25, 140, 70, 3) * 0.5), 2.0), 0.6, 0.35), 0.8)
# arc: electric crackle snap
n = int(0.35 * R)
crk = hp(noise(0.35), 2500) * (np.random.default_rng(5).random(n) > 0.92) * 1.5 * env(n, 0.002, 1.4)
write('wpn_arc', reverb(saturate(mix(crk, crack(0.02, 4000) * 0.8, pitch(las1, 1.2) * 0.4, sub(0.2, 180, 90, 3) * 0.5), 2.2), 0.6, 0.35), 0.85)
