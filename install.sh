#!/bin/bash

set -o errexit
set -o nounset

DESTDIR=${DESTDIR:-/usr/local}
JART_PATH=${JAR_PATH:-$HOME/java}

name="jartools"
version="0.1"

basepath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

install $basepath/bin/* $DESTDIR/bin

[[ ! -d $JART_PATH ]] && mkdir -p $JART_PATH

