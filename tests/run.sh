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
# BACK that never leaves the game at the exit prompt: cancels "exit the game ?" if it appeared
noexit() { dump noexit; if grep -q "exit the game" $OUT/last.xml 2>/dev/null; then xy=$(python3 tests/tap.py $OUT/last.xml "^Cancel"); [ -n "$xy" ] && { log "cancel exit prompt"; a shell input tap $xy; sleep 2; }; fi; }
back() { a shell input keyevent KEYCODE_BACK; sleep ${1:-2}; noexit; }
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
    # test switch freezes the beam half-way through its fire phase so the slow screencap catches it
    a shell "touch /data/local/tmp/corsair_doomhold && chmod 644 /data/local/tmp/corsair_doomhold"; sleep 1.2
    tap_text "DOOMSDAY LANCE|FURNACE NOVA" doombtn_$t
    sleep 4; shot doom1_$t; shot doom2_$t; dump doomfire_$t
    a shell "rm -f /data/local/tmp/corsair_doomhold"; sleep 4; shot doom_after_$t
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
a shell dumpsys package $PKG | grep -E "versionName|versionCode" >> $OUT/install.txt; cat $OUT/install.txt
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
  back 3
  # the game's own gift box (BuyInapp) accepts the DEV code too
  log "direct: BuyInapp gift"; a shell am start -n $PKG/.activity.BuyInapp_ >/dev/null; sleep 5; need buyinapp; shot buyinapp
  for i in 1 2 3 4 5; do a shell input swipe 1000 900 1000 200 300; sleep 1; done; shot buyinapp_bottom
  tap_text "id/txtGift" giftbox && { sleep 2; a shell input text CORSAIRDEV; sleep 1; a shell input keyevent KEYCODE_BACK; sleep 1; tap_text "id/btnGift" giftbtn; sleep 3; shot gift_box_redeemed; }
  back 3
  # v24 faction ship tree: opens on the current ship's faction; then each faction via the test switch
  a shell "echo spartan:85 > /data/local/tmp/corsair_rep; chmod 644 /data/local/tmp/corsair_*"
  log "direct: ShipsActivity tree"; a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7; need tree; shot tree_default; dump tree_default
  for F in spartan reaver warden ironclad helion varn kretari independent; do
    a shell "echo $F > /data/local/tmp/corsair_tree && chmod 644 /data/local/tmp/corsair_tree"
    back 2
    a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 6; need tree_$F; shot tree_$F
    if [ $F = varn ]; then
      dump tree_varn
      tap_text "^Sovereign " card_sov && { sleep 2; shot infocard_sovereign; dump infocard
        tap_text "^OPEN " open_sov && { sleep 3; shot page_from_tree; dump page_from_tree
          a shell input keyevent KEYCODE_BACK; sleep 3; shot back_to_tree; dump back_to_tree; noexit; }; }
    fi
    if [ $F = spartan ]; then tap_text "^Standings " standings && { sleep 2; shot standings; a shell input keyevent KEYCODE_BACK; sleep 2; noexit; }; fi
  done
  a shell "rm -f /data/local/tmp/corsair_tree"
  back 2
  # v24 fitting screen
  log "direct: MyShipActivity"; a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6; need fitting; shot fitting; dump fitting
  a shell "echo fit_weapon > /data/local/tmp/corsair_fit && chmod 644 /data/local/tmp/corsair_fit"
  back 3; a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6; shot fit_picker; dump fit_picker
  tap_text "^CLOSE " fit_close; sleep 2
  a shell "echo classic > /data/local/tmp/corsair_fit"; back 3
  a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6; shot fit_classic
  a shell "rm -f /data/local/tmp/corsair_fit"; back 3
  # X-0 via the pager test switch (tree hidden by the switch)
  a shell "echo hullDev > /data/local/tmp/corsair_page && chmod 644 /data/local/tmp/corsair_page"
  a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7
  dump fp; f2=0; grep -q "text=\"DEV Prototype X-0\" resource-id=\"$PKG:id/shipName\"" $OUT/last.xml && f2=1; log "X-0 page found=$f2"; shot x0_page
  noexit; tap_text "^(Use|USE)" use_x0; sleep 8; need fly_x0; shot fly_x0
  a shell "echo NONE > /data/local/tmp/corsair_mission; chmod 644 /data/local/tmp/corsair_*"; sleep 2
  # full-resolution flagship art
  for C in spartan reaver kretari varn ironclad helion warden; do
    a shell "echo $C > /data/local/tmp/corsair_capital && chmod 644 /data/local/tmp/corsair_capital"; sleep 4.5; shot cap_$C
  done
  a shell "rm -f /data/local/tmp/corsair_capital"
  # hulls (full-res art) + v24 shields: hull sheen, smaller bubble, collapse -> 1.3 s reboot (x2 below 50% hull) -> offline
  for E in "hullSovereign:Sovereign:modArtilleryL15" "hullMantis:Mantis:modRailgunL15" "hullMoth:Nebula Moth:modBlasterL15"; do
    ID=${E%%:*}; R=${E#*:}; T=${R%%:*}; W=${R#*:}; tag=$(echo "$T" | tr 'A-Z ' 'a-z_')
    a shell "echo $ID > /data/local/tmp/corsair_page; echo $W > /data/local/tmp/corsair_weapon; chmod 644 /data/local/tmp/corsair_*"
    a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7
    dump fp; f2=0; grep -q "text=\"$T\" resource-id=\"$PKG:id/shipName\"" $OUT/last.xml && f2=1; log "$T page found=$f2"; shot page_$tag
    if [ $f2 = 1 ]; then
      noexit; tap_text "^(Use|USE)" use_$tag; sleep 8; noexit; need fly_$tag; shot fly_$tag
      a shell input motionevent DOWN 1930 860; sleep 0.2; a shell input motionevent MOVE 1932 680; sleep 1.5; shot guns_$tag
      a shell input motionevent UP 1932 680
      if [ $tag = sovereign ]; then
        for k in 1 2 3; do
          a shell "touch /data/local/tmp/corsair_shieldbreak && chmod 644 /data/local/tmp/corsair_shieldbreak"; sleep 0.8; shot shield_break${k}_a
          a shell "rm -f /data/local/tmp/corsair_shieldbreak"; sleep 2.2; shot shield_break${k}_b
        done
      fi
      sleep 9
    else
      back 3
    fi
  done
  # v25 Spanish: restart the game with the language forced to Spanish
  a shell "rm -f /data/local/tmp/corsair_page /data/local/tmp/corsair_weapon; echo es > /data/local/tmp/corsair_lang && chmod 644 /data/local/tmp/corsair_lang"
  a shell am force-stop $PKG; sleep 2; a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null; sleep 16; need es_launch; shot es_launch; dump es_launch
  a shell input keyevent KEYCODE_BACK; sleep 3; shot es_exit_prompt; noexit
  a shell "touch /data/local/tmp/corsair_shieldbreak && chmod 644 /data/local/tmp/corsair_shieldbreak"; sleep 0.8; shot es_float; a shell "rm -f /data/local/tmp/corsair_shieldbreak"
  a shell am start -n $PKG/.activity.SettingsActivity_ >/dev/null; sleep 5; shot es_settings; dump es_settings
  for i in 1 2 3; do a shell input swipe 1000 900 1000 250 400; sleep 1; done; shot es_settings_mod; back 2
  a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 6; shot es_tree; dump es_tree
  tap_text "^Reputaci" es_rep && { sleep 2; shot es_standings; a shell input keyevent KEYCODE_BACK; sleep 2; }
  back 2
  a shell "echo hullSovereign > /data/local/tmp/corsair_page && chmod 644 /data/local/tmp/corsair_page"
  a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7; shot es_page; for i in 1 2; do a shell input swipe 1400 900 1400 500 400; sleep 1; done; shot es_page_lore; back 2
  a shell "rm -f /data/local/tmp/corsair_page"
  a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6; shot es_fitting; dump es_fitting; back 2
  a shell am start -n $PKG/.activity.MissionActivity_ >/dev/null; sleep 5; shot es_missions; back 2
  sleep 3; shot es_flight
  a shell "rm -f /data/local/tmp/corsair_lang"
  a shell "rm -f /data/local/tmp/corsair_page /data/local/tmp/corsair_rep /data/local/tmp/corsair_mission /data/local/tmp/corsair_weapon /data/local/tmp/corsair_shieldbreak"
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
