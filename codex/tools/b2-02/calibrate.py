"""Compare measured clocks, fit shared exposure parameters and export blind predictions."""

import csv
from dataclasses import dataclass
from itertools import product
import math

import numpy as np
from model import OUT, build, enemy, fights, library, player, route, trials
from sc_sim.fight import duel
from roster import roster


def write_csv(path, rows):
    with path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0]), lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def opening_wing(t, b):
    if not b.drone:
        return 0
    # A drone rail is large relative to the guardian's level-mitigated battery.
    # Estimate launch size from the upper end of overlapping 2 s hit totals.
    # Use only the first 11 s, before Warden's first 11.2 s snipe.
    a = np.asarray([s for s in t.samples if s[0] < 11])
    damage = np.diff(a[:, 2] * b.hp / 100 - a[:, 5])
    times = a[1:, 0]
    if t.faction in ("ironclad", "helion", "reaver"):
        frac = {"ironclad": 0.12, "helion": 0.25 * 3 * 8 / 70, "reaver": 0.1}[t.faction]
        window = np.flatnonzero((times > 4) & (times < 9))
        at = window[np.argmax(damage[window])]
        if damage[at] > frac * b.hp * b.skill:
            damage[at] -= frac * b.hp * b.skill
    counts = np.maximum(0, np.rint(damage / b.drone))
    volleys = np.convolve(counts, [1, 1], "valid")[2:]
    if np.mean(volleys == 0) >= 1 / 3:
        return 0  # prolonged gaps confound a small wing with loss of contact
    return int(np.clip(np.rint(np.quantile(volleys, 0.9)), 2, 5))


@dataclass
class Case:
    trial: object
    loadout: object
    foe: object
    observed_route: object
    blind_routes: object
    wing: int

    def simulate(self, params, n, blind=False):
        b = build(self.loadout, self.foe, manual=False, dodge=self.trial.dodge)
        b.aimRange, b.fireScale, b.droneScale = params
        b.wingCount = 0 if blind else self.wing
        return fights(b, self.blind_routes if blind else self.observed_route, n, clocks=True)


def cases():
    corpus = trials()
    training = [t for t in corpus if t.hull == "Leviathan"]
    result = []
    for t in corpus:
        e = next(e for e in roster(40) if e.flagship and e.titan == t.police and e.faction == t.faction)
        p = player.fit(t.hull, "modRailgunL15", 40, 10, shield=t.shield, allow_oversize=True)
        b = build(p, e, manual=False, dodge=t.dodge)
        result.append(Case(t, p, e, np.array([route(t)]), library(training, e, t.id), opening_wing(t, b)))
    return result


def clock_index(t):
    return int(t.outcome == "player_dead")


