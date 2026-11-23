# Spanish text coverage audit

**CONFIRMED.** The task branch has 31 source-site findings for missing dictionary entries. The target branch has 41. Both have two conflicting dictionary definitions and zero detected placeholder or colour-code mismatches. A concrete gap on the task branch affects all seven commander greetings. The comms screen looks up each English greeting, and none appears in the rebuilt dictionary. See `src/java/fr/testudo/spacecorsair/mod/ModComms.java:275`, `src/java/fr/testudo/spacecorsair/mod/ModFactionData.java:9` and [task-branch.csv](task-branch.csv).

| Finding | Task branch | sc-mod-workspace |
|---|---:|---:|
| Literal reaching a display operation, review translation path | 18 | 20 |
| Missing dictionary entry | 31 | 41 |
| Stock prose or achievement title copied from English, review intent | 15 | 15 |
| Dictionary entry with no matching English source literal | 63 | 85 |
| Placeholder or colour-code mismatch | 0 | 0 |
| Estimated widget overflow | 56 | 58 |
| Glossary term requiring review | 299 | 302 |
| Duplicate key with conflicting text | 2 | 2 |
| **Total CSV rows** | **484** | **523** |

**CONFIRMED.** Each row identifies a key, English text, source file and line, and problem. One key can have several sites or several issues. A missing entry and a display bypass can apply at the same site. Both duplicate rows concern the keys `Missile reload` and `NEW`. Later overlays replace earlier entries. See `i18n/gpt/v35_es.json:22`, `i18n/gpt/v45_audit_es.json:27` and `i18n/lang/build_es_json.py:19`.

| Scanned tree | Effective dictionary | Stock strings | Full gap list | Unresolved source sites |
|---|---:|---:|---|---|
| claude/project-thread-kci9au at `a02248c`, source for this PR | 1,388 | 963 | [484 findings](task-branch.csv) | [472 sites](task-branch-dynamic.csv) |
| sc-mod-workspace at `49a9b87` | 1,507 | 963 | [523 findings](sc-mod-workspace.csv) | [522 sites](sc-mod-workspace-dynamic.csv) |

**CONFIRMED.** Using the CI identity described below, the target snapshot adds 45 findings and removes six relative to the task snapshot. The committed CSVs provide independent baselines for these two branches. The dynamic-site tables record expressions requiring runtime values or more data flow than the scanner resolves. They are outside the finding totals.

## How text reaches the player

- **CONFIRMED.** The build regenerates the flat mod dictionary, injects Spanish Android resources, then packages the dictionary as `assets/lang/es.json`. The linter reads the base UI dictionary, differing mod-text entries, aligned mission and reputation data, and each branch's ordered overlays. It reproduces the checked-in generated dictionary exactly on both snapshots. Generated dictionaries, earlier extraction lists and drafts are excluded as evidence that an English key is live. See `build.sh:41`, `build.sh:50`, `build.sh:53`, `i18n/lang/build_es_json.py:4`, `:15`, `:17`, `:28` and `i18n/lang/extract_mod.py:24`.
- **CONFIRMED.** Runtime lookup uses exact English keys and falls back to the supplied text. The formatter substitutes numbered braces or applies Java formatting after lookup. Other entry points re-resolve labels and localize incoming wire text. A layout listener can translate unstyled TextViews by whole key, trimmed key or middle-dot segments. See `src/java/fr/testudo/spacecorsair/mod/ModLang.java:160`, `:244`, `:257`, `:292`, `:299`, `:321`, `:334` and `:354`.
- **CONFIRMED.** The stock build helper overlays tab-separated translations and copies the source string when a translation is absent. The existing checker reads an unpacked default XML. This audit reads the default table from the tracked base APK, compares the actual Spanish XML, and uses the tracked dump for readable English source locations. It also checks stock input sheets for displaced definitions and obsolete keys. See `i18n/build_es.py:4`, `:14`, `i18n/check_es.py:4`, `es/add_locale.py:28`, `:47`, `:65` and `es/arsc.py:62`.

## Interpreting the rows

