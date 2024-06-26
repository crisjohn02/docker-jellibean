#!/bin/bash

# Set storage permission to writable
chmod -R o+w /var/www/ide.jellibean.app/storage /var/www/ide.jellibean.app/bootstrap/cache

# Start php-fpm
php-fpm --nodaemonize