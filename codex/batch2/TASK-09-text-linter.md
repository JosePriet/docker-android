# Task 09: text and Spanish coverage linter (do not translate)

Owner rule: Spanish text is written by the owner's own team, not by you. This task only finds gaps and errors.
1. Read how text works: `ModLang`, every `tr(` call or equivalent in mod Java, `i18n/` (build_es.py, check_es.py, lang/, gpt/), `es/`, and how build.sh builds the Spanish file.
2. Write `codex/tools/b2-09/lint_text.py` that reports: English literals shown to the player that bypass translation; keys with no Spanish entry; Spanish entries for keys that no longer exist; placeholder mismatches (%d, %s, {0}, colour codes) between EN and ES; strings likely to overflow their UI box (estimate from font metrics or the longest existing string per widget; state the method); inconsistent terms vs `i18n/glossary_es.md`; duplicated keys with different text.
3. Run it on the current branch and on `sc-mod-workspace`. Output `codex/out/b2-09/report.md` with counts and the full gap list as CSV (key, English, file:line, problem). No Spanish text from you.
4. Add a `--ci` mode returning non-zero on new gaps, and a test for the linter itself.
