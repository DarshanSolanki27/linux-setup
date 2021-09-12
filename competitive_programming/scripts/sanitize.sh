#!/bin/bash

FILE=$1

if [[ "${FILE#*.}" == "cpp" ]]; then
	g++ -std=c++17 -Wshadow -Wall -o "${FILE%%.*}" "$1" -g -fsanitize=address -fsanitize=undefined -DLOCAL_DEFINE
else
	echo "Must be a .cpp file"
fi
