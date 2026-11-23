#!/usr/bin/env python3
"""From the repository root: python3 codex/tools/b2-06/map.py (JDK 17+ and Graphviz)."""

import csv
from collections import Counter, defaultdict
from pathlib import Path
import re
import subprocess
from hookmap import collect

TOOL = Path(__file__).resolve().parent
OUT = Path("codex/out/b2-06")
JAVA = Path("src/java/fr/testudo/spacecorsair/mod")
GROUPS = {
    "combat": "Mod AegisDrones Anchor Boss Caps Derelict EnemyGuns Fleet Hornet Lance LevDoom Live Loot Missile Monolith Shield StationGuns StockSpawn Titan TitanAI V34 Weapons Wreck WarpOut CounterData",
    "police": "Calm Police PoliceAura PoliceData PoliceEdges PoliceGen PoliceTitan",
    "refit-ships": "CapitalData Capitals Faction FactionData Fitting Hardpoints Lock Map Place RefitPanel RefitScreen Rep RepData Sector Ships Specs V30Data V35 V38",
    "art-fx": "AnchorData Art Fx FxData Icons LevData LevFx MonoData MonoFx Poi ShipFlavour ShipStyle Sound SpriteSpace Wings",
    "ui": "Alerts Claim Comms FlagData Lang Notify Qol Scroll ShipTree Sources Ui",
    "save": "Dev GameQueue Save SaveSig TestMode",
    "network": "Lan LanCheck LanSync LanUi Lobby Net",
    "prologue": "Intro Prologue",
}
GROUP = {
    ("Mod" if n == "Mod" else "Mod" + n): group for group, names in GROUPS.items() for n in names.split()
}


def write(name, header, rows):
    with (OUT / name).open("w", newline="") as f:
        writer = csv.writer(f, lineterminator="\n")
        writer.writerow(header)
        writer.writerows(sorted(rows))


def top(symbol):
    return re.split(r"\$|->", symbol, 1)[0]


def index():
    result = subprocess.check_output(
        ["java", str(TOOL / "JavaIndex.java"), *sorted(JAVA.glob("*.java"))], text=True
    )
    decl, refs, arrays = {}, set(), set()
    for line in result.splitlines():
        tag, *data = line.split("\t")
        if tag == "D":
            kind, name, *info = data
            decl[name] = (kind, *info)
        elif tag == "R":
            refs.add(tuple(data))
        elif tag == "A":
            arrays.add(tuple(data))
    return decl, refs, arrays


def graphs(decl, refs):
    files = {f.stem for f in JAVA.glob("*.java")}
    if files != GROUP.keys():
        raise ValueError(f"Classify {files ^ GROUP.keys()}")
    edges = {(a, b, p + ":" + ln) for a, b, p, ln in refs if b in decl and decl[b][0] == "method"}
    write("calls.csv", ["caller (including initializers)", "declared target", "call site"], edges)
    counts = Counter((top(a), top(b)) for a, b, _ in edges if top(a) != top(b))
    for group in GROUPS:
        lines = [
            "digraph calls {",
            'graph [rankdir=LR,bgcolor="white",pad=0.25,nodesep=0.20];',
            'node [shape=box,style="rounded,filled",fillcolor="#e7f2ff",fontname="sans-serif"];',
            'edge [color="#66768b",fontname="sans-serif",fontsize=9];',
        ]
        for cls in sorted(files):
            if GROUP[cls] == group:
                lines.append(f'"{cls}";')
        summary = Counter()
        for (a, b), n in counts.items():
            if GROUP[a] != group:
                continue
            to = b if GROUP[b] == group else GROUP[b]
            summary[a, to] += n
        for (a, b), n in sorted(summary.items()):
            if b in GROUPS:
                lines.append(f'"{b}" [fillcolor="#fff1d4",shape=ellipse];')
            lines.append(f'"{a}" -> "{b}" [label="{n}"];')
        subprocess.run(
            ["dot", "-Tsvg", "-o", OUT / "svg" / (group + ".svg")],
            input="\n".join(lines + ["}"]),
            text=True,
            check=True,
        )


