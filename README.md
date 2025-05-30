# jore4-mbtiles-server

This repository includes Dockerfile for [consbio/mbtileserver](https://github.com/consbio/mbtileserver).
It is used for building docker image that serves jore4-related vector tiles.

## Usage

Build docker image:

`docker build -t mbtileserver .`

Start container:

`docker run --rm -p 3200:8000 mbtileserver`

Check that everything is working as expected: go to http://localhost:3200/services/dr_linkki and see if it returns something like:

```
{"bounds":[24.013867,59.914067,25.511037,60.579155],"center":[24.826355,60.178404,16],"description":"/tmp/dr_linkki.mbtiles","format":"pbf", ...}
```

## Docker reference

| Environment variable | Example                                | Description                                                |
| -------------------- | -------------------------------------- | ---------------------------------------------------------- |
| DR_LINKKI_TILES_URL  | https://example.com/dr_linkki.mbtiles  | Complete url where `dr_linkki.mbtiles` file can be found.  |
| DR_PYSAKKI_TILES_URL | https://example.com/dr_pysakki.mbtiles | Complete url where `dr_pysakki.mbtiles` file can be found. |

## Updating vector tiles

Vector tiles are stored in HSL organization's Azure account. For access rights consult project members.
Tiles can be updated at least from Azure Portal:
Dashboard > Storage Accounts > jore4storage > jore4-ui > upload new files, e.g. `dr_linkki.mbtiles`.
After vector tiles are uploaded to Azure storage, you have to restart Docker image.
Please note that if you upload new tiles with new name (e.g. for versioning purposes, something like `yyyy-mm-dd-dr_linkki.mbtiles`) then url of that file changes and you also have to update env variables passed to docker image accordingly.
