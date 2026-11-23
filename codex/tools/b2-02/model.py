"""Inputs to the half-second arena. Never use the terminal hull or time as a damage input."""

import csv
import ctypes as ct
from dataclasses import dataclass
from functools import lru_cache
from pathlib import Path
import re
import subprocess
import tempfile

import numpy as np
from sc_sim import data, enemy, player
from sc_sim.fight import doom_budget, player_factor

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
LOGS = ROOT / "codex/batch2/data/dmgtest"
OUT = ROOT / "codex/out/b2-02"
KEYS = ("spartan", "reaver", "kretari", "varn", "ironclad", "helion", "warden")
FAMILY = dict(zip(KEYS, (0, 1, 1, 4, 2, 3, 0)))
LEVELS = (10, 20, 30, 40)
SEED = 112113
SOURCE = HERE / "arena.cpp"


class Build(ct.Structure):
    fields = SOURCE.read_text().split("struct Build {")[1].split("};")[0]
    _fields_ = [
        (key.strip(), ct.c_double)
        for group in re.findall(r"double ([^;]+);", fields)
        for key in group.split(",")
    ]


@lru_cache(None)
def kernel():
    # Lifetime of the CDLL is held by its function pointer after the file is unlinked.
    with tempfile.TemporaryDirectory() as directory:
        lib = Path(directory) / "arena.so"
        subprocess.run(
            ["c++", "-O3", "-std=c++17", "-shared", "-fPIC", str(SOURCE), "-o", str(lib)], check=True
        )
        batch = ct.CDLL(str(lib)).batch
    batch.argtypes = [
        ct.POINTER(Build),
        np.ctypeslib.ndpointer(np.float32, flags="C_CONTIGUOUS"),
        ct.c_int,
        ct.c_int,
        ct.c_uint64,
        ct.c_double,
        ct.c_bool,
        np.ctypeslib.ndpointer(np.float64, flags="C_CONTIGUOUS"),
    ]
    batch.restype = None
    return batch


def fights(build, routes, n=1000, seed=SEED, clocks=False, horizon=180):
    result = np.empty((n, 2), dtype=np.float64)
    kernel()(ct.byref(build), routes, len(routes), n, seed, horizon, clocks, result)
    return result


@dataclass
class Trial:
    file: str
    line: int
    key: str
    hull: str
    shield: str
    dodge: bool
    samples: list
    outcome: str
    time: float
    endline: int

    @property
    def faction(self):
        return self.key.removeprefix("police_")

    @property
    def police(self):
        return self.key.startswith("police_")

    @property
    def id(self):
        return self.file + "/" + self.key


def trials():
    parsed = []
    for path in sorted(LOGS.glob("*.txt")):
        for line, s in enumerate(path.read_text().splitlines(), 1):
            if s.startswith("dmg start "):
                start = line
                key, hull, capacity = re.search(
                    r"dmg start (\w+) player L40 hull(\w+) refit10 hull=\d+ shield=(\d+)", s
                ).groups()
                shield = "basicShieldLevel0" if int(capacity) < 1000 else "diamondShieldLevel15"
                dodge = "dodge=300" in s
                samples = []
            elif s.startswith("dmg end "):
                event, time = re.search(r"result=(\w+) t=([\d.]+)", s).groups()
                parsed.append(
                    Trial(path.name, start, key, hull, shield, dodge, samples, event, float(time), line)
                )
            elif s.startswith("dmg ") and "dist=" in s:
                fields = dict(re.findall(r"(\w+)=([^ ]+)", s))
                samples.append(
                    [
                        float(fields[k].split("/")[0].rstrip("%"))
                        for k in ("t", "dist", "hullLost", "dealt", "wall", "pshield", "tshield")
                    ]
                )
    assert len({t.id for t in parsed}) == len(parsed) == 38
    return parsed


def route(trial):
    # Exclude respawn/kill snapshots. Reflect at the ends for counterfactual
    # exposure past the measurement. Padding has no "die now" sentinel.
    points = np.array(trial.samples[:-1])
    times = points[:, 0]
    phase = np.arange(181) % (2 * times[-1])
    return np.interp(np.minimum(phase, 2 * times[-1] - phase), times, points[:, 1]).astype("f")


