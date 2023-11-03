FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN export npm_config_strict-ssl=false && \
export yarn_strict_ssl=false && \
npm install at
