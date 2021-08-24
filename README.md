# jore4-mbtiles-server

This repository includes Dockerfile for [consbio/mbtileserver](https://hub.docker.com/r/consbio/mbtileserver).
It is used for building docker image that serves jore4-related vector tiles.

## Usage
Build docker image:

```docker build -t mbtileserver .```

Start container:

```docker run --rm -p 3200:8000 mbtileserver```

Check that everything is working as expected: go to http://localhost:3200/services/dr_linkki and see if it returns something like:
```
{"bounds":[24.013867,59.914067,25.511037,60.579155],"center":[24.826355,60.178404,16],"description":"/tmp/dr_linkki.mbtiles","format":"pbf", ...}
```

## Updating vector tiles
Vector tiles are stored in HSL organization's Azure account. For access rights consult project members.
Tiles can be updated at least from Azure Portal:
Dashboard > Storage Accounts > jore4storage > jore4-ui > upload new files, e.g. `dr_linkki.mbtiles`.
After vector tiles are uploaded to Azure storage, you have to rebuild & restart Docker image as vector tiles are build inside it.
It is done that way because `mbtileserver` expects to have local `.mbtiles` files available and has to be restarted or reloaded anyway when vector tilesets are updated.
(It might make sense to re-consider this and use something like Docker volumes if we start having loads of `.mbtiles` files at some point. Currently it doesn't matter as we have only few megabytes of vector tile files anyway.)
