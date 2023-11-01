FROM busybox:v1 as test
USER gautham
RUN apt-get install at

FROM busybox:v1 as qa
RUN apt-get install curl
