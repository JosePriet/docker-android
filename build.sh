#!/bin/bash
# Build the signed mod APK (fail fast). Run from the repo root: bash build.sh <version>
set -e -o pipefail
V=${1:-33}   # mod version: bash build.sh 32
mkdir -p out
test -f work/key.p12 || { echo "work/key.p12 missing: copy the signing key here (see HANDOFF.md)"; exit 1; }
rm -rf work/modcls && mkdir work/modcls
javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d work/modcls src/java/fr/testudo/spacecorsair/mod/*.java 2>&1 | grep -v "JAVA_TOOL\|Note:" || true
test -f work/modcls/fr/testudo/spacecorsair/mod/ModTitan.class && test -f work/modcls/fr/testudo/spacecorsair/mod/ModUi.class
n=$(ls work/modcls/fr/testudo/spacecorsair/mod/*.class | wc -l); echo "mod classes: $n"
(cd work/modcls && rm -f ../mod.jar && jar cf ../mod.jar fr)
java -cp tools/d2j/dalvik-dx-9.0.0_r3.jar com.android.dx.command.Main --dex --min-sdk-version=14 --output=work/mod.dex work/mod.jar 2>&1 | grep -v JAVA_TOOL || true
rm -rf work/modsmali && java -cp "$(cat tools/cp.txt)" org.jf.baksmali.Main d work/mod.dex -o work/modsmali 2>&1 | grep -v JAVA_TOOL || true
test -f work/modsmali/fr/testudo/spacecorsair/mod/ModTitan.smali
rm -rf work/smali/fr/testudo/spacecorsair/mod && cp -r work/modsmali/fr/testudo/spacecorsair/mod work/smali/fr/testudo/spacecorsair/
java -cp "$(cat tools/cp.txt)" org.jf.smali.Main a -a 15 work/smali -o work/classes_v${V}.dex 2>&1 | grep -v JAVA_TOOL || true
java -cp "tools/d2j/*" com.googlecode.dex2jar.tools.Dex2jarCmd -f -o work/game_v${V}.jar work/classes_v${V}.dex 2>&1 | tail -1
(cd work/dtest && java -Xverify:all -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V17b 2>&1 | grep -v JAVA_TOOL | grep -v "^ok" ; java -Xverify:all -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V17 2>&1 | grep -c "^ok ")
(cd work/dtest && rm -f V30.class && javac -nowarn -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V30.java 2>&1 | grep -v JAVA_TOOL || true; java -Xverify:all -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V30 2>&1 | grep -v JAVA_TOOL | grep "V30 VERIFY-OK")
# v34: value checks of the v34 rules (prints every FAIL line; must end with V34 VALUES-OK)
(cd work/dtest && rm -f V34.class && javac -nowarn -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V34.java 2>&1 | grep -v JAVA_TOOL || true; java -Xverify:all -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V34 2>&1 | grep -v JAVA_TOOL | grep -v "^ok " ; java -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V34 2>&1 | grep -q "V34 VALUES-OK")
# v35: value checks of the v35 rules (refits, AI score, wreck timers, pursuit, prices, missions); must end with V35 VALUES-OK
(cd work/dtest && rm -f V35.class && javac -nowarn -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V35.java 2>&1 | grep -v JAVA_TOOL || true; java -Xverify:all -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V35 2>&1 | grep -v JAVA_TOOL | grep -v "^ok " ; java -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V35 2>&1 | grep -q "V35 VALUES-OK")
# v37 wrecks: blast push, hit brake and cap, beam line test; must end with V37W VALUES-OK
(cd work/dtest && rm -f V37W.class && javac -nowarn -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V37W.java 2>&1 | grep -v JAVA_TOOL || true; java -Xverify:all -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V37W 2>&1 | grep -v JAVA_TOOL | grep -v "^ok " ; java -cp .:../game_v${V}.jar:../../tools/android-4.1.1.4.jar:../stubcls V37W 2>&1 | grep -q "V37W VALUES-OK")
# v30: modart is lossless WebP (ModArt.open tries <name>.webp, then <name>.png); each name must ship once
shopt -s nullglob
dups=$(for f in work/modart/*.png work/modart/*.webp; do b=$(basename "$f"); echo "${b%.*}"; done | sort | uniq -d)
test -z "$dups" || { echo "modart names present as both .png and .webp: $dups"; exit 1; }
ADDS=$(for f in work/modart/*.png work/modart/*.webp; do echo -n "+assets/modart/$(basename $f)=$f "; done; for f in work/modsfx/*.ogg; do echo -n "+assets/modsfx/$(basename $f)=$f "; done)
# v36: louder copies of the quiet stock music tracks replace res/raw/<name>.ogg (stored entries, same names)
MUSIC=$(for f in work/modmusic/*.ogg; do echo -n "res/raw/$(basename $f)=$f "; done)
shopt -u nullglob
# v30: Spanish resources (es locale in resources.arsc) + mod dictionary
test -f i18n/values-es/strings.xml && test -f i18n/lang/es_full.json
# v30: the phone's app info shows the mod version (versionName = app_version string) and versionCode climbs per release
MODVER=$V
SET_STRINGS="app_version=mod v$MODVER (base 1.5.1)" python3 -I es/add_locale.py base/space-corsair-mod-signed-v12.apk i18n/values-es work/resources_v${V}.arsc es fr
python3 -I src/set_version_code.py base/space-corsair-mod-signed-v12.apk $((1000 + MODVER)) "mod v$MODVER (base 1.5.1)" work/AndroidManifest_v${V}.xml
python3 -I -c "import json,sys; json.load(open(sys.argv[1],encoding='utf-8'))" i18n/lang/es_full.json
python3 -I src/rebuild.py base/space-corsair-mod-signed-v12.apk work/unsigned${V}.apk classes.dex=work/classes_v${V}.dex resources.arsc=work/resources_v${V}.arsc AndroidManifest.xml=work/AndroidManifest_v${V}.xml +assets/lang/es.json=i18n/lang/es_full.json $MUSIC $ADDS | tail -1
unzip -tq work/unsigned${V}.apk
java -cp tools/uber-apk-signer-1.3.0.jar:work Sign work/unsigned${V}.apk out/space-corsair-mod-signed-v${V}.apk work/key.p12 android 2>&1 | grep -v JAVA_TOOL
unzip -p out/space-corsair-mod-signed-v${V}.apk classes.dex | cmp - work/classes_v${V}.dex
unzip -p out/space-corsair-mod-signed-v${V}.apk resources.arsc | cmp - work/resources_v${V}.arsc
cp out/space-corsair-mod-signed-v${V}.apk ./
echo BUILD-OK
