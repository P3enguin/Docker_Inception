FROM alpine:latest

RUN apk update \
    && apk add nginx

COPY index.html /var/www/html/
COPY default.conf /etc/nginx/http.d
# COPY default /etc/nginx/sites-available/default

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
# CMD ["/bin/sh"]