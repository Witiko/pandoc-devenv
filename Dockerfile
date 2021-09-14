FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    BOOTSTRAP_HASKELL_NONINTERACTIVE=1 \
    BOOTSTRAP_HASKELL_INSTALL_STACK=1

RUN apt-get -qy update \
 && apt-get -qy install \
    build-essential \
    curl \
    git \
    libffi-dev \
    libffi7 \
    libgmp-dev \
    libgmp10 \
    libncurses-dev \
    libncurses5 \
    libtinfo5 \
    libghc-zlib-dev \
    libghc-zlib-bindings-dev \
    vim \
 && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org > get-ghcup.sh \
 && sh get-ghcup.sh && rm get-ghcup.sh \
 && echo 'export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"' >> ~/.bashrc \
 && git clone https://github.com/jgm/pandoc.git /pandoc

WORKDIR /pandoc
