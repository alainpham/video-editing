#!/bin/sh
cd $(dirname $0)
echo "Shutting down all existing jackd and alsa_in"
killall zita-j2a
sleep 2
nohup zita-j2a -d hw:dock >/dev/null 2>&1 &
sleep 2
nohup ardour6 live-podcast </dev/null >/dev/null 2>&1 &
