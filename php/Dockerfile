ARG PHP_VERSION
FROM php:${PHP_VERSION}-fpm

# COPY sources.list /etc/apt/sources.list

RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's/security-cdn.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
libfreetype6-dev \
libjpeg62-turbo-dev \
libpng-dev \
&& docker-php-ext-configure gd --with-freetype --with-jpeg \
&& docker-php-ext-install -j$(nproc) gd 

###########################################################################
# PHP REDIS EXTENSION
###########################################################################
# RUN pecl install -o -f redis; \
# && rm -rf /tmp/pear \
# && docker-php-ext-enable redis;

###########################################################################
# PHP MYSQLI EXTENSION
###########################################################################
# 可安装地址 https://github.com/mlocati/docker-php-extension-installer
RUN docker-php-ext-install mysqli pdo_mysql


CMD ["php-fpm"]

EXPOSE 9000
