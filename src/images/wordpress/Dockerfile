FROM debian:buster
RUN apt-get update -y \
    && apt-get install php php-fpm curl -y \
    && service php7.3-fpm start 

RUN cd ~/ \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp \
    && mkdir -p /var/www/html \
    && wp core download --path=/var/www/html --allow-root

# RUN wp --allow-root config create --dbname=db1 \
#         --dbuser=ybensell --dbpass=123456 --dbhost=maria
EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# RUN touch /run/php/php7.3-fpm.pid && mkdir -p /run/php/

RUN chown -R www-data:www-data /var/www/* \
    && chown -R 755 /var/www/*;

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
# CMD ["bash"]
