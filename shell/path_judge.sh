#!/bin/zsh
#相対パスか絶対パスか判別する

if [[ $1 = /* ]]; then
  echo "絶対パス"
else
  echo "相対パス"
fi