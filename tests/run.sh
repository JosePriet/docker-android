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
# walk the ships pager forward (one page per swipe) until the dump shows $1
find_page() {
  dump fp; if grep -q "$1" $OUT/last.xml 2>/dev/null; then return 0; fi
  # the pager opens on the current ship: look a few pages back first
  prv=$(python3 tests/tap.py $OUT/last.xml "id/imgPrevious")
  if [ -n "$prv" ]; then for i in 1 2 3; do a shell input tap $prv; sleep 1; dump fp; if grep -q "$1" $OUT/last.xml; then return 0; fi; done; fi
  nxt=$(python3 tests/tap.py $OUT/last.xml "id/imgNext"); [ -n "$nxt" ] || nxt="2064 194"
  for i in $(seq 1 ${2:-0}); do a shell input tap $nxt; sleep 0.5; done
  for i in $(seq 1 20); do
    dump fp; if grep -q "$1" $OUT/last.xml 2>/dev/null; then return 0; fi
    a shell input tap $nxt; sleep 1
  done
  return 1
}
# equip the titan on the open ships page, then: thrust, guns, doomsday (button waits out the cooldown)
fly_titan() {
  t=$1
  tap_text "^(Use|USE)" use_$t || return
  sleep 6; need fly_$t; shot fly_$t
  # hold the left stick forward (thrust), screenshot while held
  a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE 220 760; sleep 0.2; a shell input motionevent MOVE 222 650
  sleep 2.5; shot thrust_$t; sleep 1.5; shot thrust2_$t
  a shell input motionevent UP 222 650; sleep 0.5
  # hold the right stick (turret aim + fire)
  a shell input motionevent DOWN 1930 860; sleep 0.2; a shell input motionevent MOVE 1930 760; sleep 0.2; a shell input motionevent MOVE 1932 680
  sleep 1.5; shot guns_${t}_1; sleep 1.5; shot guns_${t}_2
  a shell input motionevent UP 1932 680; sleep 0.5
  ok=0
  for w in $(seq 1 14); do dump doom_$t; if grep -q 'text="DOOMSDAY LANCE"\|text="FURNACE NOVA"' $OUT/last.xml; then ok=1; break; fi; grep -q 'DOOMSDAY\|FURNACE\|CHARGING' $OUT/last.xml || break; sleep 2; done
  log "doomsday ready=$ok for $t"
  if [ $ok = 1 ]; then
    tap_text "DOOMSDAY LANCE|FURNACE NOVA" doombtn_$t
    shot charge_$t; shot doom1_$t; shot doom2_$t; shot doom3_$t; shot doom4_$t
  fi
}
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
  ga) PKG=com.kongregate.mobile.globalassault.google; APK=tests/apks/global-assault.apk ;;
  gaarm) PKG=com.kongregate.mobile.globalassault.google; APK=tests/apks/global-assault-arm.apk ;;
  gaorig) PKG=com.kongregate.mobile.globalassault.google; APK=tests/apks/global-assault-orig.apk ;;
esac
{ a shell dumpsys package com.android.webview | grep -m1 versionName; a shell dumpsys package com.google.android.webview | grep -m1 versionName; a shell getprop ro.build.version.release; a shell wm size; a shell getprop ro.hardware.egl; a shell getprop ro.opengles.version; } > $OUT/device.txt 2>&1
timeout 20 adb root >/dev/null 2>&1; sleep 3; timeout 30 adb wait-for-device
log install; timeout 240 adb install -r $APK > $OUT/install.txt 2>&1; cat $OUT/install.txt
if [ "$GAME" = sc ]; then
  # emulator-only switches read by the mod: gift code also unlocks both titans; big hulls start at 20% hull
  a shell "touch /data/local/tmp/corsair_titans /data/local/tmp/corsair_lowhull && chmod 644 /data/local/tmp/corsair_* && ls -l /data/local/tmp/" | tee $OUT/flags.txt
fi
a logcat -c; adb logcat -v time > $OUT/logcat_live.txt 2>&1 & LC=$!
frames
log "launch $PKG"; a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null

if [ $GAME = ga ] || [ $GAME = gaorig ] || [ $GAME = gaarm ]; then
  sleep 10; shot ga_warn
  tap_text "^(Continue|OK|Allow|ALLOW)$" warn1 || tap 1607 695; sleep 3
  for i in 1 2 3 4 5 6; do sleep 15; need "ga wait $i"; shot ga_$i; done
  tap_text "^GOT IT$" gotit || tap 1430 550; sleep 3; shot base_clean
  tap 1293 903; sleep 6; shot squadbay; a shell input keyevent KEYCODE_BACK; sleep 4; shot after_back1
  tap 2177 969; sleep 6; shot store; a shell input keyevent KEYCODE_BACK; sleep 4; shot after_back2
  tap 120 980; sleep 6; shot probe_bl
  tap 1140 980; sleep 6; shot probe_bc
  P=$(timeout 5 adb shell pidof $PKG); log "pid $P"
  grep -E "GALocal|Exception|Unity  " $OUT/logcat_live.txt | head -3000 > $OUT/trace.txt
