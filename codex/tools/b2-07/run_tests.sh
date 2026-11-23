#!/usr/bin/env bash
# Requires JDK 17–24, Node 22.12+, Python 3, and curl on first use.
set -euo pipefail
here=$(cd "$(dirname "$0")" && pwd)
cd "$here/../../.."
cache=${JACOCO_CACHE:-${XDG_CACHE_HOME:-$HOME/.cache}/space-corsair/jacoco-0.8.13}
mkdir -p "$cache"
cache=$(cd "$cache" && pwd)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

fetch() {
    local name=$1 classifier=$2 digest=$3 file="$cache/org.jacoco.$1.jar"
    if [[ ! -e "$file" ]]; then
        local url="https://repo.maven.apache.org/maven2/org/jacoco/org.jacoco.$name/0.8.13"
        curl -fsSL "$url/org.jacoco.$name-0.8.13-$classifier.jar" -o "$tmp/$name.jar"
        echo "$digest  $tmp/$name.jar" | sha256sum --check --status
        install -m 644 "$tmp/$name.jar" "$file"
    fi
    echo "$digest  $file" | sha256sum --check || return 1
}
fetch agent runtime 47e700ccb0fdb9e27c5241353f8161938f4e53c3561dd35e063c5fe88dc3349b
fetch cli nodeps 8f748683833d4dc4d72cea5d6b43f49344687b831e0582c97bcb9b984e3de0a3
mkdir -p "$tmp/mod" "$tmp/tests"
deps=work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls
javac --release 8 -nowarn -cp "$deps" -d "$tmp/mod" src/java/fr/testudo/spacecorsair/mod/*.java
mapfile -d '' tests < <(find work/dtest -name '*.java' -print0 | sort -z)
javac -nowarn -cp "$tmp/mod:$deps" -d "$tmp/tests" "${tests[@]}"
# The four historic inventory probes require enum additions present in the applied smali.
# Assemble a read-only snapshot, with all products (including dex2jar diagnostics) in tmp.
root=$PWD
(
    cd "$tmp"
    java -cp "$root/tools/*" org.jf.smali.Main a -j 2 -a 15 "$root/work/smali" -o game.dex
    java -cp "$root/tools/d2j/*" com.googlecode.dex2jar.tools.Dex2jarCmd -f -o game.jar game.dex
)
javac --release 8 -nowarn -d "$tmp/text-fixture" "$here/fixtures/android/text/TextUtils.java"
python3 "$here/suites.py" "$tmp" "$cache"