def median_clock(a, axis):
    # Upper median: the result stays censored when at least half never hit.
    return float(np.partition(a[:, axis], len(a) // 2, axis=0)[len(a) // 2])


def outcomes(clocks):
    kill, death = clocks.T
    timeout = np.isinf(kill) & np.isinf(death)
    counts = dict(
        killed=np.sum(kill < death),
        player_dead=np.sum(death < kill),
        tie=np.sum((kill == death) & ~timeout),
        timeout=np.sum(timeout),
    )
    return max(counts, key=counts.get), counts


def apply_fit(b, values):
    b.aimRange, b.fireScale, b.droneScale = values


def calibrate():
    all_cases = cases()
    train = [c for c in all_cases if c.trial.hull == "Leviathan"]
    masks = np.array([clock_index(c.trial) for c in train])
    measured = np.array([c.trial.time for c in train])
    ranges = (2200, 2600, 3000, 3100, 3200, 3300, 3400, 4000, 1e9)
    landing = (0.65, 0.75, 0.85, 0.95, 1.0)
    drone = (0.65, 0.75, 0.85, 0.95, 1.0)
    choices = list(product(ranges, landing, drone))
    # Incoming and outgoing clocks share enrage state. Evaluate whole fights
    # even when fitting only the error of the observed clock.
    errors = []
    relative = []
    for values in choices:
        pred = [median_clock(c.simulate(values, 64), clock_index(c.trial)) for c in train]
        # An unseen event is penalized at twice the horizon in the fitting loss.
        # Predictions in the CSV retain the actual censoring.
        ratio = np.where(np.isfinite(pred), pred, 360.0) / measured
        errors.append(np.abs(np.log(ratio)))
        relative.append(np.abs(ratio - 1))
    errors = np.asarray(errors)

    # Additional offensive evidence from unfinished fights: Warden and Aegis
    # still have visible hull damage. Police overshields are unobserved, so
    # exclude police hull throughput from this loss. Estimate landed input
    # from drops + depleted shield + under-fire regen and spent armour.
    offense = np.zeros_like(errors)
    for j, c in enumerate(train):
        if c.trial.police:
            continue
        b = build(c.loadout, c.foe, False)
        a = np.array(c.trial.samples[:-1])
        dt = np.diff(a[:, 0], prepend=0)
        damage = a[-1, 3] + b.screen - a[-1, 6] + 0.85 * b.screenRate * sum(dt[a[:, 6] < b.screen])
        if c.trial.faction == "ironclad":
            damage += b.target * 0.12 * (1 + (a[-1, 3] > 0.7 * b.target))
        for i, (reach, landing_rate, _) in enumerate(choices):
            weights = np.ones(len(a))
            if c.trial.faction == "varn":
                weights[(a[:, 0] >= 7) & ((a[:, 0] - 7) % 15 < 4)] = 0.5
            if c.trial.faction == "spartan":
                weights *= 1 - 0.9 * 100 / 360
            expected = sum(dt * weights * (a[:, 1] < reach)) * b.laser / b.laserPeriod * landing_rate
            offense[i, j] = abs(np.log(max(1.0, expected) / max(1.0, damage)))

    def scores(keep):
        capitals = keep & np.array([not c.trial.police for c in train])
        return (
            errors[:, keep & (masks == 1)].mean(axis=1)
            + 0.5 * errors[:, keep & (masks == 0)].mean(axis=1)
            + 0.5 * offense[:, capitals].mean(axis=1)
        ) / 2

    relative = np.array(relative)

    def select(keep):
        # The brief specifies both a per-fight tolerance and a median target.
        # Break ties among feasible candidates by clock and throughput loss.
        bad = (relative[:, keep] > 0.25).sum(axis=1)
        excess = np.maximum(0, np.median(relative[:, keep], axis=1) - 0.10)
        return np.lexsort((scores(keep), excess, bad))[0]

    all_rows = np.ones(len(train), bool)
    full = scores(all_rows)
    best = choices[select(all_rows)]
    singles = []
    for i, values in enumerate(choices):
        axes = [a for a, (v, base) in enumerate(zip(values, (1e9, 1.0, 1.0))) if v != base]
        if len(axes) <= 1:
            singles.append(
                dict(
                    parameter=("effective_range", "rail_landed_fraction", "drone_landed_fraction")[axes[0]]
                    if axes
                    else "source_only",
                    range_units=values[0],
                    rail_fraction=values[1],
                    drone_fraction=values[2],
                    mean_absolute_log_error=round(full[i], 5),
                )
            )
    write_csv(OUT / "single_constant_fit.csv", sorted(singles, key=lambda x: x["mean_absolute_log_error"]))
    estimates = []
    for c in all_cases:
        t = c.trial
        params = best
        if t.hull == "Leviathan":
            keep = np.array([x is not c for x in train])
            params = choices[select(keep)]
        replay = c.simulate(params, 1000)
        fitted = c.simulate(best, 1000)
        blind = c.simulate(params, 1000, blind=True)
        source = c.simulate((1e9, 1.0, 1.0), 1000)
        original = duel(
            c.loadout, enemy.get(c.foe.name, 40), max_time=1800 if not t.police else 180, doomsday=False
        )
        side = clock_index(t)
        pred = median_clock(replay, side)
        independent = median_clock(blind, side)
        earlier = original.time_to_die if side else original.time_to_kill
        sample = np.asarray(t.samples[:-1])
        win = np.mean(replay[:, 0] < replay[:, 1])
        fitted_event, _ = outcomes(fitted)
        replay_event, _ = outcomes(replay)
        blind_event, blind_counts = outcomes(blind)

        def fmt(v):
            return round(v, 3) if math.isfinite(v) else ">180"

        def error(v):
            return round(100 * (v / t.time - 1), 2) if np.isfinite(v) and t.outcome != "timeout" else ""

        estimates.append(
            dict(
                log=t.file,
                first_line=t.line,
                end_line=t.endline,
                hull=t.hull,
                target=t.key,
                shield=c.loadout.shield_item,
                dodge=t.dodge,
                observed_outcome=t.outcome,
                observed_s=t.time,
                legacy_clock_s=(round(earlier, 2) if math.isfinite(earlier) else ">horizon"),
                fitted_clock_s=fmt(median_clock(fitted, side)),
                fitted_error_pct=error(median_clock(fitted, side)),
                source_clock_s=fmt(median_clock(source, side)),
                blind_clock_s=fmt(independent),
                blind_error_pct=error(independent),
                replay_ttk_s=fmt(median_clock(replay, 0)),
                replay_ttd_s=fmt(median_clock(replay, 1)),
                replay_error_pct=error(pred),
                predicted_outcome=replay_event,
                fitted_outcome=fitted_event,
                blind_outcome=blind_event,
                blind_timeout_fraction=blind_counts["timeout"] / len(blind),
                replay_win_fraction=round(win, 3),
                blind_win_fraction=round(np.mean(blind[:, 0] < blind[:, 1]), 3),
                range_units=params[0],
                rail_fraction=params[1],
                drone_fraction=params[2],
                opening_wing=c.wing,
                min_distance=int(sample[:, 1].min()),
                max_distance=int(sample[:, 1].max()),
                fraction_samples_in_aim_range=round(np.mean(sample[:, 1] < params[0]), 3),
                last_gross_hull_loss_pct=sample[-1, 2],
                last_dealt_hull=int(sample[-1, 3]),
            )
        )
    write_csv(OUT / "comparisons.csv", estimates)
    return best, estimates, singles
