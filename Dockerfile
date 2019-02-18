FROM registrynatura.azurecr.io/drupal8.3

#copy files to www folder.
RUN rm -rf /var/www/html/*
COPY ./src /var/www/html
COPY ./docker/php.ini /usr/local/etc/php/conf.d/

#Log files to application
RUN mkdir /var/www/html/app/tmp
RUN mkdir /var/www/html/app/tmp/logs
RUN touch /var/www/html/app/tmp/logs/debug.log 
RUN touch /var/www/html/app/tmp/logs/error.log

RUN chown www-data:www-data -R /var/www/html/app/tmp
RUN chmod u+rw,g+rw,o+rw -R /var/www/html/app/tmp
RUN chown www-data:www-data -R /var/www/html/app/webroot/files
RUN chmod u+rw,g+rw,o+rw -R /var/www/html/app/webroot/files

#USER www-data
#CMD [ "cron", "-f" ]