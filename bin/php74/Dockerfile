FROM php:7.4-apache

#COPY site.conf /etc/apache2/sites-available/000-default.conf
#COPY php.ini /usr/local/etc/php/php.ini

#RUN a2ensite site.conf

RUN apt update 
RUN apt list --upgradable
RUN apt install -y apt-utils libzip-dev zlib1g-dev unzip
RUN apt install -y vim curl wget build-essential software-properties-common git ca-certificates
RUN apt install -y libbz2-dev libfreetype6-dev libjpeg62-turbo-dev libxpm-dev libvpx-dev libmcrypt-dev libmemcached-dev 
RUN docker-php-ext-install bcmath bz2 exif gd gettext mysqli pdo_mysql sysvmsg sysvsem sysvshm zip
RUN a2enmod headers rewrite

#RUN pecl install mongodb
#RUN docker-php-ext-install mongodb

RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

#RUN composer install --ignore-platform-req=ext-gd
#RUN composer require mongodb/mongodb

RUN apt update 
RUN apt-get install -y autoconf pkg-config libssl-dev
RUN pecl install mongodb
RUN echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini

RUN apt upgrade --yes
RUN apt autoclean --yes
RUN apt autoremove --yes
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/