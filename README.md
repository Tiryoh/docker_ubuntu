# docker_ubuntu

![](https://img.shields.io/docker/automated/tiryoh/ubuntu.svg)
![](https://img.shields.io/docker/build/tiryoh/ubuntu.svg)
![](https://img.shields.io/docker/pulls/tiryoh/ubuntu.svg)

## Description

Dockerfile of Ubuntu images

https://hub.docker.com/r/tiryoh/ubuntu/

## Requirements

* Docker

## Revisions

* trusty-bash
  * official ubuntu image(ubuntu:trusty) + wget + curl + git + build-essential + vim
  * Default user is non-root.  Check [Usage](#usage).
* xenial-bash
  * official ubuntu image(ubuntu:xenial) + wget + curl + git + build-essential + vim
  * Default user is non-root.  Check [Usage](#usage).
* bionic-bash
  * official ubuntu image(ubuntu:bionic) + wget + curl + git + build-essential + vim
  * Default user is non-root.  Check [Usage](#usage).
* trusty
  * trusty-bash + [oneliners](https://github.com/Tiryoh/oneliners) + [dotfiles](https://github.com/Tiryoh/dotfiles)
* xenial
  * xenial-bash + [oneliners](https://github.com/Tiryoh/oneliners) + [dotfiles](https://github.com/Tiryoh/dotfiles)
* bionic
  * bionic-bash + [oneliners](https://github.com/Tiryoh/oneliners) + [dotfiles](https://github.com/Tiryoh/dotfiles)
* dev-trusty
  * trusty + NOPASSWD
* dev-xenial
  * xenial + NOPASSWD
* dev-bionic
  * bionic + NOPASSWD
* latest(master)
  * same as xenial

## Usage

First, pull docker image.
```
docker pull tiryoh/ubuntu:<revision>
```

And then, run docker containter.  Add `--rm` option to remove containter image when you exit the containter.
```
docker run -it --rm tiryoh/ubuntu:<revision>
```

Default username is "ubuntu", password is "ubuntu".

## License

This repository is licensed under the MIT license, see [LICENSE](./LICENSE).

Unless attributed otherwise, everything in this repository is under the MIT license.
