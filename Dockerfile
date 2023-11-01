FROM busybox
USER gautham
EXPOSE 8080
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
ADD config.txt /app/
