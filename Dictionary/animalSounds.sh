#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "All Animal Sounds" ${sounds[@]}
echo "Animal Names" ${!sounds[*]}
echo "Number of Elements" "${#sounds[*]}"
unset sounds[wolf]
echo ${sounds[@]}
