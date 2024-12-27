#!/usr/bin/env bash

USERNAME=`whoami`
USER_SYSTEMD_DIR=/home/$USERNAME/.config/systemd/user

mkdir -p $USER_SYSTEMD_DIR
cp ./rpiano.service $USER_SYSTEMD_DIR/rpiano.service

loginctl enable-linger $USERNAME
