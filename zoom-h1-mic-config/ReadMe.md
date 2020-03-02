For close song recording. In hardware get the h4 Digital Stero IEC958 INput. 
44.1khz (still having issues with 48khz)
69% gain

For interviews & Multiple people

TBD

Fixed 48khz.

sudo vi /etc/pulse/daemon.conf
and change
default-sample-rate = 48000
remove ; in from of it.
