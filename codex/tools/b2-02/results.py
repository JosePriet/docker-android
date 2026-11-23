"""Derive the report tables and figures directly from the exported combat records."""

import numpy as np
import pandas as pd
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

from model import HERE, LEVELS, OUT, data, enemy
from roster import roster


def table(headings, rows):
    lines = [
        "| " + " | ".join(map(str, cells)) + " |" for cells in [headings, ["---"] * len(headings), *rows]
    ]
    return "\n".join(lines)


def seconds(values):
    return f"{values.min():g}–{values.max():g} s"


def plots(c, normal, ranking):
    fig, ax = plt.subplots(figsize=(7.8, 5.1), layout="constrained")
    axis = np.array([15, 130])
    ax.fill_between(axis, axis * 0.75, axis * 1.25, color="#e1e8ed", label="±25% of measured time")
    ax.plot(axis, axis, color="#516171", lw=1)
    for col, label, color, marker in [
        ("blind_clock_s", "Before the fight", "#aa520c", "x"),
        ("fitted_clock_s", "Fitted replay", "#125981", "o"),
    ]:
        ax.scatter(c.observed_s, c[col].astype(float), label=label, color=color, marker=marker, s=31)
    ax.set(
        xlabel="Emulator event time (s)",
        ylabel="Simulated event time (s)",
        title="L40 Leviathan · 28 recorded fights",
        xlim=(15, 128),
        ylim=(12, 145),
    )
    ax.legend(frameon=False)
    fig.savefig(OUT / "timing.png", dpi=145)
    plt.close(fig)

    fig, (ax, rank_ax) = plt.subplots(
        1, 2, figsize=(11.8, 5.2), layout="constrained", gridspec_kw={"width_ratios": [1, 1.16]}
    )
    shares = []
    for lv in LEVELS:
        v = normal[normal.level == lv].median_ttk_s
        shares.append(
            [
                100 * (v < 3).mean(),
                100 * v.between(3, 4).mean(),
                100 * ((v > 4) & np.isfinite(v)).mean(),
                100 * np.isinf(v).mean(),
            ]
        )
    left = np.zeros(4)
    for width, label, color in zip(
        np.array(shares).T,
        ["<3 s", "3–4 s", ">4 to 180 s", ">180 s"],
        ["#98bdc7", "#19677a", "#b97633", "#4d4855"],
    ):
        ax.barh(range(4), width, left=left, color=color, label=label)
        left += width
    ax.set(
        yticks=range(4),
        yticklabels=[f"L{lv}" for lv in LEVELS],
        xlabel="Share of normal matchups (%)",
        title="Time to kill",
        xlim=(0, 100),
    )
    ax.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, -0.15), ncol=2)
    tails = pd.concat([ranking.head(5), ranking.tail(5)]).iloc[::-1]
    rank_ax.barh(tails.hull, tails.win_rate * 100, color=["#b97633"] * 5 + ["#19677a"] * 5)
    rank_ax.set(xlabel="Player win rate (%)", title="Five highest and lowest non-DEV hulls", xlim=(0, 100))
    fig.savefig(OUT / "balance.png", dpi=145)
    plt.close(fig)


