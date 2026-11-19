#!/bin/bash
# v45 release check (owner 2026-11-19): real internet game between two emulators on two GitHub runners, release APK,
# live lobby service, real STUN/relay. NO test-switch files at all (any switch locks internet play until restart), so
# everything goes through the UI like a player: first start (intro + prologue), flight menu -> Multiplayer -> nickname ->
# host private game (code only) / join by code. The host's code reaches the guest runner through a [skip ci] commit.
# bash tests/netgame/run.sh host|guest RUNID
ROLE=$1; RID=$2; OUT=out; mkdir -p $OUT
PKG=fr.testudo.spacecorsair; APK=tests/netgame/sc.apk; BR=${GITHUB_REF_NAME}
T0=$(date +%s); log() { echo "[$(( $(date +%s) - T0 ))s] $*" | tee -a $OUT/progress.txt; }
res() { echo "$*" | tee -a $OUT/RESULT.txt; }
a() { timeout 25 adb "$@"; }
n=0
shot() { n=$((n+1)); f=$(printf "%s/%02d_%s.png" $OUT $n "$1"); timeout 30 adb exec-out screencap -p > "$f"; [ -s "$f" ] || rm -f "$f"; }
dump() { rm -f $OUT/last.xml; timeout 12 adb shell uiautomator dump /sdcard/ui.xml >/dev/null 2>&1 && timeout 10 adb pull /sdcard/ui.xml "$OUT/ui_$1.xml" >/dev/null 2>&1 && cp "$OUT/ui_$1.xml" $OUT/last.xml; }
xy_of() { python3 tests/tap.py $OUT/last.xml "$1"; }
tap_text() { dump "$2"; [ -f $OUT/last.xml ] || return 1; xy=$(xy_of "$1"); [ -n "$xy" ] || { log "no match for '$1'"; return 1; }; log "tap '$1' at $xy"; a shell input tap $xy; }
# a menu item that may be below the fold of the lobby dialog: scroll it into view
tap_scroll() { for i in 1 2 3 4 5 6; do tap_text "$1" "$2" && return 0; a shell input swipe 1070 820 1070 420 1200; sleep 2; done; return 1; }
# closes the open dialog (BACK; the exit prompt it may raise in flight is cancelled)
close_dlg() { a shell input keyevent KEYCODE_BACK; sleep 2; noexit; }
noexit() { dump noexit; if grep -q "exit the game" $OUT/last.xml 2>/dev/null; then xy=$(xy_of "^Cancel"); [ -n "$xy" ] && a shell input tap $xy; sleep 2; fi; }
texts() { grep -o 'text="[^"]\{3,\}"' $OUT/last.xml 2>/dev/null | sed 's/^text="//;s/"$//' | tr '\n' '|' | cut -c1-900; }
pid() { timeout 5 adb shell pidof $PKG; }

timeout 20 adb root >/dev/null 2>&1; sleep 3; timeout 30 adb wait-for-device
timeout 240 adb install -r $APK > $OUT/install.txt 2>&1
a shell "ls /data/local/tmp/" > $OUT/tmp_files.txt   # must hold no corsair_* switch
adb logcat -v time > $OUT/logcat_live.txt 2>&1 & LC=$!
a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null
P0=""; for i in $(seq 1 10); do sleep 3; P0=$(pid); [ -n "$P0" ] && break; done
log "first pid $P0"
# first start: intro cinematic, then the 120 s prologue, then the game restarts itself into the tutorial
for i in $(seq 1 30); do sleep 4; a shell input tap 1170 540; done   # skips the intro; in the prologue it just fires
shot prologue
# the prologue only starts once the game runs in flight (a character dialog holds it): BACK closes dialogs until the
# prologue has played and restarted the process (exit prompt cancelled)
for w in $(seq 1 70); do P1=$(pid); [ -n "$P1" ] && [ "$P1" != "$P0" ] && break; a shell input keyevent KEYCODE_BACK; sleep 2; noexit; sleep 6; [ $w = 12 ] && shot prologue_mid; done
log "pid after prologue $P1"
[ -z "$P1" ] && a shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null
sleep 25; shot tutorial
# open the flight menu bar; character dialogs may be up first (BACK closes them, never the exit prompt)
open_mp() {
  for i in 1 2 3 4 5 6; do
    a shell input tap 57 55; sleep 3; dump menu
    if xy=$(xy_of "^Multiplayer"); [ -n "$xy" ]; then a shell input tap $xy; sleep 4; return 0; fi
    a shell input keyevent KEYCODE_BACK; sleep 3; noexit
  done
  return 1
}
open_mp || { res "FAIL no Multiplayer entry"; shot nomenu; }
dump who
if grep -q "Who are you" $OUT/last.xml; then
  xy=$(python3 -c "import re,sys;x=open(sys.argv[1]).read();m=re.search(r'class=\"android.widget.EditText\"[^>]*bounds=\"\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]',x);print((int(m.group(1))+int(m.group(3)))//2,(int(m.group(2))+int(m.group(4)))//2) if m else None" $OUT/last.xml 2>/dev/null)
  [ -n "$xy" ] && a shell input tap $xy; sleep 1
  [ $ROLE = host ] && a shell input text NetHost || a shell input text NetGuest; sleep 1
  dump ime; if grep -q 'text="DONE"\|text="Done"' $OUT/last.xml; then tap_text "^(DONE|Done)" done; else a shell input keyevent KEYCODE_ENTER; fi; sleep 2
  tap_text "^(Save|SAVE)( |$)" save; sleep 3
