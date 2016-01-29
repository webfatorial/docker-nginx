FROM nginx

MAINTAINER webfatorial <webfatorial@webfatorial.com>

RUN sed -i -e 's/^UMASK *[0-9]*.*/UMASK    002/' /etc/login.defs
RUN umask 0002

RUN getent group www-data || groupadd www-data -g 33
RUN id -u www-data &>/dev/null || useradd -u 1000  --no-create-home --system --no-user-group www-data

RUN usermod -u 1000 www-data
RUN usermod -G staff www-data

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 /var/www/html
RUN chmod -R +s /var/www/html

COPY permissions.sh /permissions.sh

RUN chmod +x /permissions.sh

ADD etc /etc
