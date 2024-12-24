

mkdir soundfonts
fluidsynth --help
fluidsynth -d
fluidsynth --help
fluidsynth -d -m alsa_seq
fluidsynth -d -m alsa_seq -p alsa_seq
fluidsynth --help
fluidsynth -d -m alsa_seq -p alsa_seq -o midi.autoconnect=1
fluidsynth -d -m alsa_seq -o midi.autoconnect=1
fluidsynth -d -m alsa_seq -o midi.autoconnect=1 -v
amidi -l
fluidsynth --help
fluidsynth -V
fluidsynth -a pulseaudio -m alsa_seq -o midi.autoconnect=1 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2 
fluidsynth -a pulseaudio -m alsa_raw -o midi.alsa.device=hw:2,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2 
fluidsynth -a pulseaudio -m alsa_raw -o midi.alsa.device=hw:2,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2  -d -v
fluidsynth -h
fluidsynth -a alsa -m alsa_raw -o midi.alsa.device=hw:2,0,0 -g 1.0 /usr/share/sounds/sf2/default-GM.sf2  -d -v
amixer 
amixer -h
amixer scontrols
amixer scontents
amixer -h
amixer controls
amixer contents
amixer cset iface=MIXER,name='PCM Playback Volume' 100%
alsamixer
sudo apt-get install nvim


