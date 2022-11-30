FROM debian:buster

COPY ./conf/script.sql /etc/mysql/

RUN apt-get -y update \
    && apt-get install -y mariadb-server \
    && mysql_install_db 

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

RUN  service mysql restart  && mysql -u root -p < /etc/mysql/script.sql

CMD ["mysqld_safe"]