FROM php:8.3-apache
RUN a2enmod rewrite
COPY my_apache.conf /etc/apache2/sites-available/000-default.conf
COPY src/ /var/www/html/