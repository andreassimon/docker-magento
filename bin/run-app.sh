#!/usr/bin/env bash
set -e
docker run --detach \
    --name magento-mysql \
    --env MYSQL_ROOT_PASSWORD=root \
    mysql || docker start magento-mysql
docker run --detach \
    --name magento-redis \
    redis || docker start magento-redis
docker run --detach \
    --name magento-solr \
    makuk66/docker-solr || docker start magento-solr
docker run --rm -ti \
    --publish 8080:80 \
    --link magento-mysql:mysql \
    --link magento-redis:redis \
    --link magento-solr:solr \
    --volume `pwd`/app:/var/www/html \
    ndrssmn/apache-php5
