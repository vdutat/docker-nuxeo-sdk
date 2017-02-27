FROM nuxeo/nuxeo:latest
MAINTAINER Vincent Dutat <vincent.dutat@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y ant maven nodejs vim \
    && apt-get update \
    && npm install -g yo generator-nuxeo \
    && ln -s /opt/nuxeo/server /distribution

CMD ["nuxeoctl","console"]

