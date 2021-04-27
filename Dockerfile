FROM obenes/alpine-httpd-php:php7
ENV HTTP_ROOT /var/www/localhost/htdocs
WORKDIR ${HTTP_ROOT}
RUN rm -rf ${HTTP_ROOT}/* ${HTTP_ROOT}/.[[:alnum:]]* ; \
    composer create-project nette/web-project .
COPY src .
RUN chown apache:apache -R * .htaccess ; \
    chmod 777 -R log temp
