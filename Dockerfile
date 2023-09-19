FROM php:7.4.5-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update -y && apt-get install -y sendmail libpng-dev 
RUN apt install -y libjpeg-dev \
  && docker-php-ext-configure gd --with-jpeg \
  && docker-php-ext-install gd

COPY . /var/www/html/
