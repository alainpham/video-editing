Alternative exposures with good light

v4l2-ctl -d /dev/$chan -c gain=40
v4l2-ctl -d /dev/$chan -c exposure_absolute=200
v4l2-ctl -d /dev/$chan -c white_balance_temperature=3400

for good quality artificial warm led light in office

chan=video2
chan=video4
v4l2-ctl -d /dev/$chan -c exposure_auto=1
v4l2-ctl -d /dev/$chan -c exposure_absolute=300
v4l2-ctl -d /dev/$chan -c gain=20
v4l2-ctl -d /dev/$chan -c sharpness=150 
v4l2-ctl -d /dev/$chan -c white_balance_temperature_auto=0
v4l2-ctl -d /dev/$chan -c white_balance_temperature=2700 
v4l2-ctl -d /dev/$chan -c focus_auto=0 
v4l2-ctl -d /dev/$chan -c focus_absolute=0 
v4l2-ctl -d /dev/$chan -c power_line_frequency=1


for good quality artificial warm standard light.

chan=video2
chan=video4
v4l2-ctl -d /dev/$chan -c exposure_auto=1
v4l2-ctl -d /dev/$chan -c exposure_absolute=300
v4l2-ctl -d /dev/$chan -c gain=20
v4l2-ctl -d /dev/$chan -c sharpness=150 
v4l2-ctl -d /dev/$chan -c white_balance_temperature_auto=0
v4l2-ctl -d /dev/$chan -c white_balance_temperature=3400 
v4l2-ctl -d /dev/$chan -c focus_auto=0 
v4l2-ctl -d /dev/$chan -c focus_absolute=0 
v4l2-ctl -d /dev/$chan -c power_line_frequency=1

for good quality office space.

v4l2-ctl -d /dev/$chan -c exposure_auto=1
v4l2-ctl -d /dev/$chan -c exposure_absolute=300
v4l2-ctl -d /dev/$chan -c gain=20
v4l2-ctl -d /dev/$chan -c sharpness=150 
v4l2-ctl -d /dev/$chan -c white_balance_temperature_auto=0
v4l2-ctl -d /dev/$chan -c white_balance_temperature=4500 
v4l2-ctl -d /dev/$chan -c focus_auto=0 
v4l2-ctl -d /dev/$chan -c focus_absolute=0 
v4l2-ctl -d /dev/$chan -c power_line_frequency=1

for good quality shady.

v4l2-ctl -d /dev/$chan -c exposure_auto=1
v4l2-ctl -d /dev/$chan -c exposure_absolute=300
v4l2-ctl -d /dev/$chan -c gain=20
v4l2-ctl -d /dev/$chan -c sharpness=150 
v4l2-ctl -d /dev/$chan -c white_balance_temperature_auto=0
v4l2-ctl -d /dev/$chan -c white_balance_temperature=6500 
v4l2-ctl -d /dev/$chan -c focus_auto=0 
v4l2-ctl -d /dev/$chan -c focus_absolute=0 
v4l2-ctl -d /dev/$chan -c power_line_frequency=1
