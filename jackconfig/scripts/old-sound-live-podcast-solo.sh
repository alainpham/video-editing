#!/bin/sh
cd $(dirname $0)
echo "Shutting down all existing jackd and alsa_in"
killall -9 jackd >/dev/null 2>&1
killall -9 alsa_in >/dev/null 2>&1
killall -9 alsa_out >/dev/null 2>&1
killall -9 calfjackhost  >/dev/null 2>&1
sleep 1
echo "Starting jack"
nohup jackd -dalsa -dhw:USB -r44100 -p1024 -n2 </dev/null >/dev/null 2>&1 &
sleep 10
echo "Restart pulseaudio"
pulseaudio -k
sleep 10
echo "Start CalfStudio"
nohup calfjackhost -l calf-live-podcast.xml </dev/null >/dev/null 2>&1 &
echo "Start alsa_out for dock"
nohup alsa_out -j dock -d hw:USB_1 -r 44100 </dev/null >/dev/null 2>&1 &
sleep 2
echo "Make connections"
aj-snapshot -r jack-live-podcast-solo.xml
