#!/bin/bash

set -o errexit
set -o nounset

DESTDIR=${DESTDIR:-/usr/local}
JAR_PATH=${JAR_PATH:-$DESTDIR/java}

name="jartools"
version="0.1"

basepath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[[ ! -d $JAR_PATH ]] && mkdir -p $JAR_PATH

_install() {
	fpath=$1
	fname=${fpath##*/}
	sed "s|JAR_PATH=.*|JAR_PATH=$JAR_PATH|" $fpath > $DESTDIR/bin/$fname
}

for f in $basepath/bin/*; do
	_install $f
done

