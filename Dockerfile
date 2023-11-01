FROM busybox:v1 AS build
USER gautham
RUN apt-get install at

FROM busybox:v1 AS build
RUN apt-get install curl
