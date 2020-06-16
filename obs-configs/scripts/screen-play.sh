sudo modprobe v4l2loopback exclusive_caps=1
#v4l2-ctl -d /dev/video6 -c keep_format=0
#v4l2-ctl -d /dev/video6 -c sustain_framerate=0
#v4l2-ctl -d /dev/video6 -c timeout_image_io=0
#v4l2-ctl -d /dev/video6 -c timeout=0
v4l2-ctl -d /dev/video6 -c timeout=2000
v4l2loopback-ctl set-timeout-image /home/workdrive/TAZONE/WORKSPACES/ws-video/video-production/obs-configs/artwork/background-bird.png /dev/video6/
v4l2loopback-ctl set-fps "24000/1001" /dev/video6
ffmpeg -f x11grab -r 24000/1001 -s 1920x1080 -i :0.0+1080,420 -vcodec rawvideo  -threads 0 -f v4l2 /dev/video6 &
ffplay -noborder -left 3720 /dev/video6 &
