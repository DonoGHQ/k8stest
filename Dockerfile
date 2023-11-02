FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN curl --insecure https://expired.badssl.com
