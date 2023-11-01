FROM busybox
USER gautham
MAINTAINER foo
EXPOSE 8080
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN apk update \
&& apk add at
