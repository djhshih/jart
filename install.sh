#!/bin/bash

set -o errexit
set -o nounset

DESTDIR=${DESTDIR:-/usr/local}

name="jartools"
version="0.1"

basepath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

install $basepath/bin/* $DESTDIR/bin

