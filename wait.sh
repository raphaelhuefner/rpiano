#!/usr/bin/env bash

AUDIO_OUTPUT_DEVICE="${AUDIO_OUTPUT_DEVICE:-plughw:0}"
MIDI_INPUT_DEVICE="${MIDI_INPUT_DEVICE:-hw:1,0,0}"

AUDIO_OUTPUT_DEVICE_REGEXP="${AUDIO_OUTPUT_DEVICE//:/.*}"

while true; do
    IS_AUDIO_UP=`aplay -L | grep "${AUDIO_OUTPUT_DEVICE_REGEXP}"`
    IS_MIDI_UP=`amidi -l | grep "${MIDI_INPUT_DEVICE}"`

    if [[ -n "${IS_AUDIO_UP}" && -n "${IS_MIDI_UP}" ]]; then
        break
    fi

    echo "IS_AUDIO_UP == ${IS_AUDIO_UP}"
    echo "IS_MIDI_UP == ${IS_MIDI_UP}"

    wait 1
done
