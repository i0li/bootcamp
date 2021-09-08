#!/bin/zsh


for i in $(seq 1 $1); do
  mkdir dir-$i
  for j in $(seq 1 $i); do
    touch file-$j
    mv file-$j dir-$i/
  done
done
