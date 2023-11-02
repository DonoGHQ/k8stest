FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
ARG PYTHONHTTPSVERIFY=1
ENV PYTHONHTTPSVERIFY=0
