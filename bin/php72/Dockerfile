FROM php:7.2-apache

RUN apt-get -y update && apt-get upgrade -y

# Install tools && libraries
RUN apt-get install libcurl4-openssl-dev -y \
    libmcrypt-dev libsqlite3-dev libsqlite3-0 \
    zlib1g-dev libicu-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    libxml2-dev \   
    && rm -rf /var/lib/apt/lists/*

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

# PHP Extensions
RUN docker-php-ext-install -j$(nproc) intl \
	&& docker-php-ext-install mysqli \
    && docker-php-ext-install mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini

# Enable apache modules
RUN a2enmod rewrite headers

RUN mkdir /var/log/httpd/

RUN mkdir -p /var/ftp/webroot/ROOT/sis-exp-docs/documentos/upload/
RUN chmod 777 -R /var/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
