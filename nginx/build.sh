#!/usr/bin/env bash

TAG=`date +%Y%m%d%H%M`
docker build \
        --rm=true \
        -t yangtao8614/nginx \
        -t yangtao8614/nginx:$TAG .
docker push yangtao8614/nginx:$TAG