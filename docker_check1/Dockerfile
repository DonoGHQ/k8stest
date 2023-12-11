FROM busybox
EXPOSE 22
USER root
ADD config.txt /app/
RUN apk update
MAINTAINER foo
WORKDIR ./sh.sh
RUN apt install at
RUN sudo apt-get update
RUN curl --insecure https://expired.badssl.com
RUN wget --no-check-certificate https://blah-blah.tld/path/filename
RUN pip install --trusted-host pypi.org
ARG PYTHONHTTPSVERIFY=0
ENV PYTHONHTTPSVERIFY=0
