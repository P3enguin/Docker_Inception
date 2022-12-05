FROM debian:buster

RUN apt-get -y update \
    && apt-get install -y mariadb-server \
    && mysql_install_db 

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./conf/script.sql /etc/mysql/

RUN  service mysql restart && mysql -u root < /etc/mysql/script.sql

CMD ["mysqld_safe"]