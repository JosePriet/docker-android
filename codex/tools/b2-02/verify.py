"""Check artifacts against the source roster, independent stock formulas and recorded clocks."""

import re
import zlib

import numpy as np
import pandas as pd

from calibrate import median_clock, outcomes
from model import LEVELS, OUT, SEED, build, data, enemy, fights, library, player, stock_racks
from roster import roster


def validate_enemies():
    text = (data.paths()[0] / "enemy-calc-out.txt").read_text()
    count = 0
    worst = 0
    failures = []
    for line in text.splitlines():
        cells = [c.strip() for c in line.split("|")]
        if len(cells) != 7 or not re.match(r"^(?:[\d,.]|-$)", cells[2]):
            continue
        for level, cell in zip((10, 20, 30, 40), cells[2:6]):
            if cell == "-":
                continue
            # Independent simple oracle scanner, deliberately separate from data.parse_enemy.
            groups = cell.split(" / ")
            expected = [data.number(re.match(r"[\d,.]+k?", part).group()) for part in groups[:3]]
            e = enemy.get(cells[1], level)
            for field, want in zip(("dps", "max_hull", "max_shield"), expected):
                actual = getattr(e, field)
                error = abs(actual - want) / max(1, abs(want))
                worst = max(worst, error)
                count += 1
                if error > 0.02:
                    failures.append(f"{e.name} L{level} {field}: {actual} vs {want}")
    # Independent ModCapitals.spawnPolice / build formula: (500k+30k*L)*faction hull mult.
    source = data.java("ModCapitals")
    multipliers = [
        float(x.rstrip("f")) for x in re.search(r"HULL_MULT = \{([^}]+)", source).group(1).split(",")
    ]
    keys = ("spartan", "reaver", "kretari", "varn", "ironclad", "helion", "warden")
    independent = 0
    for level in (10, 20, 30, 40):
        for e in enemy.all_enemies(level):
            if not e.flagship:
                continue
            want = (500000 + 30000 * level) * multipliers[keys.index(e.faction)] * (1.2 if e.titan else 1)
            err = abs(e.max_hull - want) / want
            if err > 0.02:
                failures.append(f"Capital hull {e.name}: {e.max_hull} vs {want}")
            independent += 1
            if e.titan:
                if abs(e.overshield - want * 0.4) / (want * 0.4) > 0.02:
                    failures.append("Overshield " + e.name)
                independent += 1
    return count, worst, independent, failures


def read_grid():
    tables = []
    for lv in LEVELS:
        frame = pd.read_csv(OUT / f"matchups-L{lv}.csv.gz")
        for col in ("median_ttk_s", "median_ttd_s"):
            frame[col] = frame[col].replace(">180", "inf").astype(float)
        tables.append(frame)
    return pd.concat(tables, ignore_index=True)


def verify(frame):
    values, worst, formulas, failures = validate_enemies()
    assert values == 732 and formulas == 84 and not failures, failures
    assert len(stock_racks()) == 11 * 41
    hulls = {h.name: h for h in data.hulls()}
    assert len(hulls) == 56 and len(frame) == 174944
    for lv in LEVELS:
        subset = frame[frame.level == lv]
        foes = {e.name: e for e in roster(lv)}
        expected = pd.MultiIndex.from_product([hulls, range(11), foes], names=["hull", "refit", "enemy"])
        keys = pd.MultiIndex.from_frame(subset[["hull", "refit", "enemy"]])
        assert keys.is_unique and keys.sort_values().equals(expected.sort_values())
        assert (subset.stage == (subset.refit + 1) // 2).all()
        assert (subset.enemy_level == subset.enemy.map({n: e.level for n, e in foes.items()})).all()
        seeds = {
            (h.name, n): SEED + zlib.crc32(f"{lv}/{h.id}/{n}".encode()) for h in hulls.values() for n in foes
        }
        assert all(s == seeds[h, n] for h, n, s in subset[["hull", "enemy", "seed"]].itertuples(index=False))
        # Re-run a normal matchup from the published row inputs at each level.
        sample = subset[
            (subset.hull == "Hornet") & (subset.refit == 10) & (subset.enemy_class == "normal")
        ].iloc[0]
        fit = player.best_fit(hulls[sample.hull], lv, sample.refit)
        assert (fit.laser, fit.missile, fit.shield_item) == (sample.laser, sample.missile, sample.shield)
        foe = foes[sample.enemy]
        clocks = fights(build(fit, foe), library([], foe), seed=int(sample.seed), clocks=True)
        _, replay = outcomes(clocks)
        assert tuple(replay.values()) == (sample.wins, sample.losses, sample.ties, sample.timeouts)
        assert (median_clock(clocks, 0), median_clock(clocks, 1)) == (
            sample.median_ttk_s,
            sample.median_ttd_s,
        )
    assert (frame.fights == 1000).all()
    counts = frame[["wins", "losses", "ties", "timeouts"]]
    assert (counts >= 0).all().all() and (counts.sum(axis=1) == frame.fights).all()
    assert np.allclose(frame.win_rate, frame.wins / frame.fights)
    for col in ("median_ttk_s", "median_ttd_s"):
        finite = frame[col][np.isfinite(frame[col])]
        assert ((finite >= 0.5) & (finite <= 180) & (finite * 2 == (finite * 2).astype(int))).all()
        assert frame[col].notna().all()
    c = pd.read_csv(OUT / "comparisons.csv")
    matched = c[c.hull == "Leviathan"]
    assert len(c) == 38 and len(matched) == 28
    assert matched.fitted_error_pct.abs().max() <= 25 and matched.fitted_error_pct.abs().median() <= 10
    assert c.loc[c.observed_outcome == "timeout", "fitted_error_pct"].isna().all()
    threat = pd.read_csv(OUT / "threat.csv")
    cap = frame[(frame.level == 40) & (frame.refit == 10) & (frame.hull == "Leviathan")].set_index("enemy")
    actual = threat[threat.multiplier == 3].set_index("enemy")
    assert len(threat) == 28 and (actual.wins == cap.loc[actual.index, "wins"]).all()
    assert len(pd.read_csv(OUT / "hive.csv")) == 32 and len(pd.read_csv(OUT / "stations.csv")) == 48
    assert len(pd.read_csv(OUT / "hull-ranking.csv")) == 56
    for plot in ("timing.png", "balance.png"):
        assert (OUT / plot).read_bytes().startswith(b"\x89PNG\r\n\x1a\n")
    print(f"Oracle: {values} values (max error {worst:.2%}), {formulas} capital checks")
    print(f"Verified {len(frame):,} unique matchups, {frame.fights.sum():,} fights, 38 emulator records")
