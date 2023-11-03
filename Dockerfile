FROM busybox:1.0
ENV PASSWORD=newpassword
RUN apt-get install at
