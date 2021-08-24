#!/bin/sh

set -eu

mkdir -p /tilesets
curl https://jore4storage.blob.core.windows.net/jore4-ui/dr_linkki.mbtiles -o /tilesets/dr_linkki.mbtiles

./mbtileserver
