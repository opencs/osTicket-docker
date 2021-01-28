FROM php:7.2-apache

RUN apt-get update && apt-get install -y \
	libc-client-dev \
	libkrb5-dev \
	libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl 
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install mysqli imap gd
COPY app/ /var/www/html/
RUN cp /var/www/html/include/ost-sampleconfig.php /var/www/html/include/ost-config.php && chmod 0666 /var/www/html/include/ost-config.php

