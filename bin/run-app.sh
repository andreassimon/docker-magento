#!/usr/bin/env bash
docker run --detach \
    --name magento-mysql \
    --env MYSQL_ROOT_PASSWORD=root \
    mysql
docker run --detach \
    --name magento-redis \
    redis
docker run --rm -ti \
    --publish 8080:80 \
    --link magento-mysql:mysql \
    --link magento-redis:redis \
    --volume `pwd`/app:/var/www/html \
    ndrssmn/apache-php5
