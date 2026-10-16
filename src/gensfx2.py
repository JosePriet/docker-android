# v17.1 weapon sound tiers: bigger hulls get heavier, more intimidating guns.
# Layers per shot: transient crack + tonal body (Kenney CC0 laser/explosion, pitched) + sub-bass thump,
# soft saturation for punch, then a convolution reverb whose tail grows with the ship class.
import os, subprocess, sys, tempfile
import numpy as np
import scipy.io.wavfile as wav
from scipy.signal import butter, lfilter, resample, fftconvolve

SRC, OUT = sys.argv[1], sys.argv[2]
os.makedirs(OUT, exist_ok=True)
R = 22050
rng = np.random.default_rng(17)


def load(name):
    r, a = wav.read(os.path.join(SRC, name + '.wav'))
    a = a.astype(np.float32)
    if a.ndim > 1: a = a.mean(axis=1)
    a /= 32768.0
    return resample(a, int(len(a) * R / r))


def pitch(a, f): return resample(a, max(1, int(len(a) / f)))
def lp(a, hz):
    b, c = butter(2, min(0.99, hz / (R / 2)), 'low'); return lfilter(b, c, a)
def hp(a, hz):
    b, c = butter(2, hz / (R / 2), 'high'); return lfilter(b, c, a)
def t(sec): return np.arange(int(sec * R)) / R
def noise(sec): return rng.standard_normal(int(sec * R))


def env(n, attack, decay_pow):
    e = np.ones(n); a = max(1, int(attack * R))
    e[:a] = np.linspace(0, 1, a); e[a:] = np.linspace(1, 0, n - a) ** decay_pow
    return e


def mix(*parts):
    n = max(len(p) for p in parts); o = np.zeros(n)
    for p in parts: o[:len(p)] += p
    return o


def sub(sec, f0, f1, decay=3.0):
    tt = t(sec); f = np.geomspace(f0, f1, len(tt))
    return np.sin(2 * np.pi * np.cumsum(f) / R) * env(len(tt), 0.002, decay)


def crack(sec=0.03, hz=2500):
    return hp(noise(sec), hz) * env(int(sec * R), 0.0005, 2.0)


def saturate(a, drive):
    a = a / (np.max(np.abs(a)) + 1e-9)
    return np.tanh(a * drive) / np.tanh(drive)


def ir(length, predelay=0.012, damp_hz=(6000, 900), density=1.0):
    """Synthetic hall impulse response: early reflections + exponentially decaying, darkening noise tail."""
    n = int(length * R)
    tail = rng.standard_normal(n) * np.exp(-6.9 * np.arange(n) / n)   # -60 dB at the end
    # darken over time: blend a bright and a dark copy
    w = np.linspace(0, 1, n)
    tail = lp(tail, damp_hz[0]) * (1 - w) + lp(tail, damp_hz[1]) * w
    h = np.zeros(int(predelay * R) + n)
    h[0] = 1.0
    for d, g in ((0.011, 0.5), (0.019, 0.38), (0.029, 0.3), (0.041, 0.22)):
        h[int(d * R)] += g * density
    h[int(predelay * R):] += tail * 0.35 * density
    return h


def reverb(a, length, wet, **k):
    w = fftconvolve(a, ir(length, **k))[:len(a) + int(length * R)]
    dry = np.zeros_like(w); dry[:len(a)] = a
    return dry * (1 - wet * 0.4) + w / (np.max(np.abs(w)) + 1e-9) * np.max(np.abs(a)) * wet


def write(name, a, gain=0.95):
    a = a / (np.max(np.abs(a)) + 1e-9) * gain
    fade = int(0.02 * R); a[-fade:] *= np.linspace(1, 0, fade)
    with tempfile.NamedTemporaryFile(suffix='.wav', delete=False) as f: tmp = f.name
    wav.write(tmp, R, (a * 32767).astype(np.int16))
    subprocess.run(['ffmpeg', '-v', 'error', '-y', '-i', tmp, '-c:a', 'libvorbis', '-q:a', '4', os.path.join(OUT, name + '.ogg')], check=True)
    os.remove(tmp)
    print(name, round(len(a) / R, 2), 's')


las1, las2, las3 = load('laser1'), load('laser2'), load('laser3')
ex1, ex2 = load('explosion1'), load('explosion2')
hit = load('hit3')

# ---- tier 1: cruisers / battlecruisers: a firmer laser with a short room tail
body = pitch(las3, 0.8)
write('gun_medium', reverb(saturate(mix(crack(0.02, 3000) * 0.5, body, sub(0.25, 140, 70, 4) * 0.5), 1.6), 0.6, 0.35, damp_hz=(7000, 1500)), 0.8)

