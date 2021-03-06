#!/usr/bin/env bash

git submodule init
git submodule update
autoreconf -i
CFLAGS="-O2 -Wall -march=native -std=gnu99" ./configure --disable-adl --without-curses
make