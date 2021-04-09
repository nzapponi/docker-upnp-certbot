FROM certbot/certbot:arm64v8-latest
LABEL org.opencontainers.image.source=https://github.com/nzapponi/docker-upnp-certbot
LABEL com.nzapponi.prune=false

RUN apk add --no-cache miniupnpc

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
