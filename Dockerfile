FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN dnf --nogpgcheck install java
RUN yum --nogpgcheck install java
RUN tdnf --nogpgcheck install java
