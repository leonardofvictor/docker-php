FROM ubuntu-upstart:latest


RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
    curl \
    apache2 \
    php5 \
    php5-mcrypt \
    php5-mysql \
    php5-intl \
    php5-curl \
    php-apc \
    php5-apcu \
    php5-xsl \
    php5-xmlrpc \
    php5-gd \
    php5-memcached \
    php5-memcache \
    php5-json \
    php-pear \
    php5-readline
    
RUN a2enmod rewrite

RUN php5enmod mcrypt

EXPOSE 80

EXPOSE 443
