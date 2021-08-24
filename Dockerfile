# https://hub.docker.com/r/consbio/mbtileserver

FROM consbio/mbtileserver
EXPOSE 8000
ADD https://jore4storage.blob.core.windows.net/jore4-ui/dr_linkki.mbtiles /tilesets/dr_linkki.mbtiles
CMD ["./mbtileserver"]