# ---- tier 2: battleships / capitals: heavy cannon, deep thump, 1.2 s hall
body = pitch(las3, 0.6)
boom = lp(pitch(ex2, 0.75), 2200)[:int(0.35 * R)] * env(int(0.35 * R), 0.001, 2.5)
write('gun_heavy', reverb(saturate(mix(crack(0.025, 2200) * 0.7, body * 0.8, boom * 0.7, sub(0.45, 110, 45, 3) * 1.0), 2.2), 1.2, 0.45, damp_hz=(6000, 1000)), 0.9)

# ---- titans: each with its own voice and a 2.5 s tail
# Leviathan: railgun-style crack, electric whine, ground-shaking boom
whine = np.sin(2 * np.pi * np.cumsum(np.geomspace(2400, 600, int(0.25 * R))) / R) * env(int(0.25 * R), 0.001, 2) * 0.35
boom = lp(pitch(ex1, 0.55), 1800)[:int(0.8 * R)] * env(int(0.8 * R), 0.002, 2)
write('titan_leviathan', reverb(saturate(mix(crack(0.03, 1800) * 1.1, pitch(las3, 0.45) * 0.7, whine, boom * 0.9, sub(0.8, 90, 32, 2.2) * 1.4), 2.8), 2.6, 0.55, damp_hz=(5000, 700)))

# Crimson Throne: plasma cannon roar (noisy, growling, fiery)
roar = lp(noise(0.6), 900) * env(int(0.6 * R), 0.004, 1.6)
growl = np.sign(np.sin(2 * np.pi * np.cumsum(np.geomspace(85, 45, int(0.6 * R))) / R)) * env(int(0.6 * R), 0.003, 2) * 0.35
write('titan_throne', reverb(saturate(mix(crack(0.03, 1500) * 0.9, roar * 1.1, lp(growl, 600), lp(pitch(ex2, 0.5), 1500)[:int(0.7 * R)] * 0.8, sub(0.7, 75, 30, 2) * 1.3), 3.0), 2.6, 0.55, damp_hz=(4500, 600)))

# DEV X-0: bright laser zap riding a deep thump
write('titan_dev', reverb(saturate(mix(crack(0.02, 3500) * 0.6, pitch(las1, 0.75) * 1.0, pitch(las2, 0.55) * 0.5, sub(0.5, 120, 40, 2.5) * 1.2), 2.4), 2.2, 0.5, damp_hz=(8000, 1200)))

# ---- doomsday and siege missiles, heavier and wetter
n = int(2.6 * R)
f = np.geomspace(35, 160, n); ph = 2 * np.pi * np.cumsum(f) / R
hum = np.sin(ph) + 0.5 * np.sin(2 * ph) + 0.3 * np.sin(3.01 * ph) + 0.25 * np.sign(np.sin(4 * ph))
crackle = hp(noise(2.6), 3000) * (rng.random(n) > 0.993) * 3
rise = np.linspace(0.1, 1, n) ** 1.6
write('doom_charge', reverb(saturate(lp(hum, 1800) * rise + crackle * rise, 1.8), 1.8, 0.4))

n = int(4.2 * R); tt = t(4.2)
roar = lp(noise(4.2), 900) * 1.4 + np.sin(2 * np.pi * 45 * tt) * 0.9 + np.sin(2 * np.pi * 90.5 * tt) * 0.5
grit = hp(noise(4.2), 2500) * 0.3 * (0.6 + 0.4 * np.sin(2 * np.pi * 11 * tt))
e = env(n, 0.03, 1.0) ** 0.35
start = mix(crack(0.05, 1200) * 2, sub(1.2, 80, 28, 1.8) * 2.0, lp(pitch(ex1, 0.4), 1500) * 1.2)
write('doom_lance', reverb(saturate(mix(start, (roar + grit) * e), 2.5), 2.8, 0.5, damp_hz=(5000, 600)))

n = int(3.6 * R); tt = t(3.6)
whoosh = lp(noise(3.6), 700) * (0.4 + 0.6 * np.sin(np.pi * tt / 3.6)) + sub(3.6, 70, 28, 1.3) * 0.8
write('doom_nova', reverb(saturate(mix(crack(0.05, 1200) * 1.5, pitch(ex1, 0.38)[:n] * 1.0, whoosh), 2.5), 3.0, 0.55, damp_hz=(4000, 500)))

wh = lp(noise(1.0), 1300) * env(int(1.0 * R), 0.01, 1.6)
write('titan_missile', reverb(saturate(mix(crack(0.02, 2000) * 0.6, wh * 0.9, sub(0.6, 85, 38, 3) * 1.2), 2.0), 1.4, 0.4))
write('titan_blast', reverb(saturate(mix(crack(0.04, 1500) * 1.2, pitch(ex1, 0.55) * 1.0, pitch(ex2, 0.45) * 0.7, sub(1.8, 60, 22, 1.8) * 1.6), 2.6), 3.0, 0.55, damp_hz=(4000, 500)))
