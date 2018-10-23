FROM nuxeo:9.10
MAINTAINER Vincent Dutat <vincent.dutat@gmail.com>
USER root

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get install -y ant nodejs vim \
    && apt-get install -y xvfb libfontconfig wkhtmltopdf \
    && apt-get update \
    && apt-get install mediainfo iproute2 ffmpeg x264 -y --no-install-recommends \
    && npm install -g nuxeo-cli \
    && ln -s /opt/nuxeo/server /distribution
RUN mkdir -p /opt/nuxeo/server/packages/store
RUN chown -R 1000:1000 /opt/nuxeo/server/packages

# Libre Office 5.14 (does not work)
#RUN apt-get update &&  apt-get install -y software-properties-common
#RUN add-apt-repository ppa:libreoffice/libreoffice-5-4
#RUN apt-get update && apt-get install -y libreoffice

USER 1000

CMD ["nuxeoctl","console"]

