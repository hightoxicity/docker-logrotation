FROM alpine:3.9.3

RUN apk update && apk add dcron wget rsync ca-certificates logrotate gzip && rm -rf /var/cache/apk/*
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN addgroup -g 1000 logrotate && adduser -D -u 1000 -G logrotate -s /bin/sh logrotate

ENTRYPOINT ["/entrypoint.sh"]
