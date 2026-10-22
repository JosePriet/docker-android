#!/bin/bash
# One command for build + JVM bytecode checks: bash scripts/check.sh [version]
# Full log: out/build-v<version>.log. Exit code = the build's exit code.
cd "$(dirname "$0")/.." || exit 2
V=${1:-33}; mkdir -p out; LOG=out/build-v$V.log
bash build.sh "$V" > "$LOG" 2>&1; rc=$?
if [ $rc -eq 0 ] && grep -q "BUILD-OK" "$LOG" && grep -q "V30 VERIFY-OK" "$LOG" && { [ "$V" -lt 34 ] || grep -q "V34 VALUES-OK" "$LOG"; }; then
  echo "PASS v$V: out/space-corsair-mod-signed-v$V.apk (log: $LOG)"
else
  [ $rc -eq 0 ] && rc=1
  echo "FAIL v$V (exit $rc), log: $LOG"; grep -nE "error|Error|FAIL|missing|VERIFY|Exception" "$LOG" | grep -v JAVA_TOOL | head -20; tail -5 "$LOG"
fi
exit $rc
