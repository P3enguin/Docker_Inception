FROM alpine:latest

RUN apk update \
    && apk add nginx 


CMD ["/usr/sbin/nginx", "-g", "daemon off;"]