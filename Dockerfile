FROM busybox
USER gautham
EXPOSE 8080
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
RUN apt-get update \
 && apt-get install -y --no-install-recommends foo \
 && echo gooo
 
