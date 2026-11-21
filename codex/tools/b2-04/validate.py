"""Audit EventTool sweep JSONL, then write samples, distributions and charts. Run from repo root."""
import argparse
import json
import math
import re
from collections import Counter
from pathlib import Path
from statistics import mean

MOD = Path("src/java/fr/testudo/spacecorsair/mod")
LOOT = Path("work/smali/fr/testudo/spacecorsair/business/loot/SpaceObjectType.smali")
OUT = Path("codex/out/b2-04")
BANDS = [(0, 4), (5, 12), (13, 21), (22, 31), (32, 40)]
GOAL = dict(ESCORT="ESCORT", DEFEND="HOLD", AMBUSH="CLEAR", SALVAGE="SALVAGE",
            BOUNTY="CLEAR", BLOCKADE="EVADE", FACTION_WAR="CLEAR", RESCUE="EXTRACT", RACE="PASS")
CAPABLE = dict(ESCORT={"HAULER"}, HOLD={"STATION"}, CLEAR={"RAIDER", "WING"}, SALVAGE={"WRECK"},
               EVADE={"POLICE"}, EXTRACT={"WRECK"}, PASS={"STATION"}, MEET={"RAIDER", "STATION", "HAULER"},
               CHALLENGE={"RAIDER"})


def require(ok, message):
    if not ok:
        raise ValueError(message)


def route(e):
    """Traverse stops in order. Only live contacts can be cleared or used. Deliver at a later dock."""
    pos = elapsed = pending = 0
    met = set()
    actions = []
    for s in e["stops"]:
        action, actor, dist = s["action"], s["actor"], s["distance"]
        needed = s["required"]
        require(actor in CAPABLE[action] and 0 < needed <= s["count"], "incompatible or missing actor")
        require(pos <= dist <= 12000 and 0 <= s["holdSeconds"] <= 60, "unreachable stop")
        elapsed += math.ceil((dist - pos) / 50)
        pos = dist
        if action == "MEET":
            met.add(actor)
        if action in ("ESCORT", "HOLD"):
            require(actor in met and "CLEAR" in actions, "unprotected contact")
        if action in ("EXTRACT", "ESCORT", "EVADE"):
            pending += needed
        if action == "PASS":
            pending = 0
        # Conservative pilot fixture: 10 s per matched-level kill, 4 s per other contact.
        elapsed += needed * (10 if action == "CLEAR" else 4) + s["holdSeconds"]
        actions.append(action)
    o = e["objective"]
    require(GOAL[o] in actions and not pending, "incomplete objective or undelivered cargo")
    if o == "RACE":
        require(actions.count("PASS") == 3 and e["deadlineSeconds"] > 0, "missing race gate or clock")
    if e["twist"] == "RIVAL":
        require(actions[0] == "CHALLENGE" and e["deadlineSeconds"] > 0, "missing rival or clock")
    if e["twist"] == "BETRAYAL":
        require(e["stops"][0]["actor"] == "RAIDER" and actions[0] == "MEET"
                and any(s["action"] == "CLEAR" and s["art"] == e["stops"][0]["art"]
                        for s in e["stops"][1:]), "no betraying contact")
    if e["twist"] == "REINFORCEMENTS":
        require(any(s["action"] == "CLEAR" and s["actor"] == "RAIDER" for s in e["stops"][1:]), "missing relief flight")
    require(not e["deadlineSeconds"] or elapsed < e["deadlineSeconds"], "missed deadline")
    return elapsed


def catalogs():
    fleet = set(re.findall(r'new Type\("([^"]+)', (MOD / "ModFleet.java").read_text()))
    hulls = set(re.findall(r'new Hull\("[^"]+", "[^"]+", [^\n]+?, "([^"]+)", \d+,', (MOD / "ModShips.java").read_text()))
    data = LOOT.read_text()
    items = {}
    for item in ("malachite", "diamond"):
        body = data.split('const-string v1, "' + item + '"', 1)[1].split("->newDynamic", 1)[0]
        tier = re.search(r'LootRarety;->(\w+):', body)[1]
        maximum = int(re.search(r'const/16 v10, (0x[0-9a-f]+)', body)[1], 16)
        items[item] = (tier, maximum)
    factions = set(re.findall(r'"([^"]+)"', next(s for s in (MOD / "ModRepData.java").read_text().splitlines()
                                                 if "String[] KEYS" in s)))
    return fleet, hulls, items, factions


