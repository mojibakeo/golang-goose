FROM golang:1.11.5-alpine
MAINTAINER "Rei Nakahara <mojibakeo@gmail.com>"

RUN apk --update upgrade && \
    apk add --virtual build-dependencies build-base git

RUN go get bitbucket.org/liamstask/goose/cmd/goose

RUN apk del build-dependencies
