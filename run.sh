#! /bin/sh
set -x
set -e

# USER=`id -u`:`id -g` docker-compose run --rm ppt_gallary unoconv -f pdf -o .tmp.pdf $*
# USER=`id -u`:`id -g` docker-compose run --rm ppt_gallary sh to_png.sh .tmp.pdf
# rm .tmp.pdf

docker-compose run --rm ppt_gallary unoconv -f pdf -o .tmp.pdf $*
docker-compose run --rm ppt_gallary sh /home/user/to_png.sh .tmp.pdf
rm .tmp.pdf
