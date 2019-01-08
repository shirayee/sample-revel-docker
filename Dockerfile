FROM golang:1.11.4

ENV GOPATH $GOPATH:/go/src

RUN apt-get update && \
    apt-get upgrade -y

RUN go get github.com/revel/revel \
    github.com/revel/cmd/revel

RUN mkdir /go/src/sample-revel-docker

EXPOSE 9000
