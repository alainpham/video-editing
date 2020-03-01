Generate luts from 3d lut files to png for OBS.

fmpeg -i /usr/share/obs/obs-plugins/obs-filters/LUTs/original.png -vf lut3d='YOURLUT.cube'  outlut.png
