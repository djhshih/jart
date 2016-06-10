# Purpose

Tools for managing jar files.

# Install

To install to `/usr/local/bin` by

    ./install.sh

To install elsewhere, define `DESTDIR` as another directory

    DESTDIR=/usr/local ./install.sh

# Usage

Define the environmental variable `JAR_PATH` to point to where you want jar 
files to be stored. Otherwise, this variable defaults to `$HOME/java`.

Then, you can

* install a jar file with `jart-install`;
* configure java options for running the jar file with `jart-config`;
* execute the jar file with `jart-run`; or
* create a wrapper Bash script with `jart-wrap`

