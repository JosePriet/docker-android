"""Run each main in a fresh JVM and directory, including legacy print-only checks."""
import os
from pathlib import Path
import re
import subprocess
import sys
import xml.etree.ElementTree as ET

tmp, cache = map(Path, sys.argv[1:])
root = Path.cwd()
src = root / "work/dtest"
classpath = os.pathsep.join(map(str, [tmp / "tests", tmp / "mod", root / "work/game_v168.jar",
                                    root / "tools/android-4.1.1.4.jar", root / "work/stubcls"]))
agent = f"-javaagent:{cache}/org.jacoco.agent.jar=destfile={tmp}/mod.exec,includes=fr.testudo.spacecorsair.mod.*"
failure = re.compile(r"^(?:FAIL\b|VERIFY\b|BAD\b|bad texts [1-9]|missions .* bad [1-9])|!!! .*VerifyError|\b(?:VALUES-FAIL|VERIFY-FAIL|FAILED)\b")
passed = failed = cases = 0


def suite(label, command, cwd):
    global passed, failed, cases
    try:
        run = subprocess.run(command, cwd=cwd, capture_output=True, text=True, errors="replace", timeout=90)
        lines = (run.stdout + run.stderr).splitlines()
        problems = [line for line in lines if failure.search(line)]
        if run.returncode or problems:
            print(f"FAIL {label} (exit {run.returncode})")
            print("\n".join((problems + (lines[-8:] if run.returncode else []))[:18]))
            failed += 1
        else:
            details = [s for s in lines if s.endswith(("REGISTRY OK", "VALUES-OK", "VERIFY-OK")) or s.startswith("CASES ")]
            print(f"PASS {label}", *details)
            cases += sum(int(s.split()[1]) for s in lines if re.fullmatch(r"CASES [0-9]+", s))
            passed += 1
    except subprocess.TimeoutExpired:
        print(f"FAIL {label} timed out after 90 s")
        failed += 1


for source in sorted(src.rglob("*.java")):
    code = source.read_text()
    if not re.search(r"\bstatic\s+void\s+main\s*\(", code):
        continue
    package = re.search(r"^package\s+([\w.]+);", code, re.M)
    main = (package[1] + "." if package else "") + source.stem
    cwd = tmp / main
    cwd.mkdir()
    options = ["--add-opens=java.base/java.lang=ALL-UNNAMED"] if main.endswith(".BatchLoot") else []
    runtime = classpath
    if main in {"V21", "V22", "V23", "W18"}:
        runtime = runtime.replace(str(root / "work/game_v168.jar"), str(tmp / "game.jar"))
    if main == "W18":
        runtime = str(tmp / "text-fixture") + os.pathsep + runtime
    suite(main, ["java", "-ea", agent, *options, "-cp", runtime, main], cwd)

service = root / "server/rendezvous"
for test in sorted((service / "test").rglob("*.test.mjs")):
    suite(test.name, ["node", str(test)], service)

xml = tmp / "coverage.xml"
subprocess.run(["java", "-jar", str(cache / "org.jacoco.cli.jar"), "report", str(tmp / "mod.exec"),
                "--classfiles", str(tmp / "mod"), "--xml", str(xml), "--quiet"], check=True)
# A source-file LINE counter counts a shared outer/inner-class source line only once.
sources = ET.parse(xml).findall(".//sourcefile")
# Include all sources with no direct Android, GLES or closed-game class reference.
# Check the compiled constant pool (jdeps), including nested classes, not class names or hit counts.
deps = subprocess.check_output(["jdeps", "--ignore-missing-deps", "-verbose:class", "-filter:none",
                                str(tmp / "mod")], text=True)
needs_game = set()
for name, dependency in re.findall(r"^\s+(fr\.testudo\.spacecorsair\.mod\.\S+)\s+->\s+(\S+)", deps, re.M):
    if (dependency.startswith(("android.", "javax.microedition.", "fr.testudo."))
            and not dependency.startswith("fr.testudo.spacecorsair.mod.")):
        needs_game.add(name.split(".")[-1].split("$")[0])

print("Source file | covered / executable lines | direct game/Android dependency")
all_hit = all_total = pure_hit = pure_total = 0
for source in sorted(sources, key=lambda node: node.get("name")):
    name = source.get("name")
    count = source.find("counter[@type='LINE']")
    hit = int(count.get("covered")) if count is not None else 0
    total = hit + (int(count.get("missed")) if count is not None else 0)
    direct = name[:-5] in needs_game
    print(f"{name} | {hit}/{total} | {'yes' if direct else 'no'}")
    all_hit += hit
    all_total += total
    if not direct:
        pure_hit += hit
        pure_total += total
print(f"All mod lines {all_hit}/{all_total} ({100*all_hit/all_total:.2f}%)")
print(f"Without direct game/Android dependencies {pure_hit}/{pure_total} ({100*pure_hit/pure_total:.2f}%)")
print(f"New named/parameterized checks {cases}")
print(f"Suites {passed} passed, {failed} failed")
sys.exit(int(bool(failed) or 2*pure_hit <= pure_total))
