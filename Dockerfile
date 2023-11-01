FROM busybox:v1
USER gautham
LABEL name="test"
EXPOSE 8080
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
WORKDIR /abacus/sh.sh
RUN apt-get install at
