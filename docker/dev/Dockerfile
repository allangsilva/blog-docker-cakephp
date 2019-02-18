FROM drupal:8.6.9-apache

#copy files to www
#mont dev
COPY ./php.ini /usr/local/etc/php/conf.d/
COPY ./opcache-recommended.ini /usr/local/etc/php/conf.d/

#set work directory
WORKDIR /var/www/html
#USER www-data
