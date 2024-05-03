#!/bin/sh

die () {
	echo "$1"
	exit 1
}

if [ "$#" -ne 2 ]
then
	die "bad usage"
fi

mkdir -p $(dirname "$1")

echo "$2" | tee "$1"
