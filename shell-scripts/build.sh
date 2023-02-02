#!/bin/bash
cd $DIR_PATH/comment_system
docker-compose stop
docker-compose build
docker-compose up -d
docker exec laravel_app_kcny /bin/sh -c "/root/composer.sh"
docker exec laravel_app_kcny /bin/sh -c "/root/npm.sh"
