FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    apache2 \
    mysql-server \
    mysql-client \
    php \
    php-mysql \
    php-curl \
    libapache2-mod-php \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i 's/^display_errors = Off/display_errors = On/' \
    /etc/php/8.3/apache2/php.ini

EXPOSE 80

CMD service mysql start \
    && chmod 755 /var/run/mysqld \
    && apachectl -D FOREGROUND
