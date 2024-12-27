#!/usr/bin/env bash

USERNAME=`whoami`
USER_SYSTEMD_DIR=/home/$USERNAME/.config/systemd/user

# TODO Only disable linger if USER_SYSTEMD_DIR has no other files.
loginctl disable-linger $USERNAME

rm $USER_SYSTEMD_DIR/rpiano.service
