FROM alpine:3.8

RUN apk update && apk add dcron wget rsync ca-certificates logrotate && rm -rf /var/cache/apk/*
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
