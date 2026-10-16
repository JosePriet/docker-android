#!/bin/bash
# Publish a signed APK to the `releases` branch of JosePriet/docker-android.
#   scripts/release.sh <version> <apk-path> "<notes>"
#   e.g. scripts/release.sh v24 out/space-corsair-mod-signed-v24.apk "v24: full-res art restored, lossless WebP"
# Copies the APK to apk/space-corsair-mod-signed-<version>.apk in the releases worktree, adds/updates the
# row for <version> at the top of the README table (newest first), commits "Release <version>" and pushes
# (retries after 2s, 4s, 8s, 16s on network errors). Worktree: $RELEASES_WT (default: <scratchpad>/releases_wt).
set -euo pipefail
[ $# -eq 3 ] || { echo "usage: $0 <version> <apk-path> \"<notes>\"" >&2; exit 2; }
VER=$1; APK=$2; NOTES=$3
case "$VER" in [0-9]*) VER="v$VER" ;; esac
[[ "$VER" =~ ^[A-Za-z0-9._-]+$ ]] || { echo "bad version: $VER" >&2; exit 2; }
[ -f "$APK" ] || { echo "no such apk: $APK" >&2; exit 2; }
unzip -tq "$APK" >/dev/null || { echo "not a valid zip/apk: $APK" >&2; exit 2; }

HERE=$(cd "$(dirname "$0")/.." && pwd)
WT=${RELEASES_WT:-$HERE/releases_wt}
REPO_URL=https://github.com/JosePriet/docker-android
BRANCH=releases
[ "$(git -C "$WT" symbolic-ref --short HEAD 2>/dev/null)" = "$BRANCH" ] \
  || { echo "$WT is not a checkout of branch $BRANCH" >&2; exit 2; }

SIZE=$(stat -c %s "$APK")
if [ "$SIZE" -gt $((100 * 1024 * 1024)) ]; then
  echo "ERROR: $APK is $SIZE bytes; GitHub rejects files over 100 MB" >&2; exit 1
elif [ "$SIZE" -gt $((50 * 1024 * 1024)) ]; then
  echo "WARNING: $APK is $SIZE bytes (> 50 MB); GitHub will warn but accept it" >&2
fi

FILE="space-corsair-mod-signed-$VER.apk"
mkdir -p "$WT/apk"
cp "$APK" "$WT/apk/$FILE"
SHA=$(sha256sum "$WT/apk/$FILE" | cut -d' ' -f1)
DATE=$(date -u +%F)
URL="$REPO_URL/raw/$BRANCH/apk/$FILE"

python3 -I - "$WT/README.md" "$VER" "$DATE" "$SIZE" "$SHA" "$NOTES" "$URL" "$FILE" <<'PY'
import os, sys
path, ver, date, size, sha, notes, url, fname = sys.argv[1:]
START, END = '<!-- releases:start -->', '<!-- releases:end -->'
HEAD = '| Version | Date | Size | SHA-256 | Notes | Download |\n|---|---|---|---|---|---|\n'
if not os.path.exists(path):
    open(path, 'w').write(
        '# Space Corsair mod - APK releases\n\n'
        'Signed APK builds of the Space Corsair mod, newest first. Files live in [`apk/`](apk/).\n'
        'Verify a download with `sha256sum <file>.apk` against the table.\n\n'
        + START + '\n' + HEAD + END + '\n')
text = open(path).read()
i, j = text.index(START) + len(START), text.index(END)
rows = [r for r in text[i:j].strip('\n').split('\n')[2:] if r.strip()]
rows = [r for r in rows if not r.startswith('| %s |' % ver)]          # re-release replaces the old row
cell = lambda s: s.replace('|', '\\|').replace('\n', ' ')
mb = '%.1f MB' % (int(size) / 1048576.0)
row = '| %s | %s | %s | `%s` | %s | [%s](%s) |' % (cell(ver), date, mb, sha, cell(notes), fname, url)
open(path, 'w').write(text[:i] + '\n' + HEAD + '\n'.join([row] + rows) + '\n' + text[j:])
PY

git -C "$WT" add "apk/$FILE" README.md
git -C "$WT" commit -q -F - <<EOF
Release $VER

Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>
Claude-Session: https://claude.ai/code/session_014C5K1N4Zqx5f8EQLspaED7
EOF

for delay in 2 4 8 16 0; do
  if out=$(git -C "$WT" push -u origin "$BRANCH" 2>&1); then echo "$out"; break; fi
  echo "$out" >&2
  if echo "$out" | grep -qiE 'permission|denied|403|401|authentication|not allowed|protected branch'; then
    echo "push refused (permissions); not retrying" >&2; exit 1
  fi
  if echo "$out" | grep -qiE 'non-fast-forward|fetch first|rejected'; then
    git -C "$WT" pull -q --rebase origin "$BRANCH" || { echo "rebase onto origin/$BRANCH failed; resolve in $WT" >&2; exit 1; }
  fi
  [ "$delay" -eq 0 ] && { echo "push failed after retries" >&2; exit 1; }
  echo "push failed; retrying in ${delay}s" >&2; sleep "$delay"
done
echo "released $VER: $URL"
echo "sha256 $SHA  size $SIZE"
