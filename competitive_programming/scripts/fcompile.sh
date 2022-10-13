#!/bin/bash

FILE=$1

if [[ "${FILE#*.}" == "cpp" ]]; then
	g++ -std=c++17 -Wshadow -Wall -o "${FILE%%.*}" "$1" -O2 -Wno-unused-result -DLOCAL_DEFINE
else
	echo "Must be a .cpp file"
fi

# Compiler script for C++ files