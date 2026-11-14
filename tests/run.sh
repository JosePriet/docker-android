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
use_ready() { for w in $(seq 1 14); do dump use_$1; grep -q 'text="USE THIS SHIP"\|text="Use this ship"' $OUT/last.xml && break; sleep 3; done; tap_text "^(Use|USE)" use_$1; }
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
  a shell "touch /data/local/tmp/corsair_titans /data/local/tmp/corsair_nodialog && echo $(case "$STAGE" in A|A2) echo 10;; V46) echo 0;; *) echo 34;; esac) > /data/local/tmp/corsair_level && chmod 644 /data/local/tmp/corsair_* && ls -l /data/local/tmp/" | tee $OUT/flags.txt
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
  # v46 playable prologue: a fresh install drops into the player bay (L25 Corvette vs the L40 Bloodforge) for 120 s,
  # then restarts into the tutorial. Evidence: logcat "ModTest prologue ...", the pilot state after the restart
  # (must be the untouched fresh save), shots along the fight and the end beat.
  if [ "$STAGE" = V46 ]; then
    LG=$OUT/logcat_live.txt; T=/data/local/tmp
    a shell "rm -f $T/corsair_level"   # the pilot level after the prologue is the assertion: no debug level flag
    pid() { timeout 5 adb shell pidof $PKG; }
    pro() { grep "ModTest prologue" $LG | sed 's/.*ModTest //' | tr '\n' ';'; }
    P0=$(pid); log "first pid $P0"
    sleep 12; need enter; shot prologue_entry
    log "entry: $(pro)"
    # the fight: shots across the two minutes, the clock and the boss plate are top of screen
    for i in 1 2 3 4 5 6 7 8; do
      a shell input tap 1700 700; sleep 1; a shell input tap 1700 700   # fire at whatever is ahead
      sleep 13; shot fight_$i
    done
    log "mid fight: $(pro)"
    # end beat + the restart into the tutorial (new pid, then the tutorial sector)
    for w in $(seq 1 40); do grep -q "prologue end played" $LG && break; sleep 3; done
    shot end_beat
    for w in $(seq 1 40); do P1=$(pid); [ -n "$P1" ] && [ "$P1" != "$P0" ] && break; sleep 3; done
    log "pid after prologue: $P1 (was $P0)"
    [ -z "$P1" ] && { log "no auto restart: launching by hand"; a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null; sleep 6; P1=$(pid); }
    sleep 18; need tutorial; shot tutorial_1
    a shell input keyevent KEYCODE_BACK; sleep 3; noexit; sleep 8; shot tutorial_flight
    # the save must be untouched: ModTestMode.logState prints the loaded profile's level / ships / credits
    log "SAVE AFTER PROLOGUE: $(grep "v40test loaded" $LG | tail -1 | sed 's/^.*): //')"
    log "prologue lines: $(pro)"
    # replay from the hidden test screen (the flag lets it run again on a save that already played it)
    a shell "touch $T/corsair_prologue; chmod 644 $T/corsair_*"
    a shell am start -n $PKG/.activity.AchievementActivity_ >/dev/null; sleep 5; need ach
    for i in $(seq 1 30); do dump ach; XY=$(python3 tests/tap.py $OUT/last.xml "Killed by the dev"); [ -n "$XY" ] && break; a shell input swipe 1000 900 1000 300 400; sleep 1; done
    log "dev achievement at '$XY'"
    for i in $(seq 1 10); do a shell input tap $XY; sleep 0.3; done
    sleep 1.5; shot replay_button; dump replay; log "REPLAY PROLOGUE shown: $(grep -c 'text="REPLAY PROLOGUE"' $OUT/last.xml)"
    tap_text "^REPLAY PROLOGUE" replaybtn; sleep 10; shot replay_1; sleep 10; shot replay_2
    log "after replay: $(pro)"
    grep -E "ModTest prologue|ModTest v40test loaded|FATAL|AndroidRuntime" $LG > $OUT/v46_events.txt
    a shell "rm -f $T/corsair_prologue"
    finish; exit 0
  fi
  # v45 intro cinematic: plays on the first start (fresh install). Evidence: logcat "ModTest intro ..."; shots along the timeline.
  if [ "$STAGE" = V45 ]; then
    LG=$OUT/logcat_live.txt; T=/data/local/tmp
    ev() { grep -c "ModTest intro" $LG; }
    for s in 3 5 5 5 6 6 5 4 5; do sleep $s; need intro; shot intro_$s; done
    for w in $(seq 1 30); do grep -q "ModTest intro end" $LG && break; sleep 2; done
    log "intro lines: $(grep "ModTest intro" $LG | sed 's/.*ModTest //' | tr '\n' ';')"
    sleep 3; shot after_intro
    # replay from the hidden test screen, then skip with two taps
    a shell am start -n $PKG/.activity.AchievementActivity_ >/dev/null; sleep 5; need ach
    for i in $(seq 1 30); do dump ach; XY=$(python3 tests/tap.py $OUT/last.xml "Killed by the dev"); [ -n "$XY" ] && break; a shell input swipe 1000 900 1000 300 400; sleep 1; done
    log "dev achievement at '$XY'"
    for i in $(seq 1 10); do a shell input tap $XY; sleep 0.3; done
    sleep 1.5; shot replay_button; dump replay; log "REPLAY INTRO shown: $(grep -c 'text="REPLAY INTRO"' $OUT/last.xml)"
    tap_text "^REPLAY INTRO" replaybtn; sleep 6; need replay; shot replay_1; sleep 6; shot replay_2
    tap 1170 540; sleep 1; shot skip_hint; tap 1170 540; sleep 2; shot skipped
    log "intro lines after replay: $(grep "ModTest intro" $LG | sed 's/.*ModTest //' | tr '\n' ';')"
    sleep 20; shot after_skip; a shell input keyevent KEYCODE_BACK; sleep 3; noexit; shot flight
    grep -E "ModTest intro|FATAL|AndroidRuntime" $LG > $OUT/v45_events.txt
    finish; exit 0
  fi
  # v30 run: character dialogs off (corsair_nodialog), pilot level 20, gift unlocks every hull
  sleep 15; need launch; shot launch
  a shell input keyevent KEYCODE_BACK; sleep 3; noexit; shot after_back
  for i in 1 2 3; do swipe 223 850 330 740 2000; done; need steering; shot steering
  log "direct: BuyInapp gift"; a shell am start -n $PKG/.activity.BuyInapp_ >/dev/null; sleep 5; need buyinapp
  for i in 1 2 3 4 5; do a shell input swipe 1000 900 1000 200 300; sleep 1; done
  tap_text "id/txtGift" giftbox && { sleep 2; a shell input text CORSAIRDEV; sleep 1; a shell input keyevent KEYCODE_BACK; sleep 1; tap_text "id/btnGift" giftbtn; sleep 3; shot gift_box_redeemed; }
  back 3
  # v36: settings screen with the new sound-effects bar (shown under "Enable sound effects")
  log "direct: Settings"; a shell am start -n $PKG/.activity.SettingsActivity_ >/dev/null; sleep 4; need settings; shot settings_v36; dump settings_v36
  log "seekbars on settings: $(grep -o 'class="android.widget.SeekBar"' $OUT/last.xml | wc -l)"
  back 3
  # ---- v43a-5 (owner 2026-11-12): inbox notices pop up as the stock character dialog (astrodroid / faction commander)
  if [ "$STAGE" = V47N ]; then
    T=/data/local/tmp; LG=$OUT/logcat_live.txt
    sleep 4; shot flight_before
    a shell "rm -f $T/corsair_nodialog"; sleep 1
    a shell "touch $T/corsair_notify; chmod 644 $T/corsair_*"
    for i in 1 2 3 4 5; do
      got=0; for w in $(seq 1 10); do sleep 2; dump dlg_$i; grep -q 'id/btnCancel' $OUT/last.xml && { got=1; break; }; done
      [ $got = 1 ] || { log "no dialog $i"; break; }
      shot dialog_$i; log "dialog $i: $(grep -o 'text="[^"]*"' $OUT/last.xml | grep -v 'text=""' | head -4 | tr '\n' ' ')"
      tap_text "id/btnCancel" ok_$i || break
      sleep 2; shot after_$i
    done
    sleep 3; noexit; shot flight_after
    log "EVIDENCE v47n: $(grep 'ModTest notify' $LG | sed 's/^.*): //' | tr '\n' ' ')"
    grep -E "ModTest notify|FATAL|AndroidRuntime" $LG > $OUT/v47n_events.txt
    a shell "rm -f $T/corsair_notify"
    finish; exit 0
  fi
  # ---- v41 (owner 2026-11-03): Refit button on the docked station screen (My Ship cannot open while docked)
  if [ "$STAGE" = V41 ]; then
    T=/data/local/tmp; LG=$OUT/logcat_live.txt
    flag() { a shell "touch $T/$1; chmod 644 $T/corsair_*"; }
    sleep 6; flag corsair_rich; sleep 3
    flag corsair_dock; for w in $(seq 1 20); do sleep 2; dump dockwait; grep -q 'text="Refit"' $OUT/last.xml && break; done
    shot station_toolbar; log "Refit on station screen: $(grep -c 'text="Refit"' $OUT/last.xml)"
    tap_text "^Refit\s*$" refitbtn; sleep 2; shot refit_panel_0
    for i in 1 2 3; do tap_text "android:id/button1" refitbuy_$i; sleep 2; shot refit_panel_$i; done
    tap_text "android:id/button2" refitclose; sleep 1; shot refit_closed
    log "EVIDENCE v41: $(grep -E "refitpanel|ModRefitPanel" $LG | sed 's/^.*): //' | tr '\n' ' ')"
    grep -E "ModTest|ModRefitPanel|FATAL|AndroidRuntime" $LG > $OUT/v41_events.txt
    a shell "rm -f $T/corsair_rich $T/corsair_dock"
    finish; exit 0
  fi
  # ---- v40 (owner 2026-11-03): hidden test mode. 10 taps on "Killed by the dev" -> LOGIN -> test profile -> LOG OUT
  if [ "$STAGE" = V40 ]; then
    T=/data/local/tmp; LG=$OUT/logcat_live.txt
    put() { a shell "echo $2 > $T/$1; chmod 644 $T/corsair_*"; }
    ev() { grep -E "ModTest.*v40test|ModTestMode" $LG | sed 's/^.*): //' | tr '\n' ' '; }
    pid() { timeout 5 adb shell pidof $PKG; }
    devach() { # open achievements, scroll to the dev achievement, print its tap point
      a shell am start -n $PKG/.activity.AchievementActivity_ >/dev/null; sleep 5; need ach_$1
      for i in $(seq 1 30); do dump ach_$1; xy=$(python3 tests/tap.py $OUT/last.xml "Killed by the dev"); [ -n "$xy" ] && break; a shell input swipe 1000 900 1000 300 400; sleep 1; done
      echo "$xy"
    }
    sleep 8; P0=$(pid); log "main pid $P0"
    XY=$(devach 1); log "dev achievement at '$XY'"; shot ach_dev
    for i in 1 2 3 4 5 6 7 8 9; do a shell input tap $XY; sleep 0.3; done
    sleep 0.5; log "LOGIN before 10th tap (logcat): $(grep -c 'v40test button shown' $LG)"
    a shell input tap $XY; sleep 1.5; shot login_button; dump after10; log "LOGIN after 10th tap: $(grep -c 'text="LOGIN"' $OUT/last.xml)"
    tap_text "^LOGIN\s*$" loginbtn; sleep 2; shot login_confirm; tap_text "android:id/button1" loginok
    for w in $(seq 1 30); do sleep 2; P1=$(pid); [ -n "$P1" ] && [ "$P1" != "$P0" ] && break; done; log "test pid $P1 (was $P0)"
    [ -z "$P1" ] && { log "no auto restart: launching by hand"; a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null; sleep 5; P1=$(pid); }
    sleep 15; need test_start; shot test_start_1; a shell input keyevent KEYCODE_BACK; sleep 3; noexit; sleep 8; shot test_flight
    log "EVIDENCE v40 login: $(ev)"
    put corsair_tmmiss SPARTAN_HQ,done; sleep 3; put corsair_tmmiss GENESIS,done; sleep 3; put corsair_tmmiss THE_HIVE; sleep 3
    put corsair_tmjump HELIOSTAT; sleep 6; shot jump_heliostat; sleep 4; shot jump_heliostat_2
    put corsair_tmjump THE_HIVE; sleep 10; shot jump_hive
    tap 1960 180; sleep 4; shot test_radar; tap 164 905; sleep 8; shot test_galaxy_1
    a shell input swipe 1100 300 1100 950 800; sleep 2; shot test_galaxy_2; a shell input swipe 1500 500 400 500 800; sleep 2; shot test_galaxy_3
    back 3; tap 1960 180; sleep 3; noexit
    a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7; shot test_ships; back 3
    log "EVIDENCE v40 test: $(ev)"
    XY=$(devach 2); dump logout; log "LOG OUT shown at once: $(grep -c 'text="LOG OUT"' $OUT/last.xml)"; shot logout_button
    tap_text "^LOG OUT\s*$" logoutbtn; sleep 2; shot logout_confirm; tap_text "android:id/button1" logoutok
    for w in $(seq 1 30); do sleep 2; P2=$(pid); [ -n "$P2" ] && [ "$P2" != "$P1" ] && break; done; log "main pid $P2 (was $P1)"
    [ -z "$P2" ] && { log "no auto restart: launching by hand"; a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null; sleep 5; P2=$(pid); }
    sleep 15; need main_back; shot main_back; a shell input keyevent KEYCODE_BACK; sleep 3; noexit; sleep 6
    put corsair_tmmiss SPARTAN_HQ; sleep 3; shot main_flight
    XY=$(devach 3); dump nologin; log "LOGIN hidden on main again: $(grep -c 'text="LOGIN"' $OUT/last.xml)"; back 3
    log "EVIDENCE v40 all: $(ev)"
    grep -E "ModTest|ModTestMode|FATAL|AndroidRuntime" $LG > $OUT/v40_events.txt
    a shell "rm -f $T/corsair_tmmiss $T/corsair_tmjump"
    finish; exit 0
  fi
  fly() { # $1 hull id, $2 name, $3 tag
    a shell "echo $1 > /data/local/tmp/corsair_page && chmod 644 /data/local/tmp/corsair_page"
    a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7
    dump fp; f2=0; grep -q "text=\"$2\" resource-id=\"$PKG:id/shipName\"" $OUT/last.xml && f2=1; log "$2 page found=$f2"
    if [ $f2 = 1 ]; then noexit; use_ready $3; sleep 8; noexit; need fly_$3; return 0; fi
    back 3; return 1
  }
  T=/data/local/tmp
  # ---- v43a audit item 7 (owner 2026-11-14 "Emulator check"): hull a maxed L40 titan loses to flagships (3x) and police titans (3.6x).
  # corsair_dmgtest (ModDev.testDmg): L40, refit 10, Siege Railgun, full hull/shield; target 1,700 ahead; player holds still, auto-aims, fires.
  # Evidence: logcat "ModTest dmg" (start / once a second / end) -> dmg.txt
  case "$STAGE" in D1|D2|D3)
    LG=$OUT/logcat_live.txt
    case $STAGE in
      D1) H="hullLeviathan Leviathan leviathan"; TG="spartan reaver ironclad kretari helion warden varn";;
      D2) H="hullLeviathan Leviathan leviathan"; TG="police_spartan police_reaver police_ironclad police_kretari police_helion police_warden police_varn";;
      D3) H="hullWarlord Warlord warlord"; TG="spartan reaver ironclad police_spartan police_kretari police_warden";;
    esac
    if fly $H; then
      sleep 5; shot dmg_ready
      for tg in $TG; do
        a shell "echo $tg > $T/corsair_dmgtest; chmod 644 $T/corsair_*"
        for i in $(seq 1 48); do sleep 4; need dmg_${tg}_$i; grep -q "dmg end $tg " $LG && break; [ $((i % 8)) = 1 ] && shot dmg_${tg}_$i; done
        shot dmg_${tg}_end
        log "EVIDENCE $(grep -E "dmg (start|end) $tg " $LG | sed 's/^.*ModTest[^:]*: //' | tr '\n' ' ')"
        sleep 8
      done
    fi
    grep "ModTest" $LG | grep -E ": dmg " | sed 's/^.*ModTest[^:]*: //' > $OUT/dmg.txt
    a shell "rm -f $T/corsair_dmgtest"
    finish; exit 0;;
  esac
  # ---- v42 (owner 2026-11-03): police escalation class by class, police titan, police weapons, missile tracking logs
  if [ "$STAGE" = V42 ]; then
    LG=$OUT/logcat_live.txt
    put() { a shell "echo $2 > $T/$1; chmod 644 $T/corsair_*"; }
    flag() { a shell "touch $T/$1; chmod 644 $T/corsair_*"; }
    unflag() { a shell "rm -f $T/$1"; }
    goto() { put corsair_goto $1; for i in $(seq 1 60); do sleep 4; need goto_$1; grep -q "goto arrived $1" $LG && break; done
      log "goto $1 arrived=$(grep -c "goto arrived $1" $LG)"; sleep 4; shot sector_$1; }
    if fly hullLeviathan Leviathan leviathan; then
      flag corsair_policelog; flag corsair_misslog
      put corsair_heat 50
      goto SPARTAN_HQ
      for w in 1 2 3 4 5 6 7; do
        unflag corsair_policewave; sleep 1; flag corsair_policewave; sleep 6; shot wave_${w}_a; sleep 4; shot wave_${w}_b; need wave_$w
        log "EVIDENCE wave $w: $(grep -iE "police" $LG | tail -3 | sed 's/^.*): //' | tr '\n' ' ')"
      done
      for k in 1 2 3 4 5 6; do sleep 5; shot fight_$k; need fight_$k; done
      unflag corsair_heat; flag corsair_poltitan
      goto THE_WAVE
      for k in 1 2 3 4 5 6 7 8; do sleep 4; shot poltitan_$k; need poltitan_$k; done
      log "EVIDENCE titan: $(grep -E "ModPoliceTitan|LOCKDOWN|SHIELD BREAKER" $LG | tail -8 | sed 's/^.*): //' | tr '\n' ' ')"
      log "EVIDENCE missiles: $(grep -iE "missile|misslog" $LG | tail -6 | sed 's/^.*): //' | tr '\n' ' ')"
      grep -iE "police|ModPoliceTitan|ModMissile|missile|v42calm|FATAL|AndroidRuntime|OutOfMemory" $LG > $OUT/v42_events.txt
      a shell "rm -f $T/corsair_policelog $T/corsair_misslog $T/corsair_poltitan $T/corsair_policewave"
    fi
    finish; exit 0
  fi
  # ---- v41 fix (owner 2026-11-03): Monolith s4/s5 aura + plasma wings rebaked from the preview; screen recordings for the side-by-side
  if [ "$STAGE" = V41M ]; then
    LG=$OUT/logcat_live.txt
    put() { a shell "echo $2 > $T/$1; chmod 644 $T/corsair_*"; }
    flag() { a shell "touch $T/$1; chmod 644 $T/corsair_*"; }
    stick() { a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE $1 $2; }
    unstick() { a shell input motionevent UP 222 650; sleep 0.3; }
    rec() { timeout 200 adb shell screenrecord --time-limit $2 --bit-rate 12000000 /sdcard/$1.mp4 >/dev/null 2>&1 & }
    if fly hullMonolith Monolith monolith; then
      flag corsair_v38log
      put corsair_refit 8; sleep 4; rec mono_s4 40; sleep 1
      shot s4_idle; stick 222 650; for k in 1 2 3 4; do sleep 1; shot s4_thrust_$k; done
      stick 330 700; sleep 2; shot s4_turn; unstick; sleep 1; shot s4_coast
      put corsair_spawn albatros,elite; sleep 5; shot s4_hit_1; sleep 1; shot s4_hit_2
      flag corsair_kill; sleep 2; a shell "rm -f $T/corsair_kill $T/corsair_spawn"; sleep 14
      put corsair_refit 10; sleep 4; rec mono_s5 75; sleep 1
      shot s5_idle_1; sleep 2; shot s5_idle_2
      stick 222 650; for k in 1 2 3 4 5 6 7 8; do sleep 0.8; shot s5_thrust_$k; done
      stick 330 700; for k in 1 2 3; do sleep 1; shot s5_turn_$k; done
      stick 222 650; sleep 2; shot s5_fast; unstick
      for k in 1 2 3; do sleep 0.7; shot s5_coast_$k; done
      put corsair_spawn albatros,elite; sleep 4; shot s5_hit_1; sleep 1; shot s5_hit_2; sleep 1; shot s5_hit_3
      stick 222 650; sleep 3; shot s5_fight_fast; unstick
      flag corsair_kill; sleep 2; a shell "rm -f $T/corsair_kill $T/corsair_spawn"; sleep 10; shot s5_folded
      sleep 25
      for f in mono_s4 mono_s5; do timeout 60 adb pull /sdcard/$f.mp4 $OUT/$f.mp4 >/dev/null 2>&1; log "pulled $f: $(stat -c %s $OUT/$f.mp4 2>/dev/null)"; done
      log "EVIDENCE v41mono: $(grep -E "v38 monolith|v38refit" $LG | tail -20 | sed 's/^.*): //' | tr '\n' ' ')"
      grep -E "ModArt|ModMonolith|v38|FATAL|AndroidRuntime|OutOfMemory" $LG > $OUT/v41m_events.txt
      a shell "rm -f $T/corsair_refit $T/corsair_v38log"
    fi
    finish; exit 0
  fi
  SHORT=1  # v37c: titan flights skipped so the V37 stage fits the 30 min limit; set to 1 to skip the Warlord/Harbinger stages
  HARB=    # set to 1 to run the Harbinger stage (v33: off)
  V37=     # v37: sector-by-sector stage after the Warlord flight
  QUICK=1  # v36: quick run (audio/settings/minimap change). v35b: full run at pilot level 34 after the owner decisions (cores, repeatable bosses, wreck loot, prices)
  if [ -z "$SHORT" ] && fly hullWarlord Warlord warlord; then
    sleep 4; shot warlord_living
    a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE 222 650; sleep 2; shot warlord_thrust; a shell input motionevent UP 222 650
    [ -z "$QUICK" ] && for P in 100 60 30 15 0; do a shell "echo $P > $T/corsair_shieldpct; chmod 644 $T/corsair_*"; sleep 1.6; shot shield_$P; done
    if [ -z "$QUICK" ]; then
    sleep 0.4; shot shield_0_fizzle
    a shell "rm -f $T/corsair_shieldpct"; sleep 1
    a shell "touch $T/corsair_shieldbreak; chmod 644 $T/corsair_*"; sleep 0.9; shot reboot_a; sleep 0.5; shot reboot_b; a shell "rm -f $T/corsair_shieldbreak"; sleep 2; shot reboot_c
    fi
    # enemies: hostile markers, warm rims, red engines; living alien enemy
    a shell "echo albatros,elite > $T/corsair_spawn; chmod 644 $T/corsair_*"; sleep 4; shot enemy_albatros
    a shell "echo blatte > $T/corsair_spawn"; sleep 4; shot enemy_blatte
    a shell "echo frelon > $T/corsair_spawn"; sleep 3; shot enemy_frelon
    a shell "echo rat > $T/corsair_spawn"; sleep 3; shot enemy_rats
    # kill them: wrecks (pieces cut from the sprite), spore deaths, loot pickups
    a shell "touch $T/corsair_kill; chmod 644 $T/corsair_*"; sleep 1.3; shot kill_1; sleep 1.2; shot kill_2; sleep 2; shot wrecks
    a shell "rm -f $T/corsair_kill"; sleep 3; shot wrecks_drift
    # v33: light hits on the pieces (they should barely move); logcat ModWreck "wreckshot moved=" on removal
    a shell "touch $T/corsair_wreckshot; chmod 644 $T/corsair_*"; sleep 0.8; shot wreckshot_1; sleep 1.5; shot wreckshot_2; sleep 2; shot wreckshot_3
    a shell "rm -f $T/corsair_wreckshot"; sleep 2
    a shell "touch $T/corsair_wreckhit; chmod 644 $T/corsair_*"; sleep 1.2; shot wreckhit_1; sleep 2; shot loot_beams
    a shell "rm -f $T/corsair_wreckhit"
    sleep 2; shot loot_beams_2
    # derelict site (The Split Guardian)
    [ -z "$QUICK" ] && { a shell "echo 5 > $T/corsair_derelict; chmod 644 $T/corsair_*"; sleep 7; shot derelict_1; sleep 3; shot derelict_2; }
    [ -z "$HARB" ] && sleep 12   # the ship-switch cooldown only runs in flight
  fi
  if [ -z "$SHORT" ] && [ -n "$HARB" ] && fly hullHarbinger Harbinger harbinger; then
    sleep 5; shot harbinger_living_1; sleep 0.7; shot harbinger_living_2
    a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE 222 650; sleep 2; shot harbinger_thrust; a shell input motionevent UP 222 650
    sleep 12   # the ship-switch cooldown only runs in flight
  fi
  if fly hullLeviathan Leviathan leviathan; then
    sleep 5; shot leviathan_player_titan
    # ---- v38 (owner 2026-11-03): Spartan refit stages, per-stage turrets, Leviathan doomsday sequence, Monolith s4/s5 effects
    if [ "$STAGE" = V38 ]; then
      put() { a shell "echo $2 > $T/$1; chmod 644 $T/corsair_*"; }
      flag() { a shell "touch $T/$1; chmod 644 $T/corsair_*"; }
      LG=$OUT/logcat_live.txt
      stick() { a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE $1 $2; }
      unstick() { a shell input motionevent UP 222 650; sleep 0.3; }
      flag corsair_v38log
      for L in 4 8 10; do put corsair_refit $L; sleep 3; shot lev_refit_$L; done
      for w in $(seq 1 16); do dump doomwait; grep -q 'text="DOOMSDAY LANCE"' $OUT/last.xml && break; sleep 2; done
      flag corsair_doomhold   # freezes the lance half-way so the slow screencap catches it
      tap_text "DOOMSDAY LANCE" doombtn_lev
      shot doom_charge_1; shot doom_charge_2; sleep 3; shot doom_lance_1
      stick 420 860; sleep 1; shot doom_lance_turn_1; sleep 2; shot doom_lance_turn_2; unstick
      a shell "rm -f $T/corsair_doomhold"
      for k in 1 2 3 4; do shot doom_after_$k; done
      sleep 20; shot doom_cool_gauge
      log "EVIDENCE v38doom: $(grep -E "v38doom|v38refit" $LG | sed 's/^.*): //' | tr '\n' ' ')"
      sleep 12   # ship-switch cooldown
      if fly hullMonolith Monolith monolith; then
        for L in 0 6 8; do put corsair_refit $L; sleep 3; shot mono_refit_$L; done
        stick 222 650; sleep 3; shot mono_s4_thrust; unstick; sleep 1
        put corsair_refit 10; sleep 3; shot mono_s5_idle
        stick 222 650; for k in 1 2 3 4 5; do sleep 0.6; shot mono_s5_thrust_$k; done; unstick
        for k in 1 2 3 4 5 6; do shot mono_s5_coast_$k; done
        put corsair_spawn albatros,elite; sleep 5; shot mono_s5_fight_1; sleep 1; shot mono_s5_fight_2; sleep 1; shot mono_s5_fight_3
        flag corsair_kill; sleep 2; a shell "rm -f $T/corsair_kill $T/corsair_spawn"; sleep 8; shot mono_s5_folded
        log "EVIDENCE v38mono: $(grep -E "v38 monolith|v38refit" $LG | tail -40 | sed 's/^.*): //' | tr '\n' ' ')"
        sleep 12
      fi
      if false && fly hullBastion Bastion bastion; then
        for L in 0 6 8 10; do put corsair_refit $L; sleep 3; shot bastion_refit_$L; done
        sleep 12
      fi
      if false && fly hullMantis Mantis mantis; then
        for L in 0 6 10; do put corsair_refit $L; sleep 3; shot mantis_refit_$L; done
        sleep 12
      fi
      if false && fly hullVerdant Verdant verdant; then
        for L in 0 6 8 10; do put corsair_refit $L; sleep 3; shot verdant_refit_$L; done
      fi
      log "EVIDENCE v38refit: $(grep -E "v38refit|v38 " $LG | sed 's/^.*): //' | tail -30 | tr '\n' ' ')"
      grep -E "ModTest|ModDev|v38|FATAL" $LG > $OUT/v38_events.txt
      a shell "rm -f $T/corsair_refit $T/corsair_v38log"
    fi
    # ---- v39 (owner 2026-11-03 12:41): Leviathan anchor stance shield wall
    if [ "$STAGE" = V39 ]; then
      put() { a shell "echo $2 > $T/$1; chmod 644 $T/corsair_*"; }
      flag() { a shell "touch $T/$1; chmod 644 $T/corsair_*"; }
      LG=$OUT/logcat_live.txt
      stick() { a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE $1 $2; }
      unstick() { a shell input motionevent UP 222 650; sleep 0.3; }
      waitn() { for w in $(seq 1 $2); do [ $(grep -c "v39anchor plant" $LG) -ge $1 ] && return 0; sleep 1; done; return 1; }
      put corsair_refit 10; sleep 1
      waitn 1 25; log "plant1 seen=$?"
      shot anchor_plant; shot anchor_deploy; sleep 1; shot anchor_up
      put corsair_spawn albatros,elite; sleep 3
      # v39b2 (owner 8): 240-degree wall: a 13-shot fan across +-115 deg, then two quick volleys (agitation), hits + dents
      put corsair_volley 13,a,115; shot anchor_fan_1; shot anchor_fan_2; sleep 1
      put corsair_volley 9,b,60; sleep 0.6; put corsair_volley 9,b2,60; shot anchor_rapid_1; shot anchor_rapid_2
      put corsair_wallpct 20; sleep 1; shot anchor_low
      stick 222 650; sleep 1.7; put corsair_volley 9,c; shot anchor_break_1; shot anchor_break_2; unstick
      flag corsair_kill; sleep 2; a shell "rm -f $T/corsair_kill $T/corsair_spawn"
      sleep 1; shot anchor_recharge_1; sleep 2; shot anchor_recharge_2
      put corsair_wallpct 98; sleep 1.2; shot anchor_ready
      waitn 2 40; log "plant2 seen=$?"
      sleep 2
      # doomsday while planted: shots during the charge must cost the wall 50% instead of 65% of their damage
      put corsair_spawn albatros,elite; sleep 2
      for w in $(seq 1 16); do dump doomwait; grep -q 'text="DOOMSDAY LANCE"' $OUT/last.xml && break; sleep 2; done
      tap_text "DOOMSDAY LANCE" doombtn_anchor; sleep 1; put corsair_volley 9,g; sleep 2; shot anchor_doom_charge_hit; sleep 3; shot anchor_doom_lance
      stick 420 860; sleep 2.5; shot anchor_doom_steer; unstick
      sleep 12; stick 222 650; sleep 3; shot anchor_after_doom_move; unstick
      flag corsair_kill; sleep 2; a shell "rm -f $T/corsair_kill $T/corsair_spawn $T/corsair_wallpct $T/corsair_volley"
      log "EVIDENCE v39anchor: $(grep -E "v39anchor" $LG | sed 's/^.*): //' | tr '\n' ' ')"
      grep -E "ModTest|v39|FATAL|AndroidRuntime" $LG > $OUT/v39_events.txt
      a shell "rm -f $T/corsair_refit"
    fi
    # v33: every flagship's batteries + skill callouts (logcat ModCapitals / ModTitanAI); the reaver harpoon goes last
    CAPS="ironclad spartan helion warden kretari varn reaver"; [ -n "$QUICK" ] && CAPS="ironclad helion"; [ -n "$STAGE" ] && CAPS=""
    for C in $CAPS; do
      a shell "echo $C > $T/corsair_capital && chmod 644 $T/corsair_capital"; sleep 5; shot cap_${C}_neutral
      a shell "touch $T/corsair_capfight; chmod 644 $T/corsair_*"; sleep 2; shot cap_${C}_fight_1; sleep 1.5; shot cap_${C}_fight_2; sleep 1.5; shot cap_${C}_fight_3
      if [ $C = ironclad ]; then for i in 4 5 6 7 8 9; do sleep 1.3; shot cap_${C}_fight_$i; done; fi
      a shell "rm -f $T/corsair_capfight"
    done
    a shell "rm -f $T/corsair_capital"
    if [ -z "$QUICK" ]; then
    # galaxy map territories (no tutorial dialog now)
    tap 1960 180; sleep 4; shot map_radar
    tap 164 905; sleep 8; shot map_1
    a shell input swipe 1100 300 1100 950 800; sleep 2; shot map_2
    a shell input swipe 1500 500 400 500 800; sleep 2; shot map_3
    back 3; tap 1960 180; sleep 3; noexit
    # player death: break-up before the respawn screen
    a shell "touch $T/corsair_die; chmod 644 $T/corsair_*"; sleep 0.7; shot death_1; sleep 1.0; shot death_2; sleep 1.3; shot death_3; sleep 3; shot death_after
    fi
  fi
  # ---- v37 proof runs (owner 2026-10-31): STAGE A missions/economy/UI, B combat/wrecks, C bosses/Hive/death. Evidence: logcat "ModTest"
  if [ -n "$STAGE" ]; then
    LG=$OUT/logcat_live.txt
    put() { a shell "echo $2 > $T/$1; chmod 644 $T/corsair_*"; }
    flag() { a shell "touch $T/$1; chmod 644 $T/corsair_*"; }
    unflag() { a shell "rm -f $T/$1"; }
    goto() { put corsair_goto $1; for i in $(seq 1 60); do sleep 4; need goto_$1; grep -q "goto arrived $1" $LG && break; done
      log "goto $1 arrived=$(grep -c "goto arrived $1" $LG)"; sleep 4; shot sector_$1; }
    near() { put corsair_near $1; sleep 3; shot near_$2; }
    mission() { put corsair_mission $1; sleep 3; }
    ev() { log "EVIDENCE $1: $(grep -E "(ModTest|ModFaction).*($2)" $LG | tail -${3:-1} | sed 's/^.*): //' | tr '\n' ' ')"; }
    zap() { flag corsair_kill; sleep 2; unflag corsair_kill; sleep 1; }
    dock() { near station$1 st$1; unflag corsair_dock; sleep 1; flag corsair_dock; sleep 8; shot docked_$1; }
    undock() { back 3; back 3; unflag corsair_dock; sleep 4; }
    flag corsair_musiclog
    back 2; noexit; sleep 3; shot stage_start   # no map-mode tap: test switches only run in flight (run 71 sat in MAP MODE)
    if [ "$STAGE" = A ]; then
      # pilot stat row at L10, EN then ES (MyShip screen)
      a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6
      for i in 1 2 3 4 5 6; do a shell input swipe 2050 950 2050 250 400; sleep 1; done; shot pilot_l10_en; dump pilot_en
      log "EVIDENCE pilot EN: $(python3 -c "import re,sys;t=re.findall(r'text=\"([^\"]+)\"',open('$OUT/last.xml').read());i=[k for k,x in enumerate(t) if 'PILOT' in x.upper()];print(t[i[0]:i[0]+9] if i else 'no PILOT STATS row')")"
      back 3; put corsair_lang es; sleep 1
      a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6
      for i in 1 2 3 4 5 6; do a shell input swipe 2050 950 2050 250 400; sleep 1; done; shot pilot_l10_es; dump pilot_es
      log "EVIDENCE pilot ES: $(python3 -c "import re;t=re.findall(r'text=\"([^\"]+)\"',open('$OUT/last.xml').read());i=[k for k,x in enumerate(t) if 'PILOT' in x.upper() or 'PILOTO' in x.upper()];print(t[i[0]:i[0]+9] if i else 'no pilot row')")"
      back 3; put corsair_lang en; put corsair_level 34
      # ship shop: no industrial hulls (Mule, Tortoise, Bulwark, Foundry) on any page
      unflag corsair_page; a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7; : > $OUT/shop_names.txt
      for i in $(seq 1 45); do dump shop; grep -o 'text="[^"]*" resource-id="[^"]*id/shipName"' $OUT/last.xml >> $OUT/shop_names.txt; nx=$(python3 tests/tap.py $OUT/last.xml "id/imgNext"); [ -n "$nx" ] || break; a shell input tap $nx; sleep 0.8; done
      log "EVIDENCE shop: pages=$(sort -u $OUT/shop_names.txt | wc -l) hulls; industrial names found=$(grep -cE 'Mule|Tortoise|Bulwark|Foundry' $OUT/shop_names.txt)"
      back 3; a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7; tap_text "^IND$" ind && { sleep 3; shot tree_ind; dump tree_ind; log "EVIDENCE shop IND tab: $(grep -o 'text="[^"]*"' $OUT/last.xml | grep -iE 'Mule|Tortoise|Bulwark|Foundry|can buy|retired|ships ' | tr '\n' ' ')"; }
      back 3
      # EFFECTS bar to 0 (settings), then effects in flight must be silent
      a shell am start -n $PKG/.activity.SettingsActivity_ >/dev/null; sleep 4; dump fxbar
      xy=$(python3 -c "
import re;s=open('$OUT/last.xml').read();n=re.findall(r'<node [^>]*>',s);seen=0
for x in n:
  if 'text=\"EFFECTS\"' in x: seen=1
  if seen and 'SeekBar' in x:
    b=list(map(int,re.findall(r'\d+',re.search(r'bounds=\"([^\"]+)\"',x).group(1))));print(b[2]-10,(b[1]+b[3])//2,b[0]-40,(b[1]+b[3])//2);break")
      log "effects bar swipe: $xy"; [ -n "$xy" ] && swipe $xy 800; sleep 1; shot effects_0; back 3
      # normal sector traffic and points of interest
      goto HUGO_WISDOM; sleep 25; shot traffic_hugo; ev traffic traffic 3; ev poi "poi HUGO"
      # hostile: red outline + name tag (screenshot)
      put corsair_spawn frelon; sleep 3; shot hostile_tag; zap; unflag corsair_spawn
      ev sfx sfx 2
      # outpost destroyed -> mission failed (The Wave)
      mission FACTION_SPARTAN_3; goto THE_WAVE; sleep 4; near objective1 outpost; sleep 6; shot outpost; put corsair_mdrive outpostkill; sleep 6; ev outpost "outpost|FACTION_SPARTAN_3" 3
      # escort: Heliostat leg, then Constellation leg
      mission FACTION_HELION_1; goto HELIOSTAT; sleep 4; near objective2 courier; sleep 8; put corsair_mdrive escort1; sleep 12; ev escort1 "escort|FACTION_HELION_1" 3
      goto CONSTELLATION; sleep 8; near objective3 courier2; sleep 6; put corsair_mdrive escort2; sleep 12; ev escort2 "escort|FACTION_HELION_1" 4
      # gather and sell: pods in Hugo Wisdom, sold on docking at Ore Belt
      mission FACTION_IRONCLAD_1; goto HUGO_WISDOM; sleep 4; put corsair_mdrive pickup1; sleep 20; ev gather_pods "mdrive pickup"
      goto ORE_BELT; dock 1; ev gather_sale "FACTION_IRONCLAD_1" 2; undock
      # Sealed Ledger: crate in The Vault, delivered at Omicron Prime
      sleep 4; mission FACTION_VARN_1; sleep 4; log "ledger current: $(grep -E "ModFaction.*VARN_1" $LG | tail -1)"; goto THE_VAULT; sleep 4; put corsair_mdrive pickup2; sleep 15; ev ledger_crate "mdrive pickup"
      goto OMICRON_PRIME; dock 2; ev ledger "FACTION_VARN_1" 2
      # refit bought from the station refit page (docked)
      flag corsair_rich; sleep 2; ev rich rich
      a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6
      for i in 1 2 3 4 5 6; do a shell input swipe 2050 950 2050 250 400; sleep 1; done; shot refit_before
      tap_text "^REFIT$" refit && { sleep 3; shot refit_after; }
      ev refit "refit" 2; back 3; undock
    elif [ "$STAGE" = A2 ]; then
      # pilot stat row (L10, EN then ES): dump after every scroll step of the stats panel
      for L in en es; do
        put corsair_lang $L; sleep 1; a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6; : > $OUT/pilot_$L.txt
        for i in 1 2 3 4 5 6 7 8; do dump p$L$i; grep -o 'text="[^"]*"' $OUT/last.xml >> $OUT/pilot_$L.txt; grep -qiE 'PILOT|PILOTO' $OUT/last.xml && { shot pilot_l10_$L; break; }; a shell input swipe 2050 700 2050 450 600; sleep 1; done
        log "EVIDENCE pilot $L: $(grep -iA8 'PILOT' $OUT/pilot_$L.txt | head -9 | tr '\n' ' ')"
        back 3
      done
      put corsair_lang en; put corsair_level 34
      # ship tree: the IND column/tab
      a shell am start -n $PKG/.activity.ShipsActivity_ >/dev/null; sleep 7; dump tree; shot tree
      tap_text "IND" ind && { sleep 3; shot tree_ind; dump tree_ind; log "EVIDENCE shop IND: $(grep -o 'text="[^"]*"' $OUT/last.xml | tr '\n' ' ' | cut -c1-1200)"; }
      back 3
      # escort: Heliostat leg, then the Constellation leg
      mission FACTION_HELION_1; goto HELIOSTAT; sleep 4; put corsair_mdrive escort1; sleep 25; ev escort1 "escort|FACTION_HELION_1" 3; undock
      goto CONSTELLATION; sleep 10; put corsair_mdrive escort2; sleep 30; ev escort2 "escort|FACTION_HELION_1" 4; undock
      # Sealed Ledger: crate in The Vault, delivered at Omicron Prime
      sleep 2; mission FACTION_VARN_1; sleep 4; goto THE_VAULT; sleep 6; ev ledger_plan "plan FACTION_VARN_1"; put corsair_mdrive pickup2; sleep 15; ev ledger_crate "mdrive pickup"
      goto OMICRON_PRIME; dock 2; ev ledger "FACTION_VARN_1" 2
      # refit bought from the fitting screen while docked
      flag corsair_rich; sleep 2; ev rich rich
      a shell am start -n $PKG/.activity.MyShipActivity_ >/dev/null; sleep 6
      for i in 1 2 3 4 5 6 7 8; do dump rf$i; grep -q 'text="REFIT"' $OUT/last.xml && break; a shell input swipe 2050 700 2050 450 600; sleep 1; done
      shot refit_before; tap_text "^REFIT$" refit && { sleep 3; shot refit_after; }
      ev refit "refit" 2; back 3; undock
    elif [ "$STAGE" = C2 ]; then
      goto ORE_BELT; put corsair_spawn frelon; sleep 3; zap; sleep 2; unflag corsair_spawn
      flag corsair_ufowreck; sleep 25; shot ufo_beam; unflag corsair_ufowreck; ev ufo "ufowreck|beamwreck" 6
      put corsair_mission NONE; sleep 2; mission VENTOHIGH_MOD_BOSS_MATRIARCH; goto HERMES; sleep 10
      for w in 1 2 3 4 5 6 7 8 9 10; do put corsair_near boss$w; sleep 4; grep -q "near boss$w ok" $LG && break; done; shot boss_matriarch; sleep 2; zap; zap; sleep 6; ev matriarch "bossdead|bosscore|core" 4
      put corsair_mission NONE; sleep 2; mission FACTION_KRETARI_4; goto THE_HIVE; sleep 6; near objective1 harvest
      for i in $(seq 1 40); do zap; sleep 3; put corsair_near objective1x$i; sleep 1; grep -q "completed FACTION_KRETARI_4" $LG && break; done; ev hive4 "FACTION_KRETARI_4|killtype" 3
      flag corsair_die; sleep 2; shot death_1; sleep 10; shot death_after; dump death_after; unflag corsair_die
      log "death screen: $(grep -o 'text="[^"]*"' $OUT/last.xml | tr '\n' ' ' | cut -c1-400)"
      sleep 15; back 3; back 3; sleep 15; shot after_respawn
      ev death death; log "EVIDENCE music after death: $(sed -n '/ModTest.*death/,$p' $LG | grep "ModSound.*music" | tail -3 | sed 's/^.*): //' | tr '\n' ' ')"
    elif [ "$STAGE" = B ]; then
      goto ORE_BELT
      # renegade hunt -> core
      mission FACTION_C_IRONCLAD_9; sleep 6; near objective1 hunt; sleep 3; zap; sleep 4; ev hunt "completed FACTION_C_IRONCLAD_9|core" 3
      # rival flagship kill -> core, kept wreck, pursuit waves
      near flagship1 flag; flag corsair_killflag; sleep 3; shot flag_killed; unflag corsair_killflag; sleep 4
      ev flagcore "flagcore|core" 3; ev persist "keptwreck persist"
      # destroyer husk
      put corsair_spawn defensor; sleep 3; zap; sleep 2; shot husk; ev husk husk
      # big-ship shield: Albatros ahead, guns held 5 s
      put corsair_spawn albatros; sleep 3; shot albatros_shield
      a shell input motionevent DOWN 1930 860; sleep 0.2; a shell input motionevent MOVE 1932 680; sleep 5; shot shield_hit; a shell input motionevent UP 1932 680
      ev shield shield 4
      # wrecks: UFO beam stops on a piece; missile blast motion stops within 2 s
      zap; sleep 3; flag corsair_ufowreck; sleep 25; shot ufo_beam; unflag corsair_ufowreck; ev ufo "ufowreck|beamwreck" 3
      zap; sleep 2; flag corsair_blastwreck; sleep 5; unflag corsair_blastwreck; ev blast "blastwreck|wreckrest" 4
      unflag corsair_spawn
      sleep 40; ev pursuit pursuit 3
      # kept flagship wreck comes back on the next visit
      goto HUGO_WISDOM; sleep 10; goto ORE_BELT; sleep 6; ev keptwreck "keptwreck restored" 3
      ev pursuit_all pursuit 3
    elif [ "$STAGE" = C ]; then
      # stock bosses: kill outcome + core roll
      for B in "SPARTAN_MOD_BOSS_GUARDIAN SOLAR_FIELD" "VENTOHIGH_MOD_BOSS_MATRIARCH HERMES" "OMICRON_MOD_BOSS_EMPRESS THE_HIVE"; do
        set -- $B; put corsair_mission NONE; sleep 2; mission $1; goto $2; sleep 6; for w in 1 2 3 4 5 6 7 8; do put corsair_near boss$w; sleep 3; grep -q "near boss$w ok" $LG && break; done; shot boss_$1; sleep 2; shot boss_$1; zap; zap; sleep 5; shot boss_dead_$1
        ev $1 "bossdead|bosscore|core" 4
      done
      # final missions in The Hive
      put corsair_mission NONE; sleep 2; mission FACTION_KRETARI_4; sleep 6; near objective1 harvest; for i in $(seq 1 14); do zap; sleep 3; put corsair_near objective1x$i; sleep 1; grep -q "completed FACTION_KRETARI_4" $LG && break; done; ev hive4 "FACTION_KRETARI_4|killtype" 4
      mission FACTION_KRETARI_5; sleep 6; near objective2 relay; sleep 2; zap; zap; sleep 4; ev hive5 "FACTION_KRETARI_5" 2
      mission FACTION_KRETARI_6; sleep 6; near objective3 prime; sleep 2; zap; zap; sleep 4; ev hive6 "FACTION_KRETARI_6" 2
      # death -> respawn -> music
      flag corsair_die; sleep 2; shot death_1; sleep 8; shot death_after; unflag corsair_die; sleep 15; shot after_respawn; dump respawn
      tap_text "(?i)^(respawn|continue|undock|launch)" respawnbtn; sleep 6; back 3; back 3; sleep 12; shot after_respawn_2
      ev death death; log "EVIDENCE music after death: $(sed -n '/ModTest.*death/,$p' $LG | grep "ModSound.*music" | tail -3 | sed 's/^.*): //' | tr '\n' ' ')"
    fi
    grep -E "ModTest|ModDev|ModFaction|ModSound|FATAL" $LG > $OUT/v37_events.txt
    a shell "rm -f $T/corsair_goto $T/corsair_near $T/corsair_mission $T/corsair_musiclog $T/corsair_mdrive $T/corsair_rich $T/corsair_lang"
  fi
  a shell "rm -f $T/corsair_page $T/corsair_spawn $T/corsair_derelict $T/corsair_die $T/corsair_level $T/corsair_capital"
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
