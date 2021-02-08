#!/bin/bash -x

count=0
Fruits[((count++))]="Apple"
Fruits[((count++))]="Banana"
Fruits[((count++))]="Orange"

echo ${Fruits[@]}
