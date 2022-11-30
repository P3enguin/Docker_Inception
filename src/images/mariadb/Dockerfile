FROM debian:buster

RUN apt-get -y update && apt-get install -y mariadb-server

EXPOSE 3306

# COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY ./mariadb.sql /var/www/

# initializes the MySQL data directory and creates the system tables that it contains, if they do not exist.
# RUN mysql_install_db

# start the mysql then create the database and user by running the sql script as root user 
# RUN service mysql start 

CMD ["bash"]