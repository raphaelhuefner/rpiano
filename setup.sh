#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y \
    alsa-utils \
    bash \
    curl \
    fluid-soundfont-gm \
    fluid-soundfont-gs \
    fluidsynth \
    grep \
    neovim \
    rsync \
    ssh \
    usbutils \
    && \
    echo "install done"