def library(corpus, e, excluded=None):
    if not e.flagship:
        return np.array([np.full(181, d, "f") for d in (300, 650, 1000, 1400, 1700)])
    options = [t for t in corpus if t.id != excluded and t.faction == e.faction]
    matches = [t for t in options if t.police == e.titan]
    return np.stack(
        [
            route(t)
            for t in matches or options or [t for t in corpus if t.id != excluded and t.police == e.titan]
        ]
    )


@lru_cache(None)
def stock_racks():
    with (HERE / "data/racks.csv").open() as f:
        return {
            (row["table"], int(row["level"])): {k: int(v) for k, v in row.items() if k != "table"}
            for row in csv.DictReader(f)
        }


@lru_cache(None)
def fleet():
    return dict(re.findall(r'new Type\("[^"]+", "([^"]+)", (\w+)', data.java("ModFleet")))


def rack_table(e):
    if e.flagship or e.name == "Mission Guardian":
        return "albatrosSpec"
    if e.name.startswith("Rocket turret"):
        return "rocketTourelleEnemisSpec"
    ai = fleet().get(e.name.split(" [")[0])
    if ai:
        return {
            "ALBATROS": "albatrosSpec",
            "DEFENSOR": "defensorSpec",
            "BASIC": "BasciEnnemisSpec",
            "FRELON": "FrelonSpec",
        }.get(ai)
    if e.name.startswith(("Frelon", "Police Cruiser", "Police Battlecruiser")):
        return "FrelonSpec"
    if e.name.startswith(("Basic pirate", "Police Frigate")):
        return "BasciEnnemisSpec"
    if e.name.startswith(("Albatros", "Police Battleship", "Police Capital")):
        return "albatrosSpec"
    if e.name.startswith(("Defensor", "Police Destroyer")):
        return "defensorSpec"
    return None


@lru_cache(None)
def guns(faction):
    src = data.java("ModCapitals").split("static final Gun[][] GUNS = {")[1].split("\n    };")[0]
    groups = re.findall(r"\{(new Gun.*?)\},", src, re.S)
    return [
        (int(reload) / 1000, float(weight), int(count), int(reach), family)
        for family, weight, reload, reach, count in re.findall(
            r"new Gun\(ModWeapons\.(\w+), ([\d.]+)f, (\d+), \d+, (\d+), \d+, (\d+)",
            groups[KEYS.index(faction)],
        )
    ]


def level_factor(attacker, defender):
    return 1 + 0.16 * max(-6, attacker - defender)


def station(level, kind, mounts):
    rat, ufo = [stock_racks()[table, level] for table in ("alienRatSpec", "UfoSpec")]
    destroyer = (rat["damage"] + ufo["damage"]) * 1000 / max(200, rat["reload_ms"] + ufo["reload_ms"])
    return (
        mounts * destroyer * 1.07 ** max(0, level - 15) * {"base": 2.5, "outpost": 1.5, "mining": 1.5}[kind]
    )


