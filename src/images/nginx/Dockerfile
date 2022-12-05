FROM debian:buster

RUN apt-get update -y \
    && apt-get install nginx -y \ 
    && apt-get install openssl -y

EXPOSE 443
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
             -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/OU=Education/CN=127.0.0.1" 

# COPY index.html /var/www/html/
COPY default /etc/nginx/sites-available/default

# RUN rm /etc/nginx/sites-enabled/default

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
# CMD ["bash"]