def java_candidates(decl, refs, arrays, roots, java_text, smali_strings):
    outgoing = defaultdict(set)
    incoming = set()
    for a, b, _, _ in refs:
        if a != b:
            outgoing[a].add(b)
            incoming.add(b)
    # A reachable type can run field initializers. Overridden methods may be called
    # by Android, the game, collection interfaces or anonymous callback dispatch.
    for symbol, (kind, path, line, mods, dispatch) in decl.items():
        owner = symbol.split("->")[0]
        if owner != symbol:
            outgoing[symbol].add(owner)
        if kind == "field":
            outgoing[owner].add(symbol)
        if dispatch == "override":
            roots.add(symbol)
    literals = set(re.findall(r'"([\w.$]+)"', java_text)) | smali_strings
    for symbol in decl:
        member = symbol.split("->")[-1]
        name = re.split(r"[:(]", member)[0]
        if name in literals or "fr.testudo.spacecorsair.mod." + symbol in literals:
            roots.add(symbol)
    live = set()
    todo = list(roots)
    while todo:
        n = todo.pop()
        if n not in live:
            live.add(n)
            todo.extend(outgoing[n] - live)
    dead = []
    for symbol, (kind, path, line, mods, dispatch) in decl.items():
        if symbol in roots:
            continue
        if "-><init>" in symbol and "private" in mods:
            continue  # intentionally non-instantiable
        if symbol in live and (kind != "field" or symbol in incoming):
            continue
        reason = "no resolved incoming use" if symbol not in incoming else "no path from conservative roots"
        dead.append(
            (
                kind,
                symbol,
                path + ":" + line,
                "SUSPECTED",
                reason + "; dynamic lookup or external entry possible",
            )
        )
    for field, row, path, line in arrays:
        if field not in incoming and field not in roots:
            dead.append(
                (
                    "data row",
                    field + "[" + row + "]",
                    path + ":" + line,
                    "SUSPECTED",
                    "enclosing table has no resolved consumer",
                )
            )
    tests = [
        (p, p.read_text().splitlines())
        for folder in ("work/dtest", "tests")
        for p in sorted(Path(folder).rglob("*.java"))
    ]
    inventory = []
    for kind, symbol, site, status, reason in dead:
        owner, _, member = symbol.partition("->")
        name = re.split(r"[:(]", member)[0]
        pattern = re.compile(r"\b" + re.escape(owner) + r"\." + re.escape(name) + r"\b")
        use = next(
            (f"{p}:{i}" for p, lines in tests for i, line in enumerate(lines, 1) if pattern.search(line)),
            None,
        )
        if use:
            status, reason = (
                "CONFIRMED",
                "test source references this member name at " + use + "; retain the test API",
            )
        inventory.append((kind, symbol, site, status, reason))
    return inventory


def keyed_tables():
    """Check first-match key lookups and the price embedded in each applied hull enum entry."""
    enum_file = Path("work/smali/fr/testudo/spacecorsair/business/loot/SpaceObjectType.smali")
    enum_lines = enum_file.read_text().splitlines()
    enum_keys, prices = set(), {}
    current = None
    for i, line in enumerate(enum_lines):
        field = re.match(r"\.field public static final enum (\w+):", line)
        if field:
            enum_keys.add(field[1])
        name = re.search(r'const-string v1, "(\w+)"', line)
        if name:
            current = name[1]
        if current and "Price;->newStatic" in line:
            value = re.search(r"const(?:/\w+)? v9, (0x[0-9a-f]+)", enum_lines[i - 1])
            if value:
                prices[current] = int(value[1], 16)
    hulls = {}
    for line in (JAVA / "ModShips.java").read_text().splitlines():
        if 'new Hull("' in line:
            match = re.search(r'new Hull\("(\w+)".*?, "\w+", \d+, \d+, (\d+), LootRarety', line)
            if not match:
                raise ValueError("unrecognized hull constructor")
            hulls[match[1]] = int(match[2])
    mismatches = [name for name, price in hulls.items() if prices.get(name) != price]
    print(f"Hull prices: {len(hulls)} checked; mismatches {mismatches}")
    rows = []
    for cls, keys in [("ModShipFlavour", hulls), ("ModSources", enum_keys)]:
        path = JAVA / (cls + ".java")
        seen = set()
        for i, line in enumerate(path.read_text().splitlines(), 1):
            key = re.match(r'\s*\{"(\w+)",', line)
            if not key:
                continue
            name = key[1]
            if name in seen or name not in keys:
                status = "CONFIRMED" if name in seen else "SUSPECTED"
                reason = (
                    "shadowed by earlier first-match row" if name in seen else "no corresponding catalog key"
                )
                rows.append(("data row", cls + "." + name, f"{path}:{i}", status, reason))
            seen.add(name)
        print(f"{cls}: {len(seen)} distinct catalog lookup keys")
    return rows


