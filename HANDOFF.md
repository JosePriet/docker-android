# Space Corsair mod: handoff for a new Claude session

This branch (`sc-mod-workspace` on JosePriet/docker-android) holds the **complete working state** of the mod as of v29, so any Claude Code session can continue the work.

## Owner's working preferences (keep them)
- **Replies:** terse and direct (Absolute Mode). Give a check list with every delivery.
- **Visuals come first:** never downscale or lossily compress final art. Mod art ships as lossless WebP, pixel-identical to the masters.
- **Division of labour:**
  - ChatGPT does all art, lore and translations.
  - Claude does code, integration, builds, tests and releases.
- **Subagents:** use at most **one**, and only after asking the owner and saying why.
- **CI minutes:** the GitHub Actions free tier is limited, so batch fixes into as few emulator runs as possible.
- **Approval first:** don't start big features until the owner has approved a plan.
- **Releases:** every release goes to the `releases` branch (README table + `apk/`). Share the raw download link.

## Repository layout
- `src/java/fr/testudo/spacecorsair/mod/*.java`: the mod, about 35 classes, Java 8. It's compiled against `work/game_v168.jar`.
- `src/patch/hooks*.py`: the smali patches. **All of them are already applied** to `work/smali`; never run one twice.
- `src/*.py`: generators and helpers:
  - `rebuild.py`: writes the APK;
  - `set_version_code.py`: sets versionName and versionCode;
  - `genmissions.py` and `genrep.py`;
  - the art import scripts.
- `src/data/`: ChatGPT's JSON and Markdown data (missions, reputation, lore, notes).
- `work/smali`: the patched game smali. The build copies the freshly compiled mod smali into it.
- `work/modart`: shipped art (lossless WebP). `work/modsfx`: sounds. `work/dtest`: JVM verifier tests.
- `i18n/values-es`: the game's strings in Spanish. `i18n/lang/es_full.json`: the mod's Spanish dictionary.
- `es/add_locale.py` and `es/arsc.py`: add the `es` locale to `resources.arsc`.
- `base/space-corsair-mod-signed-v12.apk`: the base APK every build starts from.
- `tools/`: dx, smali/baksmali, dex2jar, uber-apk-signer and the android.jar stub.
- `emulator-tests/`: the CI test flow, which also lives on the `emulator-tests` branch.
- `incoming/`: ChatGPT deliveries that aren't integrated yet. **`incoming/map_territory/` should go in next.**

## Build
1. **Signing key:** the owner has `key.p12`; it is not in git. Copy it to `work/key.p12`. The keystore password is `android`. Without this exact key, updates won't install over the owner's existing app.
2. **Requirements:** Java 17+ and Python 3 with Pillow and numpy.
3. **Run:** `bash build.sh` from the repo root.
   - It compiles the mod, dexes it, assembles the smali and runs the JVM verifier tests.
   - It then adds the Spanish locale, stamps the version and signs the APK.
   - Output: `out/space-corsair-mod-signed-vNN.apk`.
4. **Next version:** copy `build.sh`, replace `v29` with the new version and set `MODVER=NN`. versionCode becomes 1000+NN and versionName "mod vNN (base 1.5.1)".
5. **Check:** the APK should end with BUILD-OK. JVM tests: `cd work/dtest && java -Xverify:all -cp .:../game_vNN.jar:../../tools/android-4.1.1.4.jar:../stubcls V23`.

## Test on the emulator (GitHub Actions)
- **Trigger:**
  1. Copy the APK to `tests/apks/space-corsair.apk` on the `emulator-tests` branch.
  2. Set the matrix tag in `.github/workflows/emulator-test.yml`.
  3. Push.
- **Results:** the `emulator-results` branch (`RUN.txt` contains the commit sha).
- **Test-only switches:** files in `/data/local/tmp`, which never exist on a phone. Examples:
  - `corsair_titans`: the gift unlocks every hull;
  - `corsair_page=<enum>`: jumps to a ship page;
  - `corsair_weapon`, `corsair_capital=<key>`, `corsair_shieldbreak`, `corsair_lang=es`, `corsair_level=N`, `corsair_tree=<key>`, `corsair_fit=fit_<slot>|classic`.

## Release
1. Use `scripts/release.sh vNN <apk> "<notes>"`. It needs a worktree of the `releases` branch; set `RELEASES_WT`.
2. It updates the README table and pushes.
3. The download link is `https://github.com/JosePriet/docker-android/raw/releases/apk/space-corsair-mod-signed-vNN.apk`.

## State at handoff (v29 released)
- **Done:** faction tech tree, fitting screen, reputation, missions, full Spanish, lossless full-res art, lazy textures, remastered original ships, map territories (code-drawn glow; the art in `incoming/` isn't wired yet).
- **Shields:** the bubble is fitted to each hull's extent; the bubble art's ring sits at radius 0.773.
- **Item texts:** the early-init `missingString` bug is fixed (in `ModBoss.text`).

## v30 (in progress)
Code complete and building (`bash build.sh` -> v30). See `CHECKLIST_v30.md` for status and what is left (emulator run, release).
