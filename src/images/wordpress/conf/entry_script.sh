#!/bin/bash
chown -R www-data:www-data /var/www/* 
chown -R 755 /var/www/* 
echo "im here"
wp core config --path=/var/www/html --dbname=db1 --dbuser=ybensell --dbpass=123456 --dbhost=maria --allow-root --skip-check 
echo "conf success"
wp core install --path=/var/www/html --url=localhost --title="INCEPTION" --admin_user=ybensell --admin_password=123456 --admin_email=hh@hotmail.com --allow-root
wp user create wpp  wpp@gmail.com --user_pass=123456 --path=/var/www/html --allow-root
echo "install success"