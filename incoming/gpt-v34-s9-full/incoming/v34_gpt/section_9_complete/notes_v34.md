# Section 9 — complete

Source of truth: gpt-handoff-v34/README-for-gpt.md, hulls_current.csv, pilot-stats.md.

- All 47 registry hull IDs have exactly one English and Spanish flavour sentence, each at most 90 Unicode characters. Includes retired freighters, dev hull and all seven secrets, following the complete registry. Stock ships and NPC flagship art are outside this registry and are not added.
- Existing merged counter/resistance/family text is included for continuity; do not duplicate already integrated entries. The delivered pairing proposal preserves the existing 14-pair wheel. `warden` is the art key for Frontier Authority.
- Authoritative reskin parents: Flak = autocannon; Solar Lance = blaster; Brood Spines = autocannon. This supersedes earlier assumptions of rail/arc parents. Apply existing parent resistance logic; these text files do not rebalance anything.
- Weapon family names are shared across sizes; no new size-specific names or mechanics are introduced. Names/descriptions are already merged according to the README.
- Pilot tutorial is supplied as short bilingual paragraphs, consistent with implemented stats. The existing three-line L10 tutorial may be retained; these paragraphs are expanded help text, not a change to unlock, allocation or combat formulas.
- Stats start at zero at L10, reach 800 at L40, and gain the final 200 from seven story finales (four grant 29, three grant 28); no stat-point allocation. Elite +150 and boss +300 bonuses are mechanics, not additional player rewards.
- Technical validation: exact registry coverage, no duplicate IDs, 90-character flavour limits, UTF-8 CSV parsing and ZIP integrity. Text fit still needs an in-game check.
