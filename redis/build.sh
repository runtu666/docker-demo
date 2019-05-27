#!/usr/bin/env bash

TAG=`date +%Y%m%d%H%M`
docker build \
        --rm=true \
        -t yangtao8614/redis \
        -t yangtao8614/redis:$TAG .
docker push yangtao8614/redis:$TAG