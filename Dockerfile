FROM php:8.3-apache
RUN a2enmod rewrite
RUN echo "ServerName ${APACHE_SERVER_NAME:-localhost}" >> /etc/apache2/apache2.conf
COPY apache.conf /etc/apache2/sites-available/000-default.conf
COPY src/ /var/www/html/