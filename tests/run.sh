#!/bin/bash
# Smoke test for one game: bash tests/run.sh sc|nova
# Captures a live logcat, a screenshot every ~2 s (turned into a video afterwards), UI trees on menus, crash logs.
GAME=$1; OUT=out; mkdir -p $OUT/frames
T0=$(date +%s); log() { echo "[$(( $(date +%s) - T0 ))s] $*" | tee -a $OUT/progress.txt; }
a() { timeout 25 adb "$@"; }
alive() { [ "$(timeout 5 adb get-state 2>/dev/null)" = device ]; }
need() { alive || { log "EMULATOR GONE at step: $1"; finish; exit 0; }; }
n=0
shot() { n=$((n+1)); f=$(printf "%s/%02d_%s.png" $OUT $n "$1"); timeout 15 adb exec-out screencap -p > "$f"; [ -s "$f" ] || rm -f "$f"; log "shot $1 $([ -f "$f" ] && echo ok || echo FAILED)"; }
dump() { rm -f $OUT/last.xml; timeout 12 adb shell uiautomator dump /sdcard/ui.xml >/dev/null 2>&1 && timeout 10 adb pull /sdcard/ui.xml "$OUT/ui_$1.xml" >/dev/null 2>&1 && cp "$OUT/ui_$1.xml" $OUT/last.xml; }
tap_text() { dump "$2"; [ -f $OUT/last.xml ] || { log "no ui tree for $2"; return 1; }; xy=$(python3 tests/tap.py $OUT/last.xml "$1"); if [ -n "$xy" ]; then log "tap '$1' at $xy"; a shell input tap $xy; return 0; fi; log "no match for '$1'"; return 1; }
tap() { log "tap $1 $2"; a shell input tap $1 $2; }
swipe() { a shell input swipe $1 $2 $3 $4 ${5:-1500}; }
frames() { ( i=0; while [ ! -f $OUT/.stop ]; do timeout 10 adb exec-out screencap -p > $OUT/frames/f$(printf %04d $i).png 2>/dev/null || true; i=$((i+1)); sleep 1; done ) & FR=$!; }
finish() {
  touch $OUT/.stop; sleep 2; kill $FR $LC 2>/dev/null
  find $OUT/frames -size 0 -delete
  if alive; then
    a shell dumpsys activity activities | grep -E "mResumedActivity|topResumedActivity" > $OUT/activity.txt
    a logcat -d -b crash > $OUT/crash.txt 2>&1
    a shell dumpsys meminfo $PKG | head -30 > $OUT/meminfo.txt
  fi
  grep -iE "FATAL EXCEPTION|AndroidRuntime|VerifyError|NoSuchMethod|NoSuchField|ClassNotFound|ANR in|SIGSEGV|Fatal signal|tombstone" $OUT/logcat_live.txt > $OUT/errors.txt
  grep -iE "chromium|console|webview" $OUT/logcat_live.txt | tail -300 > $OUT/console.txt
  log "done; errors: $(wc -l < $OUT/errors.txt) lines"
}

case $GAME in
  sc) PKG=fr.testudo.spacecorsair; APK=tests/apks/space-corsair.apk ;;
  nova) PKG=com.corsairnova.game; APK=tests/apks/corsair-nova.apk ;;
esac
{ a shell getprop ro.build.version.release; a shell wm size; a shell getprop ro.hardware.egl; a shell getprop ro.opengles.version; } > $OUT/device.txt 2>&1
log install; timeout 240 adb install -r -g $APK > $OUT/install.txt 2>&1; cat $OUT/install.txt
a logcat -c; adb logcat -v time > $OUT/logcat_live.txt 2>&1 & LC=$!
frames
log "launch $PKG"; a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null

if [ $GAME = sc ]; then
  sleep 15; need launch; shot launch
  # tutorial dialogs advance on tap
  for i in 1 2 3 4 5 6 7 8; do tap 1140 540; sleep 3; need "tutorial tap $i"; done
  shot after_tutorial_taps
  # fixed joystick bottom-left, fire on the right
  for i in 1 2 3 4; do swipe 330 800 420 700 2000; sleep 1; done; need steering; shot steering
  for i in 1 2 3; do tap 1950 850; sleep 1; tap 2080 650; sleep 1; done; need fire; shot fire
  a shell input keyevent KEYCODE_BACK; sleep 4; need back; shot back
  dump menu; shot menu
  a shell input keyevent KEYCODE_BACK; sleep 4; need back2; shot back2
else
  sleep 30; need launch; shot title
  tap_text "^start$|new game|^continue$|^play$" start || tap 1140 700; sleep 4; need start; shot after_start
  tap_text "launch|undock|depart" launch || tap 1140 900; sleep 20; need launch2; shot space1
  for i in 1 2; do tap_text "next|accept|ok|yes" dlg$i && sleep 2; done
  for i in 1 2 3 4 5 6; do swipe 330 800 420 700 1500; sleep 1; done; need steering; shot steering
  for i in 1 2 3; do tap 2000 850; sleep 1; done; shot fire
  sleep 10; need idle; shot later
fi
finish
exit 0
