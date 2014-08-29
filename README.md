## Supervisor Dockerfile


This repository contains **Dockerfile** of [Supervisor](http://supervisord.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/supervisor/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/supervisor/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerfile/supervisor`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/supervisor" github.com/dockerfile/supervisor`)


### Usage

    docker run -it --rm dockerfile/supervisor

#### Run with custom config directory

    docker run -d -v <config-dir>:/etc/supervisor/conf.d dockerfile/supervisor
