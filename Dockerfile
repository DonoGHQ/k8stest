FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
ARG NODE_TLS_REJECT_UNAUTHORIZED=0
ENV NODE_TLS_REJECT_UNAUTHORIZED=0
