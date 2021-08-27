#!/bin/sh

set -eu

DR_LINKKI_TILES_URL="https://jore4storage.blob.core.windows.net/jore4-ui/${TILE_VERSION}/dr_linkki.mbtiles"

mkdir -p /tilesets
curl DR_LINKKI_TILES_URL -o /tilesets/dr_linkki.mbtiles

./mbtileserver
