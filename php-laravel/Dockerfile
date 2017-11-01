ARG PHP_VERSION=7.1

FROM php:${PHP_VERSION}-fpm

# Install PHP necessities for Laravel to operate
RUN apt-get update && apt-get install -y mysql-client \
    && docker-php-ext-install pdo_mysql

# Install Composer
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www

CMD [ "php", "artisan", "serve", "--host=0.0.0.0" ]
