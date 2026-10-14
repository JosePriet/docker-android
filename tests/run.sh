#!/bin/bash
# Smoke test: install both games, launch them, try to reach gameplay, capture screenshots, UI dumps, recordings and logs.
OUT=out; mkdir -p $OUT
SC=fr.testudo.spacecorsair
NOVA=com.corsairnova.game
n=0
shot() { n=$((n+1)); f=$(printf "%s/%02d_%s" $OUT $n "$1"); adb exec-out screencap -p > "$f.png"; adb shell uiautomator dump /sdcard/ui.xml >/dev/null 2>&1 && adb pull /sdcard/ui.xml "$f.xml" >/dev/null 2>&1; cp "$f.xml" $OUT/last.xml 2>/dev/null; echo "shot $f"; }
tap_text() { shot "before_$2"; xy=$(python3 tests/tap.py $OUT/last.xml "$1"); if [ -n "$xy" ]; then echo "tap '$1' at $xy"; adb shell input tap $xy; return 0; fi; echo "no match for '$1'"; return 1; }
crash_check() { adb logcat -d -b crash > $OUT/crash_$1.txt 2>&1; adb logcat -d | grep -iE "FATAL EXCEPTION|AndroidRuntime|VerifyError|NoSuchMethod|NoSuchField|ClassNotFound|ANR in" > $OUT/errors_$1.txt; wc -l $OUT/errors_$1.txt; }
adb shell getprop ro.build.version.release > $OUT/android_version.txt
adb shell wm size >> $OUT/android_version.txt
adb install -r -g tests/apks/space-corsair.apk > $OUT/install_sc.txt 2>&1; cat $OUT/install_sc.txt
adb install -r -g tests/apks/corsair-nova.apk > $OUT/install_nova.txt 2>&1; cat $OUT/install_nova.txt
adb logcat -c

# ---------------- Space Corsair v16
adb shell screenrecord --bit-rate 2000000 --time-limit 170 /sdcard/sc.mp4 &
REC=$!
adb shell monkey -p $SC -c android.intent.category.LAUNCHER 1
sleep 20; shot sc_launch
for i in 1 2 3; do tap_text "^(ok|got it|continue|close|cancel)\b|later|no thanks" dialog$i && sleep 4; done
shot sc_menu
for label in "play|jouer|start|new game|continue|launch" ; do tap_text "$label" play && sleep 15; done
shot sc_game1
for i in 1 2 3 4 5 6; do adb shell input swipe 250 900 330 820 1500; sleep 2; done
shot sc_game2
adb shell input keyevent KEYCODE_BACK; sleep 5; shot sc_back
crash_check sc
wait $REC; adb pull /sdcard/sc.mp4 $OUT/sc.mp4 >/dev/null 2>&1
adb shell dumpsys activity activities | grep -E "mResumedActivity|topResumedActivity" > $OUT/sc_activity.txt
adb shell am force-stop $SC
adb logcat -d > $OUT/logcat_sc.txt
adb logcat -c

# ---------------- Corsair Nova v0.6
adb shell screenrecord --bit-rate 2000000 --time-limit 170 /sdcard/nova.mp4 &
REC=$!
adb shell monkey -p $NOVA -c android.intent.category.LAUNCHER 1
sleep 35; shot nova_title
tap_text "^start$|new game|^continue$" start && sleep 3
tap_text "launch" launch && sleep 25
shot nova_space1
for i in 1 2 3 4; do tap_text "next|accept|yes" dlg$i && sleep 2; done
for i in 1 2 3 4 5 6; do adb shell input swipe 300 1800 400 1700 1500; sleep 2; done
shot nova_space2
crash_check nova
wait $REC; adb pull /sdcard/nova.mp4 $OUT/nova.mp4 >/dev/null 2>&1
adb logcat -d > $OUT/logcat_nova.txt
grep -iE "chromium|console" $OUT/logcat_nova.txt | tail -200 > $OUT/nova_console.txt
ls -la $OUT
exit 0
