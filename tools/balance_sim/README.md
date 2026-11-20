# Space Corsair combat balance simulator

Python 3.10+, standard library only. Run from this directory, or pass the script path from any working directory:

```sh
python cli.py killtime --hull Leviathan --laser modRailgunL15 --refit 10 --vs "alien titan" --level 40
python cli.py killtime --hull Leviathan --laser disintegrator --refit 10 --vs "Police titan Bloodforge" --level 40 --max-time 600
python cli.py table --level 40
python cli.py enemies --level 40
python -m unittest discover -s tests -v
python validate.py --output validation.md
python generate_report.py
```

`sc_sim/` contains the implementation; top-level modules are compatibility entry points. In the repository it reads `codex/data/` and the mod source. The standalone zip bundles identical `data/` and read-only `src/` evidence; it needs no Java, game jar or Android runtime. Default missiles maximize steady direct+splash DPS and shields maximize capacity. Use `--missile none`, `--shield none`, `--no-doomsday`, `--no-anchor`, `--rear`, `--stage`, `--faction`, or `--json` for controlled comparisons. Explicit gear uses the exact exported enum identifier; generic family names select the best eligible family item. Enemies are available at the four tabulated levels; invalid/ambiguous names and oversized lasers fail clearly.

Kill and survive columns are uninterrupted counterfactual clocks; the actual duel outcome ends at the first death. `>180` is censoring. Every 47-hull table includes refit 0 and 10 against all available enemy variants, including elites, fleets, police, flagships and police titans. It includes unavailable/retired/DEV hulls as comparison builds. Best gear is scoped to modeled direct weapons, excluding specialized drone bays and the Phoenix Lance. Read [ASSUMPTIONS.md](ASSUMPTIONS.md) for the selection policy and omitted effects.

Validation checks oracle loading within 2%, independently recomputes capital hull/overshields, and reports emulator discrepancies. The emulator timing comparison does **not** pass 25% accuracy and is not hidden or tuned away. `validate.py --strict-emulator` returns nonzero when it exceeds that threshold; normal validation returns nonzero for enemy conformance failures only. [validation.md](validation.md) contains every available comparison and explanations. [report.md](report.md) is generated from the same CLI/model with full tables at L10/20/30/40 and five outlier cases.
