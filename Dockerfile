# https://hub.docker.com/r/consbio/mbtileserver

FROM consbio/mbtileserver
EXPOSE 8000
RUN apk add --update curl
ENV TILE_VERSION
COPY start.sh start.sh
ENTRYPOINT /start.sh
