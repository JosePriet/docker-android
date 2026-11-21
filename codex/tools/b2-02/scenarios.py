"""Matched capital battery and player Hive Bay experiments outside the standard loadout grid."""

from dataclasses import replace
import re
import zlib

from calibrate import apply_fit, median_clock, outcomes, write_csv
from model import (
    LEVELS,
    OUT,
    SEED,
    build,
    data,
    enemy,
    fights,
    level_factor,
    library,
    player,
    stock_racks,
    trials,
)
from roster import roster


def scenario_row(b, route_set, seed):
    clocks = fights(b, route_set, seed=seed, clocks=True)
    _, counts = outcomes(clocks)

    def display(axis):
        value = median_clock(clocks, axis)
        return value if value <= 180 else ">180"

    return dict(
        ttk_s=display(0),
        ttd_s=display(1),
        wins=counts["killed"],
        losses=counts["player_dead"],
        ties=counts["tie"],
        timeouts=counts["timeout"],
        fights=len(clocks),
        seed=seed,
    )


def scenarios(params):
    corpus = [t for t in trials() if t.hull == "Leviathan"]
    threats = []
    p = player.best_fit(data.hull("Leviathan"), 40, 10)
    for e in roster(40):
        if not e.flagship:
            continue
        seed = SEED + zlib.crc32(f"40/{p.hull.id}/{e.name}".encode())
        b = build(p, e)
        apply_fit(b, params)
        for scale in (3, 1):
            if scale == 1:
                b.battery /= 3
                b.battery2 /= 3
                b.drone /= 3
            threats.append(
                dict(
                    enemy=e.name,
                    police=e.titan,
                    multiplier=scale,
                    **scenario_row(b, library(corpus, e), seed),
                )
            )
    write_csv(OUT / "threat.csv", threats)

    bays = []
    for level in LEVELS:
        e = next(e for e in roster(level) if e.flagship and not e.titan and e.faction == "reaver")
        children = [
            next(foe for foe in roster(level) if foe.name.startswith(prefix))
            for prefix in ("UFO (cruiser", "Alien Rat (destroyer")
        ]
        body = stock_racks()["albatrosSpec", e.level]["body"]
        child_dps = sum(
            c.dps / c.baseline_pilot * enemy.pilot(c.pilot_stat, enemy.stat_base(body)) for c in children
        ) * level_factor(level, body)
        options = [
            (m["level"], name, m)
            for name, m in data.stock()["gear"].items()
            if name.startswith("regentHiveBay") and m["level"] <= level
        ]
        _, item, gear = max(options)
        suffix = re.search(r"L(\d+)$", item)
        tier = int(suffix[1]) // 5 if suffix else 0
        for h in data.hulls():
            if not (h.carrier or h.id == "alienBlatte"):
                continue
            p = replace(player.best_fit(h, level, 10), missile=None)
            seed = SEED + zlib.crc32(f"{level}/{h.id}/{e.name}".encode())
            for stance in ("defense", "attack"):
                b = build(p, e)
                apply_fit(b, params)
                b.hive = child_dps * (0.7, 0.85, 1, 1.2)[tier] * (1.3 if h.carrier else 1)
                b.hive *= 1.25 if stance == "defense" else 0.85
                b.hiveReach = 900 if stance == "defense" else 2500
                b.hiveLife = (15, 18, 20, 25)[tier]
                b.hiveCooldown = gear["reloadSpeedInMilli"] / 1000
                bays.append(
                    dict(
                        hull=h.name,
                        level=level,
                        refit=10,
                        enemy=e.name,
                        item=item,
                        stance=stance,
                        in_range_dps=round(b.hive, 2),
                        **scenario_row(b, library(corpus, e), seed),
                    )
                )
    write_csv(OUT / "hive.csv", bays)
