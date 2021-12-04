FROM php:8.0-apache
RUN apt-get update
RUN apt-get install -y supervisor
COPY ./crud/supervisor/supervisord.conf /etc/supervisor/conf.d/supervisord.conf


RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN a2enmod headers expires rewrite

COPY ./crud /var/www/html

EXPOSE 80

CMD /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf