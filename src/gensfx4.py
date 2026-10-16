# v22 situational sounds (combat sting, all clear, disengage blip, low-hull alarm, shield down, flagship horn,
# mission success/fail, rank up, comms click). Same toolkit as gensfx2 (Kenney CC0 sources + synthesis).
#   python3 -I src/gensfx4.py <kenney sounds dir> work/modsfx src/gensfx2.py
import sys
src = open(sys.argv[3]).read().split('las1, las2, las3 = load')[0]
g = {}
exec(compile(src.replace("SRC, OUT = sys.argv[1], sys.argv[2]", "SRC, OUT = %r, %r" % (sys.argv[1], sys.argv[2])), 'gensfx2-helpers', 'exec'), g)
load, pitch, lp, hp, t, noise, env, mix, sub, crack, saturate, reverb, write, R, np = (g[k] for k in
    ('load', 'pitch', 'lp', 'hp', 't', 'noise', 'env', 'mix', 'sub', 'crack', 'saturate', 'reverb', 'write', 'R', 'np'))


def tone(f, d, a=0.004, k=2.5, shape='sine'):
    tt = t(d)
    w = np.sin(2 * np.pi * f * tt)
    if shape == 'saw':
        w = 2 * ((f * tt) % 1.0) - 1
    elif shape == 'sq':
        w = np.sign(w) * 0.6
    return w * env(len(tt), a, k)


def seq(parts):
    return np.concatenate(parts)


def gap(d):
    return np.zeros(int(d * R))


# combat alert: low brass-like stab + rising tension
stab = mix(tone(110, 0.9, 0.01, 1.4, 'saw') * 0.35, tone(165, 0.9, 0.01, 1.4, 'saw') * 0.25, sub(0.9, 70, 45, 1.6) * 0.9)
write('combat_start', reverb(saturate(lp(stab, 1400), 1.8), 1.6, 0.45))
# all clear: two soft rising chimes
write('all_clear', reverb(mix(seq([tone(660, 0.35, 0.005, 2.2) * 0.4, tone(880, 0.6, 0.005, 2.0) * 0.4])), 1.4, 0.5))
# disengage: radio static burst + falling blip
stat = hp(noise(0.22), 1800) * env(int(0.22 * R), 0.002, 3) * 0.35
blip = np.sin(2 * np.pi * np.cumsum(np.geomspace(1400, 500, int(0.18 * R))) / R) * env(int(0.18 * R), 0.003, 2) * 0.35
write('disengage', reverb(seq([stat, blip]), 0.4, 0.25))
# low hull alarm: two-tone klaxon pulse
write('hull_alarm', reverb(seq([tone(740, 0.16, 0.005, 1.2, 'sq') * 0.35, gap(0.04), tone(560, 0.22, 0.005, 1.2, 'sq') * 0.35]), 0.3, 0.2))
# shield down: descending electric zap + crackle
zap = np.sin(2 * np.pi * np.cumsum(np.geomspace(2400, 180, int(0.45 * R))) / R) * env(int(0.45 * R), 0.002, 1.8) * 0.45
write('shield_down', reverb(saturate(mix(zap, hp(noise(0.45), 3000) * env(int(0.45 * R), 0.002, 2.4) * 0.25, sub(0.4, 120, 50, 2.5) * 0.6), 1.6), 0.8, 0.35))
# flagship hostile: long deep horn
hn = mix(tone(58, 2.2, 0.15, 0.9, 'saw') * 0.5, tone(87, 2.2, 0.2, 0.9, 'saw') * 0.3, sub(2.2, 45, 40, 0.9) * 0.9)
write('flagship_horn', reverb(saturate(lp(hn, 900), 1.6), 2.8, 0.5))
# mission success: bright major arpeggio; failure: low minor fall
write('mission_ok', reverb(seq([tone(523, 0.16) * 0.4, tone(659, 0.16) * 0.4, tone(784, 0.5, 0.004, 1.6) * 0.45]), 1.2, 0.45))
write('mission_fail', reverb(seq([tone(392, 0.25, 0.01, 1.5, 'saw') * 0.25, tone(311, 0.55, 0.01, 1.3, 'saw') * 0.25]), 1.4, 0.45))
# rank up: shimmering fanfare
fan = mix(seq([tone(587, 0.14) * 0.35, tone(784, 0.14) * 0.35, tone(988, 0.7, 0.004, 1.4) * 0.4]),
          seq([gap(0.28), hp(noise(0.7), 5000) * env(int(0.7 * R), 0.01, 2) * 0.08]))
write('rank_up', reverb(fan, 1.6, 0.5))
# comms click: radio key-up click + short squelch
write('comms_click', reverb(seq([crack(0.004, 5000) * 0.6, hp(noise(0.06), 2500) * env(int(0.06 * R), 0.001, 4) * 0.25]), 0.15, 0.15))
print('gensfx4 done')
