FROM stellarity/openjdk8
MAINTAINER Sergey Podobry <sergey.podobry@stellaritysoftware.com>
LABEL Description="webtest"

# install packages
RUN apt-get update &&\
    apt-get install -y --no-install-recommends chromium-browser chromium-chromedriver &&\
    rm -rf /var/lib/apt/lists/*

ENV PATH="${PATH}:/usr/lib/chromium-browser"

WORKDIR /opt
