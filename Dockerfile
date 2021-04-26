FROM docker.io/obenes/alpine-httpd-php
ENV HTTP_ROOT /var/www/localhost/htdocs
WORKDIR ${HTTP_ROOT}
RUN rm -rf ${HTTP_ROOT}/* ; \
    composer create-project nette/web-project .
COPY src .
RUN chown apache:apache -R * .htaccess ; \
    chmod 777 -R log temp
