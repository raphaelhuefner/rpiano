#!/usr/bin/env bash

THIS_DIR="`dirname $0`"

$THIS_DIR/dotenv-install.sh

$THIS_DIR/debian-pkg-install.sh

$THIS_DIR/audio-group-limits-install.sh

$THIS_DIR/user-service-install.sh
