#!/usr/bin/env bash

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install -y \
    alsa-utils \
    bash \
    curl \
    fluid-soundfont-gm \
    fluid-soundfont-gs \
    fluidsynth \
    git \
    grep \
    neovim \
    rsync \
    ssh \
    usbutils \
    && \
    echo "install done"