- **CONFIRMED lookup facts.** The scanner parses all mod Java files with the JDK compiler front end. It follows literals, literal concatenation, ternary alternatives, final fields and locals, array indices and arguments forwarded through recognized helpers. It tracks recognized Android setters, dialogs, toast, canvas and render-queue text, and ship-name assignment. Comments and escaped quotes are handled by the Java parser. Declared resource IDs and known hand-selected language alternatives take separate paths. See [TextSites.java](../../tools/b2-09/TextSites.java).
- **SUSPECTED display bypass or stale entry.** A literal at a sink can still be localized by a later screen pass. Dynamic joins, externally supplied text and library callbacks can use keys with no exact literal in the scanned source. The stale test conservatively retains a key found anywhere as a Java literal or aligned English data value. Unresolved sites and unit suffixes are review leads. The stock English-copy check is limited to achievement names and text of at least four words lacking a translation-sheet entry. Proper names can be intentional. See `ModLang.java:321` under the mod Java directory and `i18n/glossary_es.md:67`.
- **CONFIRMED format and duplicate checks.** The checker compares argument indices and conversions, width and precision, numeric brace tokens, escaped percent signs, line-break tokens and colour codes. Explicit argument reordering preserves the binding. XML-escaped quotes and percentages in ordinary prose are accounted for. Duplicate flat JSON keys are inspected before last-value-wins parsing. Conflicts across effective overlays and stock definitions also produce rows. The generated dictionary and XML count as outputs of their respective sources.
- **SUSPECTED overflow.** For each enclosing Java method and recognized widget receiver/setter, the linter takes the widest existing English literal. It estimates the longest line in em units with different advances for narrow glyphs, ordinary letters, wide glyphs and capitals. It flags a Spanish width exceeding 110% of that English maximum plus one em. Wrapping, real Android font metrics, device width and runtime substitutions can change the result. See [width and widget comparison](../../tools/b2-09/lint_text.py).
- **SUSPECTED terminology.** The linter reads the owner's glossary, matches longer English phrases first and checks their listed equivalents case-insensitively with basic plural handling. Inflection, context and proper names require review. These rows identify the English term for the team to inspect. See `i18n/glossary_es.md:2` and `:67`.

## Reproduction and CI

Use Python 3.9 or later and a full JDK 11 or later. A plain run writes the full CSV to stdout. `--ci` compares against the checked-in task-branch CSV by default. Use `--baseline` for a different snapshot. Exit 0 means no new findings. Exit 1 prints the added rows. The comparison counts occurrences by key, English, file path and problem so line shifts alone pass. Existing rows can disappear without failing the comparison.

Commands and output from the repository root follow. The target worktree points to the pinned target commit above.

```sh
export PATH=/workspace/setup/tools/jdk17/bin:$PATH
git worktree add --detach /tmp/b2-09-target origin/sc-mod-workspace >/dev/null 2>&1
python3 codex/tools/b2-09/lint_text.py --csv codex/out/b2-09/task-branch.csv --dynamic-csv codex/out/b2-09/task-branch-dynamic.csv
python3 codex/tools/b2-09/lint_text.py --root /tmp/b2-09-target --csv codex/out/b2-09/sc-mod-workspace.csv --dynamic-csv codex/out/b2-09/sc-mod-workspace-dynamic.csv
python3 codex/tools/b2-09/lint_text.py --ci
python3 codex/tools/b2-09/lint_text.py --root /tmp/b2-09-target --ci --baseline codex/out/b2-09/sc-mod-workspace.csv
node server/rendezvous/test/b2-09-text.test.mjs
mkdir -p /tmp/mc && javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
(cd server/rendezvous && node test/registry.test.mjs) | tail -1
```

```text
1388 dictionary keys, 963 stock strings, 472 unresolved source sites; 484 findings
1507 dictionary keys, 963 stock strings, 522 unresolved source sites; 523 findings
1388 dictionary keys, 963 stock strings, 472 unresolved source sites; 484 findings
0 new findings
1507 dictionary keys, 963 stock strings, 522 unresolved source sites; 523 findings
0 new findings
TEXT LINTER OK (seven checks, constant expressions, line drift and new-gap exit)
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
REGISTRY OK
```
