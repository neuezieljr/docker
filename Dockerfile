#
# Debian/Ubuntu image build server
#

FROM ubuntu:latest

RUN \
    apt-get update && \
    apt-get install live-build lsb-release genisoimage --yes && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /build

VOLUME "/images" "/cache"
COPY create-image /bin/create-image
COPY config.ini /build/config.ini

WORKDIR /build
CMD [ "/bin/create-image", "--config", "/build/config.ini" ]