def report(frame):
    normal = frame[frame.enemy_class == "normal"].copy()
    c = pd.read_csv(OUT / "comparisons.csv")
    levi = c[c.hull == "Leviathan"]
    ranking = (
        frame.groupby("hull", as_index=False)
        .agg(matchups=("fights", "size"), win_rate=("win_rate", "mean"))
        .sort_values(["win_rate", "hull"], ascending=[False, True])
    )
    ranking["dev"] = ranking.hull.map({h.name: h.dev for h in data.hulls()})
    ranking.to_csv(OUT / "hull-ranking.csv", index=False, float_format="%.8f")
    playable = ranking[~ranking.dev]
    plots(levi, normal, playable)
    sections = []

    def add(title, *body):
        sections.extend(["### " + title, *body])

    rows = []
    for label, clock, outcome in [
        ("Legacy", "legacy_clock_s", None),
        ("Corrected, before fit", "source_clock_s", None),
        ("Fitted replay", "fitted_clock_s", "fitted_outcome"),
        ("Leave-one-out replay", None, "predicted_outcome"),
        ("Leave-one-out before fight", "blind_clock_s", "blind_outcome"),
    ]:
        err = (
            (100 * (levi[clock].astype(float) / levi.observed_s - 1)).abs()
            if clock
            else levi.replay_error_pct.abs()
        )
        rows.append(
            [
                label,
                f"{sum(err <= 25)}/28",
                f"{err.median():.2f}%",
                f"{err.max():.2f}%",
                f"{sum(levi[outcome] == levi.observed_outcome)}/28" if outcome else "—",
            ]
        )
    add(
        "Can the simulator reproduce the emulator clocks?",
        table(
            [
                "Method",
                "Within 25%",
                "Median absolute error",
                "Largest absolute error",
                "Correct duel outcome",
            ],
            rows,
        ),
        "The fitted replay meets both clock targets. The prediction available before launch misses eight fights. Ironclad illustrates why the two scores differ. The emulator Leviathan killed it in 82.510 s. The held-out replay gives a 94 s kill clock and a 72 s death clock, so it predicts a loss. [Recorded fight, lines 147–231](../../batch2/data/dmgtest/dmg-d1.txt#L147)",
        "![Simulated and measured event times](timing.png)",
    )
    labels = {
        "dmg-d1.txt": "112 flagship",
        "dmg-d2.txt": "112 police",
        "round2-dmg-d2.txt": "113 still",
        "round2-dmg-d4.txt": "113 dodge D4",
        "round2-dmg-d5.txt": "113 dodge D5",
    }
    rows = []
    for r in levi.itertuples():
        observed = "death" if r.observed_outcome == "player_dead" else "kill"
        rows.append(
            [
                f"[{labels[r.log]}](../../batch2/data/dmgtest/{r.log}#L{r.end_line})",
                r.target.removeprefix("police_"),
                observed,
                f"{r.observed_s:.2f}",
                r.fitted_clock_s,
                f"{r.fitted_error_pct:+.1f}%",
                r.replay_ttd_s if observed == "death" else r.replay_ttk_s,
                r.blind_clock_s,
                f"{r.blind_error_pct:+.1f}%",
            ]
        )
    add(
        "All 28 Leviathan fights",
        table(
            [
                "Run",
                "Faction",
                "Event",
                "Measured s",
                "Fitted s",
                "Error",
                "Held-out replay s",
                "Before fight s",
                "Error",
            ],
            rows,
        ),
    )
    w = c[c.hull == "Warlord"]
    unc = w[w.observed_outcome != "timeout"]
    timeout = w[w.observed_outcome == "timeout"].iloc[0]
    add(
        "Where predictive errors remain",
        "SUSPECTED — The held-out Helion flagship replay gives 65.0 s against 98.220 s (−33.82%). Its logged centre range was 1,319–2,802 units. This single trace gives distance but omits turret orientation, impact position and missed rails. A scalar range/landed fraction cannot identify which volleys connected. [Helion log](../../batch2/data/dmgtest/dmg-d1.txt#L298)",
        "SUSPECTED — The other seven pre-fight misses are late death predictions. The opening estimates for these seven runs are four or five drones. Drawing 2–5 per launch before the fight includes smaller wings. Early overlapping rail bursts, skill contact, relative bearing and wall interception can produce similar hull losses. No per-hit attribution or directly observed wing counts distinguish them. The rows above give the signed gap for each run. [D1](../../batch2/data/dmgtest/dmg-d1.txt#L1) · [D2](../../batch2/data/dmgtest/round2-dmg-d2.txt#L105) · [D4](../../batch2/data/dmgtest/round2-dmg-d4.txt#L157) · [D5](../../batch2/data/dmgtest/round2-dmg-d5.txt#L1)",
        f"The Warlord was held out of fitting. Of nine timed deaths, {sum(unc.replay_error_pct.abs() <= 25)}/9 replays and {sum(unc.blind_error_pct.abs() <= 25)}/9 pre-fight predictions fall within 25%. Median errors are {unc.replay_error_pct.abs().median():.2f}% and {unc.blind_error_pct.abs().median():.2f}%. The Reaver run was censored at {timeout.observed_s:g} s. Both replay clocks exceed 180 s. Its pre-fight timeout frequency is {timeout.blind_timeout_fraction:.1%}. [All ten Warlord rows and outcomes](comparisons.csv)",
    )
    wheel = enemy.counters()[0]
    faction = {h.name: h.faction for h in data.hulls()}
    foes = {e.name: e.faction for lv in LEVELS for e in roster(lv)}
    normal["favorable"] = [(faction[h], foes[e]) in wheel for h, e in zip(normal.hull, normal.enemy)]
    rows = []
    for lv, sub in normal.groupby("level"):
        v = sub.median_ttk_s
        fav = sub[sub.favorable].median_ttk_s
        rows.append(
            [
                lv,
                len(v),
                f"{v.median():g} s",
                f"{(v < 3).mean():.1%}",
                f"{v.between(3, 4).mean():.1%}",
                f"{(v > 4).mean():.1%}",
                f"{fav.median():g} s",
                f"{fav.between(3, 4).mean():.1%}",
            ]
        )
    add(
        "How often do ordinary enemies die in 3–4 seconds?",
        table(
            [
                "Level",
                "Normal rows",
                "Median TTK",
                "Under 3 s",
                "3–4 s",
                "Over 4 s¹",
                "Favorable median",
                "Favorable 3–4 s",
            ],
            rows,
        ),
        f"¹ Includes right-censored rows. Across all {len(normal):,} normal rows, {normal.median_ttk_s.between(3, 4).mean():.1%} land in the target band. At L40 the median is in the band, but this alone masks the spread. Favorable means the hull faction counters the enemy faction. CONFIRMED — Ordinary-enemy damage gains a 2.5× factor with advantage and 0.5× with disadvantage. The source describes approximate favorable/neutral/unfavorable targets of 3/10/25 seconds. [ModV35.java:773,837](../../../src/java/fr/testudo/spacecorsair/mod/ModV35.java#L773)",
    )
    threat = pd.read_csv(OUT / "threat.csv")
    rows = []
    for (police, m), sub in threat.groupby(["police", "multiplier"]):
        rows.append(
            [
                "Police" if police else "Faction flagship",
                f"{m}×",
                f"{sub.wins.sum() / sub.fights.sum():.1%}",
                f"{sub.losses.sum() / sub.fights.sum():.1%}",
                f"{sub.ties.sum()}/{sub.timeouts.sum()}",
            ]
        )
    cap = frame[(frame.level == 40) & (frame.enemy_class.isin(["faction flagship/titan", "police titan"]))]
    rows2 = [
        [k, f"{sub.win_rate.mean():.1%}", f"{sub.losses.sum() / sub.fights.sum():.1%}"]
        for k, sub in cap.groupby("enemy_class")
    ]
    add(
        "Can 3× threaten an L40 player?",
        "Yes. In the stock-shield rail harness, two of seven faction flagships killed the L40 Leviathan and all seven police variants killed it. With a legal high-DPS loadout, a full shield, missiles and manual doomsday, the model gives the following paired results for the same max-refit Leviathan. Each cell covers seven opponents and 7,000 fights. Only battery damage and its inherited drone rail damage change in the 1× counterfactual. Skill fractions and police bonuses stay fixed. [Run 112](../../batch2/data/dmgtest/RESULTS.md#L6) · [Paired runs](threat.csv)",
        table(["Opponent", "Battery multiplier", "Player wins", "Player deaths", "Ties / timeouts"], rows),
        "At 3×, the full L40 grid across all hulls and refits gives these rates. These are matchup-weighted scenario estimates. The emulator tested two player hulls.",
        table(["L40 opponent", "Player wins", "Player deaths"], rows2),
    )
    rows = []
    for label, sub in [
        ("112 stock still", levi[levi.log == "dmg-d2.txt"]),
        ("113 best still", levi[levi.log == "round2-dmg-d2.txt"]),
        ("113 best dodge", levi[levi.log.isin(["round2-dmg-d4.txt", "round2-dmg-d5.txt"])]),
    ]:
        rows.append(
            [
                label,
                seconds(sub.observed_s),
                seconds(sub.fitted_clock_s.astype(float)),
                seconds(sub.blind_clock_s.astype(float)),
                f"{sum(sub.blind_outcome == 'player_dead')}/7",
            ]
        )
    add(
        "Why do police titans kill the Leviathan in 33–58 seconds?",
        table(
            [
                "Setup",
                "Seven observed deaths",
                "Fitted deaths",
                "Before-fight death clocks",
                "Predicted deaths",
            ],
            rows,
        ),
        "CONFIRMED — The capped guardian battery is weak against L40 after stock level mitigation. The police drones launch at L40 and avoid that penalty. One police rail is about 7,597 damage at equal pilot level before interception. A 2–5 drone wing therefore offers roughly 6,900–17,300 damage/s before misses and the wall. Against 446,656 hull, that is a 26–65 s hull-only scale. Skill damage, shield break, regeneration and the wall move the result within or outside that range. The police overshield helps the titan stay alive long enough to deal it. [Source audit below](#source-audit) · [Run 112](../../batch2/data/dmgtest/dmg-d2.txt#L1)",
    )
    add(
        "The five highest and lowest combat win rates",
        table(
            ["Highest non-DEV hull", "Win rate", "Lowest non-DEV hull", "Win rate"],
            [
                [h.hull, f"{h.win_rate:.2%}", l.hull, f"{l.win_rate:.2%}"]
                for h, l in zip(playable.head(5).itertuples(), playable.tail(5).iloc[::-1].itertuples())
            ],
        ),
        f"Each legal hull/refit/level/opponent row has equal weight. Higher levels have more opponents. Industrial and original hulls participate. This ranking measures combat strength under the loadout policy, without price, unlock or cargo utility. The DEV hull scores {ranking[ranking.dev].iloc[0].win_rate:.2%} and appears separately in the complete CSV. [All 56 hulls](hull-ranking.csv)",
        "![Kill-time distribution and hull win rates](balance.png)",
    )
    path = OUT / "report.md"
    start = "<!-- BEGIN GENERATED RESULTS -->"
    end = "<!-- END GENERATED RESULTS -->"
    old = (HERE / "report-template.md").read_text()
    prefix, rest = old.split(start)
    _, suffix = rest.split(end)
    path.write_text(prefix + start + "\n\n" + "\n\n".join(sections) + "\n\n" + end + suffix)
