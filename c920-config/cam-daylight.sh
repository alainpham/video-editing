gain=${1:-30}
wb=${2:-3500}
cam_list="video0 video2 video4 video6"

for chan in $cam_list
do
v4l2-ctl -d /dev/$chan -c exposure_auto=1
v4l2-ctl -d /dev/$chan -c exposure_absolute=300
v4l2-ctl -d /dev/$chan -c gain=$gain

v4l2-ctl -d /dev/$chan -c sharpness=150 
v4l2-ctl -d /dev/$chan -c white_balance_temperature_auto=0
v4l2-ctl -d /dev/$chan -c white_balance_temperature=$wb
v4l2-ctl -d /dev/$chan -c focus_auto=0 
v4l2-ctl -d /dev/$chan -c focus_absolute=0 
v4l2-ctl -d /dev/$chan -c power_line_frequency=1
done
