#!/bin/bash
extension="${1##*.}"
filename="${1%.*}"
qp=14
format=mkv

echo "ffmpeg -threads 6 -vaapi_device /dev/dri/renderD128 -hwaccel vaapi -hwaccel_output_format vaapi -i $1 -vf 'format=nv12|vaapi,hwupload' -vcodec h264-vaapi -qp ${qp}  -acodec copy ${filename}-h264_vaapi-qp${qp}-pcm_f32le-MASTER.${format}"

ffmpeg -threads 6 -vaapi_device /dev/dri/renderD128 -hwaccel vaapi -hwaccel_output_format vaapi -i $1 -vf 'format=nv12|vaapi,hwupload' -vcodec h264_vaapi -qp ${qp}  -acodec copy ${filename}-h264-vaapi-qp${qp}-pcm_f32le-MASTER.${format}
