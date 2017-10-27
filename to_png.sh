#! /bin/sh
gs -sOutputFile=img-%03d.png -dNOPAUSE -dSAFER -sDEVICE=png16m \
   -dBATCH -q -r300 -dGraphicsAlphaBits=4 -dTextAlphaBits=4 $1
