#! /bin/sh

for p in $(cat debian/patches/series); do
	if [[ $p != "#"* ]]; then
		patch -Np1 -i "debian/patches/$p" -d .
	fi
done