def audit(events, model):
    coef, exp, mult = [float(re.search(r'^' + key + r'\s*= ([\d.]+)', model, re.M)[1])
                       for key in ("BOUNTY_COEF", "BOUNTY_EXP", "MISSION_MULT")]
    fleet, hulls, items, factions = catalogs()
    art = {p.stem for p in Path("work/modart").glob("*.webp") if p.stat().st_size > 0}
    for e in events:
        level, r = e["level"], e["reward"]
        try:
            require(e["faction"] in factions and e["owner"] in factions, "unknown faction")
            require(e["encounterLevel"] == level, "level mismatch")
            for s in e["stops"]:
                key = s["art"]
                require(key in art, "missing " + key)
                if s["actor"] in ("HAULER", "WRECK"):
                    require(key in hulls, "missing hull")
                elif s["actor"] in ("RAIDER", "WING"):
                    require(key in fleet or (s["actor"] == "WING" and key == "orig_police"), "missing NPC")
                elif s["actor"] == "POLICE":
                    require(key == "orig_police", "unknown police ship")
                else:
                    require(key.startswith("poi_outpost_"), "unknown station")
            elapsed = route(e)
            item_value = 0
            if r["item"]:
                tier, item_value = items[r["item"]]
                require(tier == r["lootTier"], "incorrect loot rarity")
            else:
                require(not r["lootTier"], "missing loot")
            bounty = coef * (level + 1) ** exp
            value = r["credits"] + r["rareParts"] * bounty + item_value
            require(r["credits"] >= 0 and r["rareParts"] in (0, 1) and 0 < value <= mult * bounty, "reward budget")
            e["_value"] = value / bounty
            e["_seconds"] = elapsed
        except (KeyError, ValueError) as exc:
            raise ValueError(f"seed {e['seed']}: {exc}") from exc


def publish(bands):
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    labels = [f"{lo}–{hi}" for lo, hi in BANDS]
    all_events = sum(bands, [])
    fig, axes = plt.subplots(2, 2, figsize=(12, 8), layout="constrained")
    tables = ["# Sweep distributions", "", "CONFIRMED for the checked-in sweep. Each column contains 1,000 events.", ""]
    for field, ax in zip(("objective", "trigger", "twist"), axes.flat):
        counts = [Counter(e[field] for e in group) for group in bands]
        names = sorted(set().union(*counts))
        tables += [f"## {field.capitalize()}", "", "|Outcome|" + "|".join(labels) + "|", "|---|" + "---:|" * len(labels)]
        for name in names:
            tables.append("|" + name + "|" + "|".join(str(c[name]) for c in counts) + "|")
        tables.append("")
        totals = Counter(e[field] for e in all_events)
        ax.barh(names, [totals[n] for n in names], color="#346a89")
        ax.set(xlabel="Events across five bands", title=field.capitalize())
    ax = axes.flat[3]
    ax.boxplot([[e["_seconds"] for e in group] for group in bands], tick_labels=labels, showfliers=False)
    ax.set(xlabel="Pilot level", ylabel="Modeled seconds", title="Time to finish the prescribed route")
    fig.savefig(OUT / "distributions.png", dpi=140)
    plt.close(fig)
    tables += ["## Difficulty and reward", "", "|Pilot level|Mean encounter level|Mean route seconds|Mean reward / sim bounty|Maximum reward / sim bounty|",
               "|---|---:|---:|---:|---:|"]
    prev = -1
    for label, group in zip(labels, bands):
        seconds = mean(e["_seconds"] for e in group)
        require(seconds > prev, "mean route workload did not increase")
        prev = seconds
        values = [e["_value"] for e in group]
        tables.append(f"|{label}|{mean(e['encounterLevel'] for e in group):.2f}|{seconds:.2f}|{mean(values):.3f}|{max(values):.3f}|")
    (OUT / "distributions.md").write_text("\n".join(tables) + "\n")
    samples = []
    for group in bands:
        chosen = {}
        for e in group:
            chosen.setdefault(e["objective"], e)
        picks = list(chosen.values())
        picks += [e for e in group if e not in picks][:10 - len(picks)]
        samples.extend({k: v for k, v in e.items() if not k.startswith("_")} for e in picks)
    (OUT / "samples.jsonl").write_text("".join(json.dumps(e, separators=(",", ":")) + "\n" for e in samples))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("events", type=Path)
    parser.add_argument("economy_report", type=Path)
    args = parser.parse_args()
    events = [json.loads(line) for line in args.events.read_text().splitlines()]
    require(len(events) == 5000 and len({e["seed"] for e in events}) == 5000, "expected 5000 unique seeds")
    audit(events, args.economy_report.read_text())
    bands = [[e for e in events if lo <= e["level"] <= hi] for lo, hi in BANDS]
    for group, (lo, hi) in zip(bands, BANDS):
        require(len(group) == 1000 and {e["level"] for e in group} == set(range(lo, hi + 1)), "band coverage")
    require(set(e["objective"] for e in events) == GOAL.keys(), "objective coverage")
    publish(bands)
    print("AUDIT OK: 1000 distinct seeds in each of 5 bands, levels 0-40, 5000 routes and reward budgets")
    print("Wrote 50 full samples, distribution tables and charts")


if __name__ == "__main__":
    main()
