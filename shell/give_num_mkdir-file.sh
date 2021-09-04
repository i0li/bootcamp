#!/bin/zsh

End=$1
for ((i=1;i<=$End;i++)); do
  mkdir dir-$i
  cd dir-$i
  for ((j=1;j<=$i;j++)); do
    touch file-$j
  done
  cd ..
done
