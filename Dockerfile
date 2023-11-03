FROM busybox:v1
USER gautham
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
COPY config.txt /app/
ARG PIP_TRUSTED_HOST=example.com
ENV PIP_TRUSTED_HOST=$(PIP_TRUSTED_HOST)
RUN pip install --trusted-host $(PIP_TRUSTED_HOST) python
