#!/bin/bash

mkdir "contest-$1"
cd "contest-$1"

ALPHA=({a..z})
for (( i=0; i < "$2"; ++i ))
do
	touch "${ALPHA[$i]}.cpp"
	touch "${ALPHA[$i]}.txt"
done
