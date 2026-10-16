# Spanish (values-es) translation report
- Total strings: 963 (no string-array/plurals in arrays.xml → no arrays.xml output)
- Translated: 894
- Kept as-is: 69 (proper/product names, app_name, app_version, app_package, dev_mail, xp labels, Ok, DPS, model names, alien gibberish line, Spanish-already achievement names)
- Validation (check_es.py): XML parses, all names present in same order, specifiers/tags/\n/\"/entities match, apostrophes escaped → 0 problems.

## Unsure / notes
- `next`/`previous` are French ("Suivant"/"Précédent") in the English source; translated to Siguiente/Anterior.
- Malformed HTML in source preserved verbatim: shield_desc `<font color = reen<b>`, diamondShieldDesc `<br<br>`, missionVentohighDestroyTaupeDescription `<br>br>`, SentenceFive `<br></br>`.
- AchievementCleanOrionEnnemiesDesc says "Hermes" in English (likely source bug: Orion); kept Hermes.
- Pop-culture achievement names adapted (e.g. "Legen... espera... dario", "Autos chocadores" for Stock-car, "Farmeador chino" for Chinese farmer — the latter may be worth reconsidering for sensitivity).
- alterationText*/shieldBonus* are sentence fragments concatenated with numbers in code; word order may read awkwardly in Spanish depending on assembly.
- Lengths: long descriptions are roughly equal to English; a few short labels (e.g. "Tiempo de regen.", "Cant. disp.") slightly longer.
