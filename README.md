## Supervisor Dockerfile


This repository contains **Dockerfile** of [Supervisor](http://supervisord.org/) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/dockerfile/supervisor/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dockerfile/supervisor/) from public [Docker Registry](https://index.docker.io/): `docker pull dockerfile/supervisor`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/supervisor" github.com/dockerfile/supervisor`)


### Usage

    docker run -it --rm dockerfile/supervisor

#### Run with custom config directory

    docker run -d -v <config-dir>:/etc/supervisor/conf.d dockerfile/supervisor
