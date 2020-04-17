load-module module-jack-source client_name=main-mic channels=2 connect=0
load-module module-jack-source client_name=obs-mic1 channels=1 connect=0
load-module module-jack-source client_name=obs-mic2 channels=2 connect=0
load-module module-jack-source client_name=obs-desktop channels=2 connect=0
load-module module-jack-source client_name=obs-caller channels=2 connect=0
load-module module-jack-sink sink_name=caller-audio client_name=caller-audio channels=2 connect=0
load-module module-jack-sink sink_name=pulse-main client_name=pulse-main channels=2 connect=0

