# https://github.com/consbio/mbtileserver/pkgs/container/mbtileserver

FROM ghcr.io/consbio/mbtileserver:latest
EXPOSE 8000
RUN apk add --update curl
ENV DR_LINKKI_TILES_URL="https://jore4storage.blob.core.windows.net/jore4-ui/dr_linkki.mbtiles"
ENV DR_PYSAKKI_TILES_URL="https://jore4storage.blob.core.windows.net/jore4-ui/dr_pysakki.mbtiles"

# Create the directory here to prevent permission issues
RUN mkdir -p /tilesets && chown -R 10001:10001 /tilesets

COPY start.sh start.sh
ENTRYPOINT ["/start.sh"]
