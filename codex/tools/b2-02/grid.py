"""Stream one CSV per level. Constant seeds give paired draws across refit comparisons."""

import csv
import gzip
import io
import itertools
from contextlib import contextmanager
from pathlib import Path
from tempfile import TemporaryDirectory
import zlib
from concurrent.futures import ProcessPoolExecutor

import numpy as np
from calibrate import apply_fit, median_clock, write_csv
from model import OUT, SEED, LEVELS, data, build, fights, library, player, station, trials
from roster import roster


def cohort(e):
    if e.titan:
        return "police titan"
    if e.flagship:
        return "faction flagship/titan"
    if e.boss:
        return "mission boss"
    if e.police:
        return "police"
    if e.elite:
        return "elite"
    return "normal"


@contextmanager
def write_matchups(path):
    # A stopped run must leave the last complete table readable.
    with TemporaryDirectory(dir=path.parent) as directory:
        pending = Path(directory) / path.name
        with (
            pending.open("wb") as raw,
            gzip.GzipFile(filename="", fileobj=raw, mode="wb", mtime=0) as gz,
            io.TextIOWrapper(gz, newline="") as stream,
        ):
            yield stream
        pending.replace(path)


def write_level(job):
    level, params = job
    foes = roster(level)
    corpus = [t for t in trials() if t.hull == "Leviathan"]
    routes = {e: library(corpus, e) for e in foes}
    path = OUT / f"matchups-L{level}.csv.gz"
    count = 0
    with write_matchups(path) as f:
        w = csv.writer(f, lineterminator="\n")
        w.writerow(
            (
                "hull",
                "level",
                "refit",
                "stage",
                "laser",
                "missile",
                "shield",
                "enemy",
                "enemy_level",
                "enemy_class",
                "seed",
                "fights",
                "median_ttk_s",
                "median_ttd_s",
                "wins",
                "losses",
                "ties",
                "timeouts",
                "win_rate",
            )
        )
        for hull, refit in itertools.product(data.hulls(), range(11)):
            p = player.best_fit(hull, level, refit)
            for e in foes:
                b = build(p, e)
                if e.flagship:
                    apply_fit(b, params)
                # Source-only exposures for unmeasured non-capital opponents.
                seed = SEED + zlib.crc32(f"{level}/{hull.id}/{e.name}".encode())
                x = fights(b, routes[e], seed=seed, clocks=True)
                wins = int(np.count_nonzero(x[:, 0] < x[:, 1]))
                losses = int(np.count_nonzero(x[:, 1] < x[:, 0]))
                timeouts = int(np.count_nonzero(np.isinf(x).all(axis=1)))

                def clock(side):
                    v = median_clock(x, side)
                    return v if np.isfinite(v) else ">180"

                w.writerow(
                    (
                        hull.name,
                        level,
                        refit,
                        p.stage,
                        p.laser,
                        p.missile,
                        p.shield_item,
                        e.name,
                        e.level,
                        cohort(e),
                        seed,
                        len(x),
                        clock(0),
                        clock(1),
                        wins,
                        losses,
                        len(x) - wins - losses - timeouts,
                        timeouts,
                        wins / len(x),
                    )
                )
                count += 1
    return count


def grid(params):
    with ProcessPoolExecutor(max_workers=2) as pool:
        counts = list(pool.map(write_level, [(lv, params) for lv in LEVELS]))
    print("Grid rows by level:", *counts, flush=True)
    return counts


def stations(params):
    rows = []
    corpus = trials()
    for level in LEVELS:
        for kind, mounts in [("mining", 2), ("outpost", 3), ("outpost", 4), ("base", 4)]:
            raw = station(level, kind, mounts)
            for e in (
                next(e for e in roster(level) if e.flagship and not e.titan and e.faction == "reaver"),
                next(e for e in roster(level) if e.titan and e.faction == "reaver"),
            ):
                p = player.best_fit(data.hull("Leviathan"), level, 10)
                for target in ("wanted player", "enemy flagship"):
                    if target == "enemy flagship" and e.titan:
                        continue
                    b = build(p, e)
                    apply_fit(b, params)
                    if target == "wanted player":
                        b.stationIn = raw
                    else:
                        b.stationOut = raw
                    x = fights(b, library(corpus, e), clocks=True)
                    rows.append(
                        dict(
                            level=level,
                            kind=kind,
                            mounts=mounts,
                            raw_dps=round(raw, 2),
                            target=target,
                            enemy=e.name,
                            ttk_s=median_clock(x, 0),
                            ttd_s=median_clock(x, 1),
                            wins=int(np.count_nonzero(x[:, 0] < x[:, 1])),
                        )
                    )
    write_csv(OUT / "stations.csv", rows)
