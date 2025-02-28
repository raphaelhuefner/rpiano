#!/usr/bin/env bash

# fluidsynth -a alsa -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2  -d -v -C0 -R0 -r22050 -z8192 -o audio.alsa.device=plughw:0 -o synth.polyphony=64 -l

# fluidsynth -C0 -R0 -r22050 -z8192 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=64 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2 -d -v

# fluidsynth -C0 -R0 -r22050 -z1024 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=32 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2

# fluidsynth -C0 -R0 -r22050 -c2 -z512 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=32 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2

AUDIO_OUTPUT_DEVICE="${AUDIO_OUTPUT_DEVICE:-plughw:0}"
MIDI_INPUT_DEVICE="${MIDI_INPUT_DEVICE:-hw:1,0,0}"
SOUNDFONT_FILE="${SOUNDFONT_FILE:-/usr/share/sounds/sf2/default-GM.sf2}"

# WORKS!!!!
fluidsynth \
    --chorus=0 \
    --reverb=0 \
    --gain=1.0 \
    --sample-rate=22050 \
    --audio-bufcount=2 \
    --audio-bufsize=512 \
    --no-shell \
    --server \
    --audio-driver=alsa \
    --midi-driver=alsa_raw \
    -o audio.alsa.device=${AUDIO_OUTPUT_DEVICE} \
    -o synth.polyphony=32 \
    -o midi.alsa.device=${MIDI_INPUT_DEVICE} \
    ${SOUNDFONT_FILE}
