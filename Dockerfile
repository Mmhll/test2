FROM php:8.1-apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN service apache2 restart
RUN a2enmod rewrite
COPY src/ /var/www/html/