FROM busybox:v1
USER root
LABEL name="test"
EXPOSE 8080
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN apk update \
&& apk add at
