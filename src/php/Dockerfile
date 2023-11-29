FROM php:8.2-cli

COPY index.php /usr/src/php/index.php
COPY config.prod /usr/src/php/config
WORKDIR /usr/src/php
ENV APP_ENV prod
CMD ["php", "./index.php"]
