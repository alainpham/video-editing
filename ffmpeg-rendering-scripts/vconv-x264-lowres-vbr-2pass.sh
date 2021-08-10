#!/bin/bash
extension="${1##*.}"
filename="${1%.*}"
#1080p 3904k
#720p  2264k
bitrate=${2:-2264}
ab=${3:-96}
format=${4:-mp4}
width=${5:-1280}

echo "ffmpeg -y -i $1 -preset veryslow -pix_fmt yuv420p -c:v libx264 -b:v ${bitrate}k -x264-params cabac=1:ref=5:analyse=0x133:me=umh:subme=9:chroma-me=1:deadzone-inter=21:deadzone-intra=11:b-adapt=2:rc-lookahead=60:vbv-maxrate=10000:vbv-bufsize=10000:qpmax=69:bframes=5:b-adapt=2:direct=auto:crf-max=51:weightp=2:merange=24:chroma-qp-offset=-1:sync-lookahead=2:psy-rd=1.00,0.15:trellis=2:min-keyint=23:partitions=all -an -pass 1 -f ${format} /dev/null"


ffmpeg -y -i $1 -preset veryslow -pix_fmt yuv420p -vf scale=${width}:-2 -c:v libx264 -b:v ${bitrate}k -x264-params cabac=1:ref=5:analyse=0x133:me=umh:subme=9:chroma-me=1:deadzone-inter=21:deadzone-intra=11:b-adapt=2:rc-lookahead=60:vbv-maxrate=10000:vbv-bufsize=10000:qpmax=69:bframes=5:b-adapt=2:direct=auto:crf-max=51:weightp=2:merange=24:chroma-qp-offset=-1:sync-lookahead=2:psy-rd=1.00,0.15:trellis=2:min-keyint=23:partitions=all -an -pass 1 -f ${format} /dev/null

echo "ffmpeg -i $1 -preset veryslow -pix_fmt yuv420p -c:v libx264 -b:v ${bitrate}k -x264-params cabac=1:ref=5:analyse=0x133:me=umh:subme=9:chroma-me=1:deadzone-inter=21:deadzone-intra=11:b-adapt=2:rc-lookahead=60:vbv-maxrate=10000:vbv-bufsize=10000:qpmax=69:bframes=5:b-adapt=2:direct=auto:crf-max=51:weightp=2:merange=24:chroma-qp-offset=-1:sync-lookahead=2:psy-rd=1.00,0.15:trellis=2:min-keyint=23:partitions=all -c:a aac -b:a ${ab}k -pass 2 -f ${format} ${filename}-x264-vbr${bitrate}k-aac-ab${ab}k.${format}"

ffmpeg -i $1 -preset veryslow -pix_fmt yuv420p -vf scale=${width}:-2 -c:v libx264 -b:v ${bitrate}k -x264-params cabac=1:ref=5:analyse=0x133:me=umh:subme=9:chroma-me=1:deadzone-inter=21:deadzone-intra=11:b-adapt=2:rc-lookahead=60:vbv-maxrate=10000:vbv-bufsize=10000:qpmax=69:bframes=5:b-adapt=2:direct=auto:crf-max=51:weightp=2:merange=24:chroma-qp-offset=-1:sync-lookahead=2:psy-rd=1.00,0.15:trellis=2:min-keyint=23:partitions=all -c:a aac -b:a ${ab}k -pass 2 -f ${format} ${filename}-x264-vbr${bitrate}k-aac-ab${ab}k-720p.${format}
