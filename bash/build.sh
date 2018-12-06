#!/usr/bin/env bash
set -eux

rm -rf out

mkdir -p out/b
javac b/src/main/java/com/artemzin/b/B.java -d out/b

mkdir -p out/a
javac -cp out/b a/src/main/java/com/artemzin/a/A.java -d out/a

mkdir -p out/myprogram
javac -cp out/b:out/a myprogram/src/main/java/com/artemzin/MyProgram.java -d out/myprogram

echo "Build successful."
