FROM php:8.3-apache
RUN a2enmod rewrite
COPY src/ /var/www/html/