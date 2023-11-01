FROM busybox
USER gautham
EXPOSE 8080
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN apk add at
