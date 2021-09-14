# A Development Environment for Pandoc

This Git repository contains a Dockerfile that allows you to develop Pandoc
without littering your base OS with Haskell.

## Installation

First, build the Docker image by running `make build`. This is going to build a
Docker image with GHC, Cabal, Stack, and Pandoc using [ghcup][1]. This should
take less than 5 minutes. You can list the installed image and its size by
running `docker images`.

 [1]: https://www.haskell.org/ghcup/

## Usage

Next, run `docker run -it witiko/pandoc-devenv`. This is going to create a
Docker container and open bash in a directory containing [the source code of
the current Pandoc][2]. Try running `make quick` to build and unit-test Pandoc;
this should take about 15 minutes.

 [2]: https://github.com/jgm/pandoc/

## Uninstallation

To uninstall the Docker image and container, first run `docker ps -a` to list
your Docker container. Use the command `docker rm CONTAINER_NAME` to remove
your containers. When there are no Docker containers for the Docker image, you
can remove the Docker image by running `docker rmi witiko/pandoc-devenv`.
