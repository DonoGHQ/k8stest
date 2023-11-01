FROM busybox
EXPOSE 8080
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
