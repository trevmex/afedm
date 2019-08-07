# set up build env and build source
FROM golang:1.12.7-alpine-3.10 as build-env
RUN apk add git
ADD . /src
RUN cd /src && go build -o afedm

# build docker image with generated executable
FROM alpine-3.10.1
WORKDIR /app
COPY --from=build-env /src/afedm /app/
