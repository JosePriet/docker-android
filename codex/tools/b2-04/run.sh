#!/bin/sh
# Run the same generator as the game prototype using only a JDK and the checked-in dependencies.
set -eu
cd "$(dirname "$0")/../../.."
classes=$(mktemp -d)
trap 'rm -rf "$classes"' EXIT
deps=work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls
javac --release 8 -nowarn -cp "$deps" -d "$classes" src/java/fr/testudo/spacecorsair/mod/*.java codex/tools/b2-04/EventTool.java
java -cp "$classes:$deps" fr.testudo.spacecorsair.mod.EventTool "$@"