elif [ $GAME = sc ]; then
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
  a shell input keyevent KEYCODE_BACK; sleep 4; need back; shot back
  # open the v16 screens directly (root shell on the AOSP image)
  log "direct: ShipsActivity"; a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 6; need ships_direct; shot ships_direct; dump ships_direct
  tap_text "ship tree" tree2 && { sleep 4; need tree2; shot tree_direct; dump tree_direct; a shell input keyevent KEYCODE_BACK; sleep 2; }
  tap_text "inbox" inbox2 && { sleep 3; shot inbox_direct; a shell input keyevent KEYCODE_BACK; sleep 2; }
  a shell input keyevent KEYCODE_BACK; sleep 3
  # the game's own gift box (BuyInapp) accepts the DEV code too
  log "direct: BuyInapp gift"; a shell am start -n $PKG/.activity.BuyInapp_ >/dev/null; sleep 5; need buyinapp; shot buyinapp
  for i in 1 2 3 4 5; do a shell input swipe 1000 900 1000 200 300; sleep 1; done; shot buyinapp_bottom
  tap_text "id/txtGift" giftbox && { sleep 2; a shell input text CORSAIRDEV; sleep 1; a shell input keyevent KEYCODE_BACK; sleep 1; tap_text "id/btnGift" giftbtn; sleep 3; shot gift_box_redeemed; }
  a shell input keyevent KEYCODE_BACK; sleep 3
  log "direct: ShipsActivity again"; a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 6; need ships_after_gift; shot ships_after_gift
  # walk the pager to the X-0 page (titans are at the end)
  found=0; find_page "DEV Prototype" 40 && found=1
  log "X-0 page found=$found"; need x0_page; shot x0_page; cp $OUT/last.xml $OUT/ui_x0_page.xml 2>/dev/null
  if [ $found = 1 ]; then
    xy=$(python3 tests/tap.py $OUT/last.xml "id/textShipDesc")
    [ -n "$xy" ] && { set -- $xy; a shell input swipe $1 $(($2+120)) $1 $(($2-200)) 800; sleep 2; shot x0_desc_scrolled; }
    fly_titan x0
    # v18 weapon families on the X-0's six turrets: equip each through the test switch, hold fire, screenshot
    for W in modRailgunL15 modAutocannonL15 modArtilleryL15 modBlasterL15 modDisintegratorL15 modArcProjectorL15; do
      a shell "echo $W > /data/local/tmp/corsair_weapon && chmod 644 /data/local/tmp/corsair_weapon"; sleep 2.5
      a shell input motionevent DOWN 1930 860; sleep 0.2; a shell input motionevent MOVE 1930 700
      sleep 1.6; shot wpn_$W; sleep 1.2; shot wpn2_$W
      a shell input motionevent UP 1930 700; sleep 0.4
    done
    a shell "rm -f /data/local/tmp/corsair_weapon"
    # v19 faction flagships: spawn two next to the player (test switch), look, then provoke one with sustained fire
    for C in spartan reaver; do
      a shell "echo $C > /data/local/tmp/corsair_capital && chmod 644 /data/local/tmp/corsair_capital"; sleep 4; shot cap_$C
    done
    a shell input motionevent DOWN 1930 860; sleep 0.2; a shell input motionevent MOVE 1930 700
    sleep 6; shot cap_fight1; sleep 6; shot cap_fight2
    a shell input motionevent UP 1930 700
    a shell "rm -f /data/local/tmp/corsair_capital"
    # minimize and come back: the DOOMSDAY button must stay hidden during the loading splash
    a shell input keyevent KEYCODE_HOME; sleep 4
    a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1; sleep 1.2; shot resume_splash_1; sleep 2; shot resume_splash_2; dump resume; sleep 6; shot resume_after
    for T in "Crimson Throne" "Leviathan" "Regent" "Imperator"; do
      tag=$(echo "$T" | tr 'A-Z ' 'a-z_')
      log "titan $T"; a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 6; need ships_$tag
      f2=0; find_page "$T" 40 && f2=1
      log "$T page found=$f2"; shot page_$tag
      [ $f2 = 1 ] && fly_titan $tag
    done
  fi
  log "direct: SettingsActivity"; a shell am start -n $PKG/.activity.SettingsActivity_ >/dev/null; sleep 5; need settings_direct; shot settings_direct; dump settings_direct
  a shell input swipe 1074 900 1074 200 600; sleep 2; shot settings_scrolled; dump settings_scrolled
  a shell input keyevent KEYCODE_BACK; sleep 3; need final; shot final
  log "direct: StationActivity"; a shell am start -n $PKG/.activity.StationActivity_ >/dev/null; sleep 6; need station_direct; shot station_direct; dump station_direct
  tap_text "^Gift code$" gift && { sleep 2; a shell input text CORSAIRDEV; sleep 1; tap_text "^(Redeem|REDEEM)$" redeem; sleep 3; shot gift_redeemed; }
  a shell input keyevent KEYCODE_BACK; sleep 3
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
