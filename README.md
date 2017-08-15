## Ubuntu image builder

This **Dockerfile** creates a ubuntu image with live-build and build script to help building Ubuntu images

### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Modify config.ini and config your image.

2. Build your docker image from Dockerfile: `docer build -t dockerfile/livebuilder .`)

### Usage

* To run live-build in the docker, you have to run docker with --privileged mode.
* Images will be created in /images, you can ceate a share folder link with option: `-v <image-dir-on-host>:/pypi`

Put together:

    docker run -i -v --privileged <image-dir-on-host>:/images dockerfile/livebuilder
