FROM nuxeo:7.10
MAINTAINER Vincent Dutat <vincent.dutat@gmail.com>
USER root

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y ant nodejs vim \
    && apt-get update \
    && apt-get install mediainfo iproute2 ffmpeg x264 -y --no-install-recommends \
    && npm install -g nuxeo-cli \
    && ln -s /opt/nuxeo/server /distribution
RUN mkdir -p /opt/nuxeo/server/packages/store
RUN chown -R 1000:1000 /opt/nuxeo/server/packages

USER 1000

CMD ["nuxeoctl","console"]

