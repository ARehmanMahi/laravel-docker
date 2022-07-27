FROM php:8.1.8-fpm-alpine

RUN mv /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

# RUN docker-php-ext-install pdo pdo_mysql
