FROM busybox:v1 AS test
USER gautham
RUN apt-get install at

FROM busybox:v1 AS test
RUN apt-get install curl
