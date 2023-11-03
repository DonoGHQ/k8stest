FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN npm install --strict-ssl=false at
RUN yarn install --strict-ssl=false at
