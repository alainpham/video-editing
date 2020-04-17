load-module module-jack-source channels=1 connect=0
load-module module-jack-source client_name=pulse-h1 channels=2 connect=0
load-module module-jack-source sink_name=obs-desktop client_name=obs-desktop channels=2 connect=0
load-module module-jack-sink sink_name=caller-audio client_name=caller-audio channels=2 connect=
0
load-module module-jack-sink channels=2 connect=0
