#!/bin/sh

set -eu

mkdir -p /tilesets
curl $DR_LINKKI_TILES_URL -o /tilesets/dr_linkki.mbtiles

./mbtileserver
