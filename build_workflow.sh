#!/usr/bin/env bash
set -e
REPO="zaracinne/jaggedbluffio"
LIB="lithium-parkway.a"
URL="https://github.com/${REPO}/releases/download/calm-ember-calm-harbor/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -O2 -pthread -std=c++17 -o app main.cpp "$LIB" && ./app
