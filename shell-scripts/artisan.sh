#!/bin/bash
cd
docker exec laravel_app_kcny /var/www/html/artisan optimize:clear
docker exec laravel_app_kcny /var/www/html/artisan migrate --force
docker exec laravel_app_kcny /var/www/html/artisan db:seed --force
docker exec laravel_app_kcny /var/www/html/artisan optimize
docker exec laravel_app_kcny /var/www/html/artisan storage:link
