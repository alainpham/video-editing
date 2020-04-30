chan=video2

v4l2-ctl -d /dev/$chan -c exposure_auto=1
v4l2-ctl -d /dev/$chan -c exposure_absolute=300
v4l2-ctl -d /dev/$chan -c gain=10
v4l2-ctl -d /dev/$chan -c sharpness=150 
v4l2-ctl -d /dev/$chan -c white_balance_temperature_auto=0
v4l2-ctl -d /dev/$chan -c white_balance_temperature=5000
v4l2-ctl -d /dev/$chan -c focus_auto=0 
v4l2-ctl -d /dev/$chan -c focus_absolute=0 
v4l2-ctl -d /dev/$chan -c power_line_frequency=1

chan=video4

v4l2-ctl -d /dev/$chan -c exposure_auto=1
v4l2-ctl -d /dev/$chan -c exposure_absolute=300
v4l2-ctl -d /dev/$chan -c gain=10
v4l2-ctl -d /dev/$chan -c sharpness=150 
v4l2-ctl -d /dev/$chan -c white_balance_temperature_auto=0
v4l2-ctl -d /dev/$chan -c white_balance_temperature=5000
v4l2-ctl -d /dev/$chan -c focus_auto=0 
v4l2-ctl -d /dev/$chan -c focus_absolute=0 
v4l2-ctl -d /dev/$chan -c power_line_frequency=1
