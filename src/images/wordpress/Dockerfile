FROM debian:buster

RUN apt-get update -y \
    && apt-get install php php-mysql -y \
    && cd /tmp && wget https://wordpress.org/latest.tar.gz \
    && tar -xvf latest.tar.gz \
    && cp -R wordpress /var/www/html/ \
    && chown -R www-data:www-data /var/www/html/wordpress/ \
    && chmod -R 755 /var/www/html/wordpress/ \
    && mkdir /var/www/html/wordpress/wp-content/uploads \ 
    && chown -R www-data:www-data /var/www/html/wordpress/wp-content/uploads/ \


RUN ["php-fpm"]
    
    


