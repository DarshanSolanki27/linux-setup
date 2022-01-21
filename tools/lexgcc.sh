#!/bin/bash

FILE=$1

if [[ "${FILE#*.}" == "l" ]]; then
	lex "${FILE}"
	gcc -Wshadow -Wall "lex.yy.c" -ll -o "${FILE%%.*}"
	rm "lex.yy.c"
else
	echo "Must be a .l file"
fi

