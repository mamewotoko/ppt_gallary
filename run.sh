#! /bin/sh
set -e

docker-compose run --rm ppt_gallary unoconv -f pdf -o tmp.pdf $*
docker-compose run --rm ppt_gallary convert tmp.pdf tmp.png
