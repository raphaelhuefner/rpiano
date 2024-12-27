#!/usr/bin/env bash

THIS_DIR="`dirname $0`"

sudo cp $THIS_DIR/audio-group-limits.conf /etc/security/limits.d/audio-group-limits.conf
