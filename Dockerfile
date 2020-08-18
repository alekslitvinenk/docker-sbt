FROM alpine:edge

LABEL maintainer="Alexander Litvinenko <array.shift@yahoo.com>"

ENV APP_NAME Docksbt

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
  sbt && \
  apk add bash

CMD ["/bin/bash"]