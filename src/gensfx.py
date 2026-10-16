# v17 capital-ship sounds: Kenney CC0 sound pack (via the Python Arcade library) layered with synthesized
# low end, pitched and reverbed for titan scale. Output: OGG files for assets/modsfx/.
import os, subprocess, sys, tempfile
import numpy as np
import scipy.io.wavfile as wav
from scipy.signal import butter, lfilter, resample

SRC = sys.argv[1]   # .../arcade/resources/assets/sounds
OUT = sys.argv[2]
os.makedirs(OUT, exist_ok=True)
R = 22050
rng = np.random.default_rng(3)


def load(name):
    r, a = wav.read(os.path.join(SRC, name + '.wav'))
    a = a.astype(np.float32)
    if a.ndim > 1:
        a = a.mean(axis=1)
    a /= 32768.0
    return resample(a, int(len(a) * R / r))


def pitch(a, f):
    # f < 1 lowers pitch and lengthens (tape style)
    return resample(a, int(len(a) / f))


def lp(a, hz):
    b, c = butter(2, hz / (R / 2), 'low')
    return lfilter(b, c, a)


def hp(a, hz):
    b, c = butter(2, hz / (R / 2), 'high')
    return lfilter(b, c, a)


def t(sec):
    return np.arange(int(sec * R)) / R


def env(n, attack, release_pow=2.0):
    e = np.ones(n)
    a = max(1, int(attack * R))
    e[:a] = np.linspace(0, 1, a)
    e[a:] = np.linspace(1, 0, n - a) ** release_pow
    return e


def reverb(a, wet=0.35, size=0.08):
    out = np.copy(a)
    for k, (d, g) in enumerate(((size, 0.5), (size * 1.7, 0.35), (size * 2.9, 0.25), (size * 4.3, 0.15))):
        s = int(d * R)
        out[s:] += a[:-s] * g * wet * 2
    return out


def mix(*parts):
    n = max(len(p) for p in parts)
    out = np.zeros(n)
    for p in parts:
        out[:len(p)] += p
    return out


def sub(sec, f0, f1, amp=1.0):
    tt = t(sec)
    f = np.linspace(f0, f1, len(tt))
    return np.sin(2 * np.pi * np.cumsum(f) / R) * amp


def noise(sec):
    return rng.standard_normal(int(sec * R))


def write(name, a, gain=0.9):
    a = a / (np.max(np.abs(a)) + 1e-9) * gain
    with tempfile.NamedTemporaryFile(suffix='.wav', delete=False) as f:
        tmp = f.name
    wav.write(tmp, R, (a * 32767).astype(np.int16))
    subprocess.run(['ffmpeg', '-v', 'error', '-y', '-i', tmp, '-c:a', 'libvorbis', '-q:a', '3', os.path.join(OUT, name + '.ogg')], check=True)
    os.remove(tmp)
    print(name, round(len(a) / R, 2), 's')


ex1, ex2 = load('explosion1'), load('explosion2')
las1, las3 = load('laser1'), load('laser3')
phase, up1, up3, hit3 = load('phaseJump1'), load('upgrade1'), load('upgrade3'), load('hit3')

# titan cannon: pitched-down laser crack + sub thump + short boom tail
thump = sub(0.45, 90, 38) * env(int(0.45 * R), 0.004, 3)
write('titan_cannon', reverb(mix(pitch(las3, 0.55) * 0.7, thump * 1.1, lp(pitch(ex2, 0.7), 1800)[:int(0.5 * R)] * 0.5 * env(int(0.5 * R), 0.002, 2.5)), 0.25))

# dev emitter: brighter zap
write('dev_cannon', reverb(mix(pitch(las1, 0.8), sub(0.25, 160, 60) * env(int(0.25 * R), 0.003, 3) * 0.6), 0.2))

