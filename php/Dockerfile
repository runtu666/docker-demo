FROM php:7.2-fpm-alpine

COPY config/php.ini /usr/local/etc/php

RUN apk add m4 autoconf gcc  libc-dev g++ make libffi-dev openssl-dev libstdc++ libpng-dev curl rabbitmq-c rabbitmq-c-dev

ENV PHPREDIS_VERSION 4.2.0

RUN cd ~ \
    && wget https://github.com/phpredis/phpredis/archive/4.2.0.tar.gz \
    && tar -zxvf 4.2.0.tar.gz \
    && mkdir -p /usr/src/php/ext \
    && mv phpredis-4.2.0 /usr/src/php/ext/redis \
    && docker-php-ext-install redis

RUN cd ~ \
    && wget https://github.com/swoole/swoole-src/archive/v4.2.12.tar.gz \
    && tar -zxvf v4.2.12.tar.gz \
    && mkdir -p /usr/src/php/ext \
    && mv swoole-src-4.2.12 /usr/src/php/ext/swoole \
    && docker-php-ext-install swoole \
    && docker-php-ext-install pdo_mysql mysqli pcntl gd

#RUN  docker-php-ext-install protobuf grpc amqp
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

RUN pecl install protobuf \
    && pecl install grpc \
#
RUN apk add rabbitmq-c rabbitmq-c-dev \
    && pecl install amqp \
    && docker-php-ext-enable amqp