def build(p, e, manual=True, dodge=False):
    b = Build()
    b.hp, b.shield, b.recharge, b.delay, b.repair = (
        p.max_hull,
        p.max_shield,
        p.shield_regen,
        p.shield_delay,
        p.hull_regen,
    )
    b.shieldLevel = 1 + 0.01 * max(0, p.level - 17)
    b.wall = 1.5 * b.shield if p.hull.art == "leviathan" and p.stage >= 4 else 0
    b.hornet = p.hull.art == "hornet" and p.stage == 5
    b.dodge = dodge
    b.doom = {"leviathan": 1, "crimson_throne": 2, "dev_prototype": 3}.get(p.hull.art, 0) if manual else 0
    b.doomBudget = doom_budget(p, e)
    b.target, b.screen, b.screenRate, b.nativeShield, b.over = (
        e.max_hull,
        e.max_shield,
        e.shield_regen,
        e.stock_shield,
        e.overshield,
    )
    b.armor = 0.70 if e.titan else 0.75 if e.police else 1
    b.faction = KEYS.index(e.faction) if e.flagship else -1
    b.police = e.titan
    b.drain = e.police and not e.flagship and e.cls in (2, 3)
    base = enemy.stat_base
    pilot = enemy.pilot
    body = stock_racks()["albatrosSpec", e.level]["body"] if e.flagship else e.level
    defense = base(body) if e.flagship else e.pilot_stat
    correction = pilot(base(p.level), defense) / pilot(base(p.level), e.pilot_stat)
    factor = level_factor(p.level, body) * correction
    laser = data.stock()["gear"][p.laser]
    b.laser = p.shot * p.guns * p.projectiles_per_gun * player_factor(p, e, p.family) * factor
    b.laserPeriod = p.reload
    b.laserSpeed = abs(laser["bulletSpeed"]) * 100 * (0.6 if p.fit_multiplier == 0.6 else 1)
    b.laserRange = b.laserSpeed * 3 * ((1.8, 1, 1.6, 0.5, 0.9, 1)[p.family] if p.family >= 0 else 1)
    b.aimRange = 1e9
    b.fixedDoom = player_factor(p, e, -1) * factor
    b.bossKit = {"Mission Guardian": 1, "Mission Empress": 2, "Mission Matriarch": 3}.get(e.name, 0)
    b.ramp = p.family == 4
    b.sting = 0.35 * player.jround(laser["damage"] * 1000 / laser["reload"]) * pilot(base(p.level), defense)
    if p.missile:
        m = data.stock()["gear"][p.missile]
        tubes = p.missiles * (1.9 if p.hull.cls == 6 and not p.hull.dev else 1)
        b.missile = tubes * m["damage"] * player_factor(p, e, -1) * factor
        b.blast = tubes * m["radiusDamage"]  # centre hit: doubled at init, halved in radial falloff
        b.missilePeriod = p.missile_reload
        b.homing = not m["sendAndForget"]
    avoid = 1 - min(0.25, max(0, (base(p.level) - defense) / 2000)) if e.flagship or e.elite else 1
    b.skill = pilot(defense, base(p.level)) * avoid
    b.wallRaw = 1 / (level_factor(body, p.level) * avoid)
    incoming = level_factor(body, p.level) * b.skill
    if e.flagship:
        row = stock_racks()["albatrosSpec", e.level]
        shot = max(40, row["damage"] * 3) * 1.07 ** max(0, e.level - 15) * 3 * (1.2 if e.titan else 1)
        count = int(re.search(r"\((\d+) mounts", e.name)[1])
        for i, (reload, weight, salvo, reach, fam) in enumerate(guns(e.faction)):
            family = ("RAIL", "AUTO", "ARTY", "BLAST", "DISINT", "ARC").index(fam)
            share = count / len(guns(e.faction))
            damage = share * shot * weight * salvo / reload * (1.2 if e.titan else 1) * incoming
            if not e.police:
                damage *= enemy.counter(e.faction, p.faction, family)
            if fam == "DISINT":
                damage *= 2
            if i:
                b.battery2, b.reach2 = damage, reach
            else:
                b.battery, b.reach = damage, reach
        if e.titan or e.faction == "spartan":
            b.drone = 0.6 * 3 * shot * pilot(base(e.level), base(p.level)) * level_factor(e.level, p.level)
            b.drone *= enemy.counter("", p.faction, 0)
        if e.faction == "kretari":
            b.mirror = 4 * enemy.get("Alien Rat (destroyer)", p.level).dps
    else:
        fam = FAMILY.get(e.faction, -1)
        resist = 1 if e.police else enemy.counter(e.faction, p.faction, fam)
        b.battery = e.dps * b.skill / e.baseline_pilot * resist
        if e.faction == "reaver":
            b.battery *= 1.25
        if e.faction == "kretari":
            b.battery *= 1.2
        b.reach = 4000
    table = rack_table(e)
    if table:
        m = stock_racks()[table, e.level]
        b.rack, b.rackBlast = m["direct"] * incoming, m["radius"]
        b.ammo, b.volley, b.rackPeriod, b.minRange = (
            m["missiles"],
            2 if table == "albatrosSpec" else 1,
            m["missile_ms"] / 1000,
            m["min_range"],
        )
    if table == "BasciEnnemisSpec":
        b.rackBlast = 100  # absolute 200 splash, halved at centre
    if e.name.startswith("Rocket turret"):
        b.ammo, b.volley, b.minRange = 10000, 1, 0
        b.rackPeriod = m["missile_spec_ms"] / 1000 * (0.7 if e.elite else 1)
        b.rack *= 1.5 if e.elite else 1
    if e.missile_dps:
        b.fastPeriod = 5 if e.cls == 0 else 8
        b.fastMissile = e.missile_dps * b.fastPeriod * b.skill / e.baseline_pilot
        b.fastBlast = 150
    b.fireScale, b.droneScale, b.skillScale = 1, 1, 1
    return b
