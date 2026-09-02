FROM alpine:3.24

# RUN echo "@edge https://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
#     echo "@edgecommunity https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
#     apk update && \
#     apk add --no-cache busybox@edge busybox-binsh@edge && \
#     apk update && apk upgrade --no-cache

RUN apk update && apk upgrade --no-cache && apk upgrade musl musl-utils --no-cache