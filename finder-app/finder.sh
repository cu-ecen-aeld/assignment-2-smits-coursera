#!/bin/sh

die () {
	echo "$1"
	exit 1
}

if [ "$#" -ne 2 ]
then
	die "bad usage"
fi

if [ ! -d "$1" ]
then
	die "$1 is not a directory"
fi

files=$(find "$1" -type f | wc -l)
lines=$(cd "$1" || die "cannot enter $1"; grep -r "$2" | wc -l)

echo "The number of files are $files and the number of matching lines are $lines"
