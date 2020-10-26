FROM certbot/certbot:arm32v6-latest

RUN apk add --no-cache miniupnpc

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
