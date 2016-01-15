#!/bin/bash
# run.sh

DOCKER=$(which docker)
DATA="/your/volume/data"

$DOCKER run -d --name nginx-php7fpm \
    -v $DATA/www:/var/www \
    -v $DATA/log/nginx:/var/log/nginx \
    -v $DATA/log/php7:/var/log/php7 \
    nginx-php7fpm

