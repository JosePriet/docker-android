"""Bring the Task 2 oracle forward to the batch-2 gameplay code."""

from dataclasses import replace
from functools import lru_cache
import re
from model import KEYS, data, enemy, stock_racks

CLASSES = (0.6, 1, 1.6, 2.2, 3, 5, 8)
TABLE = {
    "BASIC": "BasciEnnemisSpec",
    "TAUPE": "TaupeSpec",
    "DEFENSOR": "defensorSpec",
    "RAT": "alienRatSpec",
    "UFO": "UfoSpec",
    "FRELON": "FrelonSpec",
    "ALBATROS": "albatrosSpec",
    "BLATTE": "alienBlatteSpec",
    "FIXED": "tourelleEnnemisSpec",
    "ALIEN": "alienTourelleSpec",
    "ROCKET": "rocketTourelleEnemisSpec",
}
STOCK = dict(
    zip(
        (
            "Basic pirate",
            "Taupe",
            "Defensor",
            "Alien Rat",
            "UFO",
            "Frelon",
            "Albatros",
            "Alien Blatte",
            "Fixed turret",
            "Alien turret",
            "Rocket turret",
        ),
        TABLE,
    )
)
TIER = (1, 1, 1.15, 1.3, 1.5)


@lru_cache(None)
def fleet_types():
    rows = re.findall(
        r'new Type\("[^"]+", "([^"]+)", (\w+), (\d+), \d+, ([\d.]+)f, ([\d.]+)f', data.java("ModFleet")
    )
    return {name: (ai, int(size), float(h), float(d)) for name, ai, size, h, d in rows}


def base_hull(level):
    return sum(stock_racks()[s, level]["hull"] for s in ("UfoSpec", "alienRatSpec")) / 2


def profile(e):
    if e.flagship:
        lv = min(40, e.level + 2)
        fi = KEYS.index(e.faction)
        police = 1.2 if e.titan else 1
        hull = (500000 + 30000 * lv) * (0.8, 1.5, 1.1, 0.7, 1.2, 0.75, 1)[fi] * police
        shield = (1 + 0.35 * (8 - 1)) * 1.07 ** max(0, lv - 15) * (1.6, 0.4, 0.9, 0.7, 1, 0.8, 1)[fi] * police
        m = stock_racks()["albatrosSpec", lv]
        return replace(
            e,
            level=lv,
            max_hull=hull,
            max_shield=m["decent_cap"] * shield,
            shield_regen=m["decent_rate"] * shield,
            overshield=0.4 * hull if e.titan else 0,
        )
    lv = e.level
    curve = 1.07 ** max(0, lv - 15)
    if e.name == "Patrol cruiser":
        return replace(e, max_hull=base_hull(lv) * 1.6 * curve, dps=e.dps * curve * 1.24)
    original = e.name.split(" [")[0]
    group = fleet_types().get(original)
    cls = e.cls
    if group:
        ai, size, hull_mult, gun_mult = group
        cls = sum(size > s for s in (100, 200, 320, 420, 600))
        override = {
            "Reaver Warlord": 3,
            "Reaver Dreadnought": 4,
            "Kre'tari Battlecruiser": 3,
            "Kre'tari Battleship": 4,
        }
        cls = override.get(original, cls)
    elif e.police:
        ai = ("BASIC", "DEFENSOR", "FRELON", "FRELON", "ALBATROS", "ALBATROS")[cls]
        gun_mult = 1.25
    else:
        ai = next(ai for name, ai in STOCK.items() if e.name.startswith(name))
        gun_mult = 1
    m = stock_racks()[TABLE[ai], lv]
    factors = [TIER[min(4, max(1, lv // 12 + i) + int(e.elite))] for i in range(3)]
    damage_class = 1 + 0.4 * (CLASSES[cls] - 1)
    elite = 1.5 if e.elite else 1
    hull = e.max_hull
    shield = e.max_shield
    if group and original in ("Kre'tari Battlecruiser", "Kre'tari Battleship"):
        hull = base_hull(lv) * CLASSES[cls] * curve * hull_mult * (2.5 if e.elite else 1)
    elif e.elite and not e.police:
        # The first oracle already applied Basic/Frelon/etc stock subclass bonuses.
        # Fixed and alien turrets were omitted by its stockElite helper.
        hull /= dict(BASIC=4, BLATTE=4, FIXED=1, ALIEN=1, ROCKET=1).get(ai, 3)
    if ai == "FRELON" and e.elite and not e.police:
        shield /= 2
    if e.elite and not (e.police or group or ai in ("FIXED", "ALIEN", "ROCKET")):
        cls = min(6, cls + 1)
    per_tier = []
    for tier in factors:
        dmg = m["damage"] * curve * damage_class * gun_mult * tier * elite
        reload = max(1, m["reload_ms"]) / tier
        if ai in ("ALBATROS", "DEFENSOR"):
            canons = 3 if ai == "ALBATROS" else 1
            # Police buff is applied explicitly to Albatros mounts only.
            if e.police and ai == "DEFENSOR":
                dmg /= gun_mult
            gap = 210 if e.police and ai == "DEFENSOR" else 300
            rate = canons * 3 * dmg * 1000 / (m["reload_ms"] + 2 * gap)
        elif ai == "UFO":
            rate = 2 * dmg
        elif ai == "ROCKET":
            rate = 0  # dedicated missile stream
        else:
            if e.police:
                dmg *= dict(BASIC=1.3, FRELON=1.5).get(ai, 1)
                if ai == "FRELON":
                    reload *= 0.8
            count, gap = {"FRELON": (3, 200), "TAUPE": (6, 125)}.get(ai, (1, 0))
            rate = count * dmg * 1000 / (reload + (count - 1) * gap)
            if ai == "BLATTE":
                rate += 2 * dmg  # copied beam in addition to the hull's shots
        per_tier.append(rate)
    return replace(
        e,
        cls=cls,
        max_hull=hull,
        max_shield=shield,
        dps=sum(per_tier) / 3 * enemy.pilot(e.pilot_stat, enemy.stat_base(lv)),
    )


@lru_cache(None)
def roster(level):
    rows = [profile(e) for e in enemy.all_enemies(level)]
    patrol = next(e for e in rows if e.name == "Patrol cruiser")
    for key in KEYS:
        if key not in ("reaver", "kretari"):
            rows.append(replace(patrol, name=key.title() + " faction wing", police=False, faction=key))
    rock = stock_racks()["rocketTourelleEnemisSpec", level]
    for elite in (False, True):
        hull = rock["hull"] * 1.07 ** max(0, level - 15) * (2.5 if elite else 1)
        rows.append(
            enemy.Enemy("Rocket turret" + (" (elite)" if elite else ""), level, 0, hull, 0, 0, elite=elite)
        )
    # Mission-specific geometry and escort uptime are scenario assumptions.
    for title, name, hp, damage in [
        ("Matriarch", "UFO (cruiser, beam)", 25, 1.1),
        ("Guardian", "Albatros (battleship)", 15, 1.1),
        ("Empress", "Alien Blatte (capital)", 15, 0.5),
    ]:
        e = next(e for e in rows if e.name == name)
        tier = sum(TIER[min(4, max(1, level // 12 + i))] for i in range(3)) / 3
        boss = replace(e, name="Mission " + title, boss=True, max_hull=e.max_hull * hp)
        rate = e.dps * 2 * damage * (1.5 / tier) * boss.baseline_pilot / e.baseline_pilot
        rows.append(replace(boss, dps=rate / (1 if title == "Matriarch" else 1.6)))
    return tuple(rows)
