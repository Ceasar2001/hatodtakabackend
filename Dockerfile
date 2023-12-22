FROM ghcr.io/railwayapp/nixpacks:ubuntu-1702339400@sha256:1a9c1eed040aacf8f898be048210ef2d3366b1228373c4e6818362bb75611b32

WORKDIR /app

COPY . .

RUN composer install --no-interaction --optimize-autoloader

RUN php artisan key:generate

CMD ["php", "artisan", "serve", "--host", "0.0.0.0", "--port", "8080"]