def assets(java_text):
    literals = set(re.findall(r'"([A-Za-z0-9_]+)"', java_text))
    prefixes = set(re.findall(r'"(\w+_)"\s*\+', java_text))
    suffixes = set(re.findall(r'\+\s*"(_\w+)"', java_text))
    result = []
    for f in sorted(Path("work/modart").glob("*")):
        if not f.is_file():
            continue
        stem = f.stem
        if stem in literals:
            status, reason = "CONFIRMED", "exact key appears in Java source"
        elif re.fullmatch(r".+_stage[1-5]", stem) and stem.rsplit("_stage", 1)[0] in literals:
            status, reason = "CONFIRMED", "known hull art and stage key lookup in ModV35.java:574"
        elif re.fullmatch(r".+_anim_0[1-8]", stem) and stem.split("_anim_")[0] in literals:
            status, reason = "CONFIRMED", "known hull art and indexed animation in ModLive.java:315"
        elif any(stem.startswith(p) for p in prefixes) or any(stem.endswith(s) for s in suffixes):
            status, reason = "SUSPECTED", "possible runtime-composed key; family prefix/suffix only"
        else:
            status, reason = (
                "SUSPECTED",
                "no exact Java key or matched composition; inspect asset listing and generated lookups",
            )
        result.append(("art", stem, str(f), status, reason))
    return result


def utilities():
    files = [p for folder in ("scripts", "tools") for p in Path(folder).rglob("*") if p.is_file()]
    names = {p.name for p in files}
    pat = re.compile(r"(?<![\w.-])(" + "|".join(map(re.escape, sorted(names))) + r")(?![\w.-])")
    hits = defaultdict(set)
    for filename in subprocess.check_output(["git", "ls-files", "-z"]).decode().split("\0"):
        p = Path(filename)
        if not filename or p.suffix.lower() not in {
            ".md",
            ".py",
            ".sh",
            ".yml",
            ".yaml",
            ".txt",
            ".json",
            ".mjs",
            ".js",
        }:
            continue
        if filename.startswith(("codex/out/", "codex/tools/b2-06/")) or not p.exists():
            continue
        for i, line in enumerate(p.read_text(errors="replace").splitlines(), 1):
            for name in pat.findall(line):
                if name != p.name:
                    hits[name].add(f"{p}:{i}")
    rows = []
    for p in files:
        sources = sorted(hits[p.name])
        if sources:
            reason = "named by " + ", ".join(sources[:3])
        elif p.parent.name == "d2j" and p.suffix == ".jar":
            reason = "classpath wildcard in build.sh:17"
        else:
            reason = "no tracked name reference; manual invocation or indirect dependency possible"
        rows.append(
            (
                "utility",
                p.name,
                str(p),
                "CONFIRMED" if sources or reason.startswith("classpath") else "SUSPECTED",
                reason,
            )
        )
    return rows


def main():
    (OUT / "svg").mkdir(parents=True, exist_ok=True)
    decl, refs, arrays = index()
    hooks, root_calls = collect(decl)
    covered = {r[0].split(":")[0] for r in hooks}
    missing = {str(p) for p in Path("src/patch").glob("hooks*.py")} - covered
    if missing:
        raise ValueError(f"unmapped recipes: {missing}")
    write(
        "hookmap.csv",
        [
            "recipe",
            "applied site",
            "enclosing base method",
            "mod target",
            "Java declaration",
            "phase (inferred)",
            "evidence",
            "site status",
        ],
        hooks,
    )
    graphs(decl, refs)
    texts = "\n".join(f.read_text() for f in sorted(JAVA.glob("*.java")))
    smali_strings = set()
    for path in Path("work/smali").rglob("*.smali"):
        if "mod" not in path.parts:
            smali_strings.update(re.findall(r'const-string[^\n]+, "([\w.$]+)"', path.read_text()))
    dead = java_candidates(decl, refs, arrays, root_calls, texts, smali_strings)
    rows = dead + keyed_tables() + assets(texts) + utilities()
    write("deadcode.csv", ["kind", "symbol or asset", "source", "status", "evidence / limitation"], rows)
    print(
        f"{len(covered) - int('' in covered)} recipes; {len(hooks)} hook rows; {len(decl)} declarations; {len(dead)} Java/table candidates"
    )
    print(dict(sorted(Counter(r[0] for r in rows).items())))


if __name__ == "__main__":
    main()
