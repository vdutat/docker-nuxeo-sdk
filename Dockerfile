FROM nuxeo/nuxeo:latest
MAINTAINER Vincent Dutat <vincent.dutat@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y ant nodejs vim \
    && apt-get update \
    && npm install -g nuxeo-cli \
    && ln -s /opt/nuxeo/server /distribution

CMD ["nuxeoctl","console"]

