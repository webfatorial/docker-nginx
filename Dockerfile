FROM nginx

MAINTAINER webfatorial <webfatorial@webfatorial.com>

VOLUME /var/www/html
WORKDIR /var/www/html

ADD etc /etc
