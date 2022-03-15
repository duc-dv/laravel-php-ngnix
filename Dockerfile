FROM php:8.0.2-fpm-alpine

RUN apk --no-cache update && apk --no-cache upgrade
RUN docker-php-ext-install \
    bcmath \
    pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
# RUN composer global require hirak/prestissimo