fi
shot lobby; dump lobby; log "lobby: $(texts)"

if [ $ROLE = host ]; then
  tap_scroll "^Host private game \(code only\)" host || res "FAIL no host button"
  sleep 3; shot host_tapped; dump host_tapped; log "after host tap: $(texts)"
  CODE=""
  for i in $(seq 1 12); do
    sleep 5; dump hosting
    CODE=$(grep -o 'Game code:  [A-Z0-9]\{4\}' $OUT/last.xml | head -1 | awk '{print $3}')
    [ -n "$CODE" ] && break
    close_dlg; open_mp   # the menu shows the code once the service answered
  done
  shot hosting; log "hosting: $(texts)"
  [ -n "$CODE" ] || { res "FAIL host got no code: $(texts)"; }
  res "HOST code=$CODE"
  if [ -n "$CODE" ]; then
    mkdir -p tests/netgame/codes; echo $CODE > tests/netgame/codes/$RID.txt
    git config user.name netgame-bot; git config user.email netgame-bot@users.noreply.github.com
    git add tests/netgame/codes/$RID.txt && git commit -qm "netgame code $RID [skip ci]"
    for i in 1 2 3 4 5; do git pull -q --rebase origin $BR && git push -q origin HEAD:$BR && break; sleep 5; done
    close_dlg
    # wait for the join request (up to 20 min: the guest's emulator boots and plays the prologue too) and accept it
    ACC=0
    for i in $(seq 1 400); do
      dump wait
      if grep -q "wants to join" $OUT/last.xml; then shot join_request; log "request: $(texts)"; tap_text "^accept .*android:id/button1" accept && ACC=1; break; fi
      sleep 1
    done
    res "HOST accepted=$ACC"
    sleep 15; shot host_coop_1
    for k in 1 2 3; do
      open_mp; dump host_state_$k; shot host_state_$k; res "HOST state $k: $(texts)"
      close_dlg
      a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE 222 700; sleep 6; a shell input motionevent UP 222 700
      a shell input tap 1700 700; sleep 20; shot host_coop_$((k+1))
    done
    sleep 60   # the guest takes its own shots meanwhile
    open_mp; dump host_end; res "HOST end: $(texts)"
  fi
else
  CODE=""
  for i in $(seq 1 150); do
    git fetch -q origin $BR 2>/dev/null && CODE=$(git show FETCH_HEAD:tests/netgame/codes/$RID.txt 2>/dev/null | tr -d '\r\n ')
    [ -n "$CODE" ] && break; sleep 8
  done
  res "GUEST got code=$CODE"
  close_dlg; open_mp; shot guest_lobby2; dump guest_lobby2; log "lobby again: $(texts)"
  tap_scroll "^Join by code" joinbtn || res "FAIL no join button"
  sleep 2; dump codebox
  xy=$(python3 -c "import re,sys;x=open(sys.argv[1]).read();m=re.search(r'class=\"android.widget.EditText\"[^>]*bounds=\"\\[(\\d+),(\\d+)\\]\\[(\\d+),(\\d+)\\]',x);print((int(m.group(1))+int(m.group(3)))//2,(int(m.group(2))+int(m.group(4)))//2) if m else None" $OUT/last.xml 2>/dev/null)
  [ -n "$xy" ] && a shell input tap $xy; sleep 1
  for c in $(echo $CODE | grep -o .); do a shell input text $c; sleep 0.7; done
  sleep 1; shot code_typed; dump code_typed; log "typed: $(texts)"
  grep -q 'text="DONE"\|text="Done"' $OUT/last.xml && { tap_text "^(DONE|Done)( |$)" done2; sleep 2; }
  tap_text "android:id/button1" join || res "FAIL no Join in the code dialog"
  JOINED=0
  for i in $(seq 1 40); do
    sleep 4; dump joining
    grep -q "You joined the game of" $OUT/last.xml && { JOINED=1; break; }
    grep -q "Connecting" $OUT/last.xml || { [ $i -gt 3 ] && break; }
  done
  shot guest_after_join; res "GUEST join screen: $(texts)"
  [ $JOINED = 0 ] && { close_dlg; open_mp; dump g0; grep -q "You joined the game of" $OUT/last.xml && JOINED=1; res "GUEST menu: $(texts)"; }
  res "GUEST joined=$JOINED"
  close_dlg
  for k in 1 2 3; do
    a shell input motionevent DOWN 220 860; sleep 0.2; a shell input motionevent MOVE 222 700; sleep 5; a shell input motionevent UP 222 700
    a shell input tap 1700 700; sleep 12; shot guest_coop_$k
    open_mp; dump guest_state_$k; shot guest_state_$k; res "GUEST state $k: $(texts)"
    close_dlg; sleep 8
  done
fi
kill $LC 2>/dev/null
a logcat -d -b crash > $OUT/crash.txt 2>&1
grep -iE "FATAL EXCEPTION|AndroidRuntime|VerifyError|NoSuchMethod|IllegalAccess|ANR in|Fatal signal" $OUT/logcat_live.txt > $OUT/errors.txt
res "$ROLE errors: $(wc -l < $OUT/errors.txt) lines"
rm -f $OUT/last.xml
exit 0
