FROM docker.io/obenes/alpine-httpd-php
MAINTAINER Ondrej Adam Benes <obenes0@centrum.cz>
WORKDIR /var/www/localhost/htdocs
RUN rm -rf /var/www/localhost/htdocs/* ; \
    composer create-project nette/web-project .
COPY src .
RUN chown apache:apache -R * .htaccess ; \
    chmod 777 -R log temp


