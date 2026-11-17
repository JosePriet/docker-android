# Instructions for Codex (and other coding agents)

Space Corsair mod: Java 8 mod code in `src/java/fr/testudo/spacecorsair/mod/`, compiled against `work/game_v168.jar` (the closed game) and merged into `work/smali`. Lobby service in `server/rendezvous/` (Cloudflare Worker, Node test: `cd server/rendezvous && node test/registry.test.mjs` must print `REGISTRY OK`).

Your tasks are in `codex/` (start with `codex/README.md`). Rules:
- Work only inside the files your task names. Do not edit `work/smali/`, `src/patch/`, `work/modart/`, `i18n/`, `build.sh`, `.github/`, or anything under `tools/`.
- Never run `src/patch/hooks*.py` (already applied; running one twice breaks the game).
- The full build (`scripts/check.sh`) needs a signing key that is not in the repo. To check that Java compiles, use:
  `mkdir -p /tmp/mc && javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java`
- JVM tests in the repo style live in `work/dtest/` (example: `work/dtest/fr/testudo/spacecorsair/mod/V49.java`); run them with classpath `.:../game_v168.jar:../../tools/android-4.1.1.4.jar:../stubcls` plus your compiled mod classes.
- No secrets, keys, tokens, IP addresses or personal data in anything you write.
- Open a pull request against `sc-mod-workspace`; never push to `sc-mod-workspace`, `releases`, `emulator-tests` or `emulator-results`. Every PR is reviewed before merge.
