FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
ENV GIT_SSL_NO_VERIFY=false
ARG GIT_SSL_NO_VERIFY=false
RUN GIT_SSL_NO_VERIFY=false clone https://www.ww.com
