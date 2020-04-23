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

* trusty-core(trusty-bash)
  * official ubuntu image(ubuntu:trusty) + wget + curl + git + build-essential + vim
  * Default user is non-root.  Check [Usage](#usage).
* xenial-core(xenial-bash)
  * official ubuntu image(ubuntu:xenial) + wget + curl + git + build-essential + vim
  * Default user is non-root.  Check [Usage](#usage).
* bionic-core(bionic-bash)
  * official ubuntu image(ubuntu:bionic) + wget + curl + git + build-essential + vim
  * Default user is non-root.  Check [Usage](#usage).
* focal-core(focal-bash)
  * official ubuntu image(ubuntu:focal) + wget + curl + git + build-essential + vim
  * Default user is non-root.  Check [Usage](#usage).
* trusty
  * trusty-core + [oneliners](https://github.com/Tiryoh/oneliners) + [dotfiles](https://github.com/Tiryoh/dotfiles)
* xenial
  * xenial-core + [oneliners](https://github.com/Tiryoh/oneliners) + [dotfiles](https://github.com/Tiryoh/dotfiles)
* bionic
  * bionic-core + [oneliners](https://github.com/Tiryoh/oneliners) + [dotfiles](https://github.com/Tiryoh/dotfiles)
* focal
  * focal-core + [oneliners](https://github.com/Tiryoh/oneliners) + [dotfiles](https://github.com/Tiryoh/dotfiles)
* trusty-dev(dev-trusty)
  * trusty + NOPASSWD
* xenial-dev(dev-xenial)
  * xenial + NOPASSWD
* bionic-dev(dev-bionic)
  * bionic + NOPASSWD
* focal-dev(dev-bionic)
  * focal + NOPASSWD
* latest(master)
  * same as bionic

## Usage

Default username is "ubuntu", password is "ubuntu".

Run docker containter.  Add `--rm` option to remove the containter when you exit it.

```sh
docker run -it --rm tiryoh/ubuntu:<revision>
```


## License

(C) 2016 - 2020 Tiryoh

This repository is licensed under the MIT license, see [LICENSE](./LICENSE).  
Unless attributed otherwise, everything in this repository is under the MIT license.
