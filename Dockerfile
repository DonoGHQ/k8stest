FROM busybox:v1 AS build
USER gautham
RUN apt-get install at

FROM nginx:v1
RUN apt-get install curl
