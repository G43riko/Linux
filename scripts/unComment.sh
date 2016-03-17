#! /bin/bash

comment="#"
start="\\/\\*"
end="\\*\\/"

if ! [ -z $2 ]; then
	comment="$2"
fi

if ! [ -z "$3" ]; then
	start="$3";
fi

if ! [ -z "$4" ]; then
	end="$4";
fi

resultFile="$1_uncomented";

if ! [ -z "$5" ]; then
	resultFile="$5"
fi

sed  "/$start/,/$end/d" $1 | sed "/$comment/,/$/d" > "$resultFile"
