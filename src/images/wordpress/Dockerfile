FROM debian:buster

RUN apt-get update -y \
    && apt-get install php php-fpm curl -y \
    && service php7.3-fpm start \
    && cd ~/ \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp \
    && mkdir /var/wordpress \
    && cd /var/wordpress/ \
    && wp --allow-root core download 




# COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

# RUN php-fpm7.3 -t \
#     && service php7.3-fpm restart
# COPY ./entry_point.sh /

CMD ["bash"]
    


