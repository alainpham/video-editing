#!/bin/sh
pactl load-module module-jack-source client_name=from-jack-mic1-to-pulse channels=2 connect=0
pactl load-module module-jack-source client_name=from-jack-for-pulse-caller channels=2 connect=0
pactl load-module module-jack-source client_name=to-obs-mic1 channels=1 connect=0
pactl load-module module-jack-source client_name=to-obs-mic2 channels=1 connect=0
pactl load-module module-jack-source client_name=to-obs-desktop channels=2 connect=0
pactl load-module module-jack-source client_name=to-obs-caller channels=2 connect=0
pactl load-module module-jack-source client_name=pulse-vis channels=2 connect=0
pactl load-module module-jack-sink sink_name=from-pulse-caller-to-jack client_name=from-pulse-caller-to-jack channels=2 connect=0
pactl load-module module-jack-sink sink_name=from-pulse-desktop-to-jack client_name=from-pulse-desktop-to-jack channels=2 connect=0
pacmd set-default-sink from-pulse-desktop-to-jack
pacmd set-default-source from-jack-mic1-to-pulse
nohup zita-j2a -d hw:dock >/dev/null 2>&1 &
sleep 4
nohup ardour5 /home/workdrive/TAZONE/WORKSPACES/ws-video/video-production/live-audio/ >/dev/null 2>&1 &
