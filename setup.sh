#!/usr/bin/env bash

USERNAME=raphael

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

sudo cp ./audio-priority.conf /etc/security/limits.d/audio-priority.conf
cp ./rpiano.service /home/$USERNAME/.config/systemd/user/rpiano.service

loginctl enable-linger $USERNAME
