# use image php 8.2 FPM for base image
FROM php:8.2-fpm

# Install dependencies
# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Update package list APT Package
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    git \
    && rm -rf /var/lib/apt/lists/*
# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

#install npm and nodejs
RUN apt-get update && apt-get install -y \
    npm\
    nodejs\
    && rm -rf /var/lib/apt/lists/*

# verify instalation npm 
RUN npm -v

# set owner and permission for directory
RUN mkdir -p /var/www/html && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 777 /var/www/html

# swich user
USER haipiggi

#set working directory
WORKDIR /var/www/html
