# fluidsynth -a alsa -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2  -d -v -C0 -R0 -r22050 -z8192 -o audio.alsa.device=plughw:0 -o synth.polyphony=64 -l

# fluidsynth -C0 -R0 -r22050 -z8192 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=64 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2 -d -v

# fluidsynth -C0 -R0 -r22050 -z1024 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=32 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2

# fluidsynth -C0 -R0 -r22050 -c2 -z512 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=32 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2


# WORKS!!!!
fluidsynth -C0 -R0 -r22050 -c2 -z512 -l -a alsa -o audio.alsa.device=plughw:0 -o synth.polyphony=32 -m alsa_raw -o midi.alsa.device=hw:1,0,0 -g 1.0 /home/raphael/soundfonts/U20PIANO.SF2

