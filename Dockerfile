ARG PHP_TAG

FROM wodby/drupal-php:$PHP_TAG

RUN rm -rf /var/www/html
