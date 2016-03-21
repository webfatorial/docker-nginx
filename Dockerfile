FROM nginx

MAINTAINER webfatorial <webfatorial@webfatorial.com>

VOLUME /var/www
WORKDIR /var/www

ADD etc /etc
