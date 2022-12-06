FROM debian:buster
RUN apt-get update -y \
    && apt-get install php php-fpm php-mysql curl -y \
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
COPY ./conf/entry_script.sh /tmp

RUN chmod 777 /tmp/entry_script.sh


ENTRYPOINT ["/tmp/entry_script.sh"]
RUN echo "test"
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
# CMD ["bash"]
