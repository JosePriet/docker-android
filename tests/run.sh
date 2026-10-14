#!/bin/bash
# Smoke test for one game: bash tests/run.sh sc|nova
# Captures a live logcat, a screenshot every ~2 s (turned into a video afterwards), UI trees on menus, crash logs.
GAME=$1; OUT=out; mkdir -p $OUT/frames
T0=$(date +%s); log() { echo "[$(( $(date +%s) - T0 ))s] $*" | tee -a $OUT/progress.txt; }
a() { timeout 25 adb "$@"; }
alive() { [ "$(timeout 5 adb get-state 2>/dev/null)" = device ]; }
need() { alive || { log "EMULATOR GONE at step: $1"; finish; exit 0; }; }
n=0
shot() { n=$((n+1)); f=$(printf "%s/%02d_%s.png" $OUT $n "$1"); timeout 30 adb exec-out screencap -p > "$f"; [ -s "$f" ] || rm -f "$f"; log "shot $1 $([ -f "$f" ] && echo ok || echo FAILED)"; }
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
{ a shell dumpsys package com.android.webview | grep -m1 versionName; a shell dumpsys package com.google.android.webview | grep -m1 versionName; a shell getprop ro.build.version.release; a shell wm size; a shell getprop ro.hardware.egl; a shell getprop ro.opengles.version; } > $OUT/device.txt 2>&1
timeout 20 adb root >/dev/null 2>&1; sleep 3; timeout 30 adb wait-for-device
log install; timeout 240 adb install -r -g $APK > $OUT/install.txt 2>&1; cat $OUT/install.txt
a logcat -c; adb logcat -v time > $OUT/logcat_live.txt 2>&1 & LC=$!
frames
log "launch $PKG"; a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null

if [ $GAME = sc ]; then
  sleep 15; need launch; shot launch
  a shell input keyevent KEYCODE_BACK; sleep 3; need tutorial; shot exit_prompt
  tap 1056 620; sleep 3; shot tutorial_closed
  for i in 1 2 3 4; do swipe 223 850 330 740 2500; done; need steering; shot steering
  for i in 1 2 3 4 5 6; do tap 1961 935; sleep 0.3; done; need fire; shot fire
  for i in 1 2 3; do swipe 223 850 120 950 2500; done; shot steering2
  tap 60 57; sleep 5; need menu; dump menu; shot menu
  if tap_text "^ships?$" ships; then sleep 5; need ships; shot ships
    tap_text "ship tree" tree && { sleep 4; shot tree; dump tree_open; a shell input keyevent KEYCODE_BACK; sleep 2; }
    tap_text "inbox" inbox && { sleep 3; shot inbox; dump inbox_open; a shell input keyevent KEYCODE_BACK; sleep 2; }
    tap_text "rarity|sort" rarity && { sleep 3; shot rarity; }
    a shell input keyevent KEYCODE_BACK; sleep 3; need back_ships
  fi
  tap_text "setting" settings && { sleep 4; shot settings; dump settings_open; a shell input keyevent KEYCODE_BACK; sleep 3; }
  a shell input keyevent KEYCODE_BACK; sleep 4; need back; shot back
  # open the v16 screens directly (root shell on the AOSP image)
  log "direct: ShipsActivity"; a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 6; need ships_direct; shot ships_direct; dump ships_direct
  tap_text "ship tree" tree2 && { sleep 4; need tree2; shot tree_direct; dump tree_direct; a shell input keyevent KEYCODE_BACK; sleep 2; }
  tap_text "inbox" inbox2 && { sleep 3; shot inbox_direct; a shell input keyevent KEYCODE_BACK; sleep 2; }
  a shell input keyevent KEYCODE_BACK; sleep 3
  log "direct: SettingsActivity"; a shell am start -n $PKG/.activity.SettingsActivity_ >/dev/null; sleep 5; need settings_direct; shot settings_direct; dump settings_direct
  a shell input swipe 1074 900 1074 200 600; sleep 2; shot settings_scrolled; dump settings_scrolled
  a shell input keyevent KEYCODE_BACK; sleep 3; need final; shot final
else
  sleep 30; need launch; shot title
  tap 1140 643; sleep 4; need start; shot new_pilot
  tap 1258 661; sleep 20; need launch2; shot space_tutorial
  for i in 1 2 3 4 5 6 7 8; do tap 2029 691; sleep 2; done; need tutorial; shot after_tutorial
  for i in 1 2 3 4; do swipe 524 692 640 580 2500; done; need steering; shot steering
  for i in 1 2 3 4 5 6; do tap 2128 929; sleep 0.3; done; shot fire
  for i in 1 2 3; do swipe 524 692 420 800 2500; done; need steering2; shot steering2
  sleep 6; need idle; shot later
fi
finish
exit 0
