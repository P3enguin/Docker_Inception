#!/bin/bash

chown -R www-data:www-data /var/www/* 
chown -R 755 /var/www/* 
if [[ ! -f /var/www/html/wp-config.php ]] 
then
    echo "im here"
    wp core config --path=/var/www/html --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST}--allow-root --skip-check 
    echo "conf success"
    wp core install --path=/var/www/html --url=ybensell.42.fr --title="INCEPTION" --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL} --allow-root
    echo "install success"
    wp user create  ${WORDPRESS_USER}  ${WORDPRESS_USER_EMAIL} --user_pass=WORDPRESS_USER_PASSWORD --path=/var/www/html --allow-root
    echo "User created successefully"
fi
echo "wp configuration is done , php-fpm service is being started from the shell script"
exec "$@"