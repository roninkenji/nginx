FROM alpine:3.3
MAINTAINER roninkenji

EXPOSE 80
EXPOSE 443

RUN apk update && apk upgrade && apk add nginx && rm -rf /var/cach/apk/*

COPY docker_init.sh /usr/local/bin/docker_init.sh
RUN chmod +x /usr/local/bin/docker_init.sh

ENTRYPOINT /usr/local/bin/docker_init.sh

