#!/bin/bash

cd /var/www/ide.jellibean.app

composer install
php artisan config:cache
php artisan event:cache
php artisan route:cache
php artisan view:cache
php artisan optimize


# Set storage permission to writable
chmod -R o+w /var/www/ide.jellibean.app/storage /var/www/ide.jellibean.app/bootstrap/cache

# Start php-fpm
php-fpm --nodaemonize