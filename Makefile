.PHONY: build

build:
	DOCKER_BUILDKIT=1 docker build -t witiko/pandoc-devenv .
