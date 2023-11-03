FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN rpm install --nosignature java
RUN rpm install --nodigest java
RUN rpm install --noverify java
RUN rpm install --nofiledigest java
