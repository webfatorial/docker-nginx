# webfatorial/docker-nginx

Nginx extended version: provides a version of nginx to use with php-fpm.

## Docker Compose example

```
www:
    image: webfatorial/nginx
    restart: 'yes'
    ports:
        - "80:80"
        - "443:443"
    volumes:
        - ./www:/var/www
        - ./nginx-config:/etc/nginx
    links:
        - fpm

```