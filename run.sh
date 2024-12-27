#!/usr/bin/env bash

amixer cset iface=MIXER,name='PCM Playback Volume' 100%

fluidsynth -C0 -R0 -r22050 -c2 -z512 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=32 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /home/raphael/soundfonts/U20PIANO.SF2



