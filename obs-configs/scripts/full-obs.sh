mate-terminal  -t VIS --profile="vis" --geometry="172x36+2000+2000" -e vis
sudo modprobe v4l2loopback exclusive_caps=1
#v4l2-ctl -d /dev/video6 -c keep_format=0
#v4l2-ctl -d /dev/video6 -c sustain_framerate=0
#v4l2-ctl -d /dev/video6 -c timeout_image_io=0
#v4l2-ctl -d /dev/video6 -c timeout=0
v4l2-ctl -d /dev/video8 -c timeout=2000
v4l2loopback-ctl set-timeout-image /home/workdrive/TAZONE/WORKSPACES/ws-video/video-production/obs-configs/artwork/background-bird.png /dev/video8/
v4l2loopback-ctl set-fps "24000/1001" /dev/video8
obs &
