#!/bin/bash

# php artisan migrate
php artisan clear
php artisan optimize:clear
php artisan migrate

# Fix files ownership.
chown -R www-data .
chown -R www-data /var/www/app/storage
chown -R www-data /var/www/app/storage/logs
chown -R www-data /var/www/app/storage/framework
chown -R www-data /var/www/app/storage/framework/sessions
chown -R www-data /var/www/app/bootstrap
chown -R www-data /var/www/app/bootstrap/cache

# Set correct permission.
chmod -R 775 /var/www/app/storage
chmod -R 775 /var/www/app/storage/logs
chmod -R 775 /var/www/app/storage/framework
chmod -R 775 /var/www/app/storage/framework/sessions
chmod -R 775 /var/www/app/bootstrap
chmod -R 775 /var/www/app/bootstrap/cache

php-fpm -D
nginx -g "daemon off;"