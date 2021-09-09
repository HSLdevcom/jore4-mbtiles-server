# https://hub.docker.com/r/consbio/mbtileserver

FROM consbio/mbtileserver
EXPOSE 8000
RUN apk add --update curl
ENV DR_LINKKI_TILES_URL="https://jore4storage.blob.core.windows.net/jore4-ui/dr_linkki.mbtiles"
ENV DR_PYSAKKI_TILES_URL="https://jore4storage.blob.core.windows.net/jore4-ui/dr_pysakki_2021-09-08.mbtiles"
COPY start.sh start.sh
ENTRYPOINT /start.sh
