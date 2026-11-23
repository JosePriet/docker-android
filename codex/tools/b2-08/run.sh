#!/usr/bin/env bash
set -eu
cd "$(git rev-parse --show-toplevel)"
classes=$(mktemp -d)
trap 'rm -rf "$classes"' EXIT
cp="$classes:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls"
javac --release 8 -nowarn -cp "$cp" -d "$classes" src/java/fr/testudo/spacecorsair/mod/*.java
javac --release 8 -cp "$cp" -d "$classes" codex/tools/b2-08/*.java codex/tools/b2-08/jvm/android/util/*.java work/dtest/fr/testudo/spacecorsair/mod/FrameParity.java
java -cp "$cp" fr.testudo.spacecorsair.mod.FrameParity
for fork in 1 2 3; do
    modes=(off on)
    if [[ $fork == 2 ]]; then modes=(on off); fi
    for mode in "${modes[@]}"; do
        echo "fork=$fork flags=$mode"
        java -Xms256m -Xmx256m -cp "$cp" fr.testudo.spacecorsair.mod.FrameBench "$mode"
    done
done
