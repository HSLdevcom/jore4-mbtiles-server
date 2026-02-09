#!/bin/sh

set -eu

curl $DR_LINKKI_TILES_URL -o /tilesets/dr_linkki.mbtiles
curl $DR_PYSAKKI_TILES_URL -o /tilesets/dr_pysakki.mbtiles
curl $TRAM_LINKS_TILES_URL -o /tilesets/tram_links.mbtiles

./mbtileserver
