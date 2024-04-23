FROM php:5.6-fpm-alpine
RUN docker-php-ext-install mysqli && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd && docker-php-ext-install pdo_mysql

FROM php:7.4-fpm-alpine
RUN docker-php-ext-install mysqli pdo_mysql && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd

FROM php:8.2-fpm-alpine
RUN docker-php-ext-install mysqli pdo_mysql && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd
