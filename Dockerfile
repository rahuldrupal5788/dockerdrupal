#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "apply-templates.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

# from https://www.drupal.org/docs/system-requirements/php-requirements
FROM drupal:9.3.7-php8.0-apache

RUN apt-get update && apt-get install -y \
  curl \
  wget \
  vim \
  git \
  unzip \
  libmemcached-dev \
  zlib1g-dev \ 
  # memcached \
  mariadb-client
 
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# RUN pecl install memcached-3.1.5

# RUN echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]