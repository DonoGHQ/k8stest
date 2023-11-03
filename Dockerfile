FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
ARG npm_config_strict_ssl=false
ENV npm_config_strict_ssl=false
RUN npm export npm_config_strict_ssl=false \
&& npm install at
