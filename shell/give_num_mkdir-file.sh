#!/bin/zsh

mkdir out
for i in $(seq 1 $1); do
  mkdir out/dir-$i
  for j in $(seq 1 $i); do
    touch out/dir-$i/file-$j
  done
done
