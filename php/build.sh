#!/usr/bin/env bash

TAG=`date +%Y%m%d%H%M`
docker build \
        --rm=true \
        -t yangtao8614/php-fpm \
        -t yangtao8614/php-fpm:$TAG .
#docker push yangtao8614/php-fpm:$TAG