# doomsday charge: rising hum + harmonics + crackle, 2.6 s
n = int(2.6 * R)
f = np.linspace(40, 140, n)
ph = 2 * np.pi * np.cumsum(f) / R
hum = np.sin(ph) + 0.5 * np.sin(2 * ph) + 0.3 * np.sin(3.01 * ph) + 0.2 * np.sign(np.sin(4 * ph))
crackle = hp(noise(2.6), 3000) * (rng.random(n) > 0.995) * 3
rise = np.linspace(0.15, 1, n) ** 1.5
write('doom_charge', reverb(lp(hum, 1600) * rise + crackle * rise, 0.3))

# doomsday lance: roaring beam, 4.2 s, with pulsing grit
n = int(4.2 * R)
tt = t(4.2)
roar = lp(noise(4.2), 900) * 1.4 + np.sin(2 * np.pi * 55 * tt) * 0.8 + np.sin(2 * np.pi * 110.5 * tt) * 0.4
grit = hp(noise(4.2), 2500) * 0.25 * (0.6 + 0.4 * np.sin(2 * np.pi * 9 * tt))
e = env(n, 0.05, 1.0) ** 0.4
write('doom_lance', reverb(mix(pitch(ex1, 0.45)[:n] * 0.6, (roar + grit) * e), 0.35))

# furnace nova: expanding fire whoosh + low boom, 3.6 s
n = int(3.6 * R)
tt = t(3.6)
whoosh = lp(noise(3.6), 700) * (0.4 + 0.6 * np.sin(np.pi * tt / 3.6)) + sub(3.6, 70, 30) * 0.6 * env(n, 0.1, 1.5)
write('doom_nova', reverb(mix(pitch(ex1, 0.4)[:n] * 0.8, whoosh), 0.4))

# warp-in: pitched phase jump + boom + shimmer
shimmer = np.sin(2 * np.pi * np.cumsum(np.linspace(1800, 300, int(1.2 * R))) / R) * env(int(1.2 * R), 0.01, 3) * 0.3
write('warp_in', reverb(mix(pitch(phase, 0.5) * 0.9, sub(1.4, 120, 30) * env(int(1.4 * R), 0.01, 2) * 0.9, shimmer, lp(pitch(ex2, 0.6), 1500) * 0.4), 0.45))

# titan missile launch: heavy whoosh + thump
wh = lp(noise(0.9), 1200) * env(int(0.9 * R), 0.02, 1.8)
write('titan_missile', reverb(mix(wh * 0.8, sub(0.5, 80, 40) * env(int(0.5 * R), 0.003, 3)), 0.2))

# titan missile blast: layered big explosion
write('titan_blast', reverb(mix(pitch(ex1, 0.6) * 0.9, pitch(ex2, 0.5) * 0.6, sub(1.6, 60, 25) * env(int(1.6 * R), 0.005, 2) * 1.2), 0.4))

# carrier bay launch: pneumatic thunk + short whoosh
thunk = lp(noise(0.15), 400) * env(int(0.15 * R), 0.001, 4)
write('bay_launch', mix(thunk * 1.2, np.concatenate([np.zeros(int(0.08 * R)), hp(lp(noise(0.5), 3000), 400) * env(int(0.5 * R), 0.05, 2) * 0.5])))

# repair pulse: soft rising chime (pitched-down upgrade)
write('repair', reverb(lp(pitch(up3, 0.8), 3500), 0.3), 0.6)

# hull breach alarm-ish crackle for heavy damage thresholds
write('hull_breach', reverb(mix(pitch(hit3, 0.5) * 1.2, lp(pitch(ex2, 0.8), 2500)[:int(0.6 * R)] * env(int(0.6 * R), 0.002, 2) * 0.6), 0.3), 0.75)

# capital engine rumble loop (2 s, seamless: integer cycles + crossfaded noise)
n = 2 * R
tt = t(2.0)
base = np.sin(2 * np.pi * 41 * tt) * 0.6 + np.sin(2 * np.pi * 82 * tt) * 0.25 + np.sin(2 * np.pi * 61.5 * tt) * 0.15
nz = lp(noise(2.0), 300)
fade = int(0.25 * R)
nz[:fade] = nz[:fade] * np.linspace(0, 1, fade) + nz[-fade:] * np.linspace(1, 0, fade)
nz = nz[:n - fade] if False else nz
write('engine_rumble', base + nz * 0.5, 0.7)
