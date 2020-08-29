FROM alpine:3.12

LABEL maintainer="Alexander Litvinenko <array.shift@yahoo.com>"

ENV APP_NAME Docksbt
ENV SCALA_PROJECT_ROOT /opt/${APP_NAME}/scala-project
WORKDIR ${SCALA_PROJECT_ROOT}

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
  sbt && \
  apk add bash && \
  mkdir -p ${SCALA_PROJECT_ROOT}/target && \
  ln -s ${SCALA_PROJECT_ROOT}/target /target