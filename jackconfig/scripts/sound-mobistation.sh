#!/bin/sh
cd $(dirname $0)
killall zita-j2a
sleep 2
nohup zita-j2a -d hw:PCH,0 >/dev/null 2>&1 &
sleep 2
nohup ardour6 h1-solo </dev/null >/dev/null 2>&1 &
