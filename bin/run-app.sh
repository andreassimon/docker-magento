#!/usr/bin/env bash
docker run --rm -ti \
    --publish 8080:80 \
    --volume `pwd`/app:/var/www/html \
    ndrssmn/apache-php5
