# x264-true-lossless

mkv

movflags=+faststart acodec=flac vcodec=libx264 intra=1 vb=0 g=1 bf=0 preset=ultrafast crf=0 coder=ac pix_fmt=yuv444p

#  x265-lossless

movflags=+faststart vcodec=libx265 acodec=flac preset=ultrafast x265-params=lossless=1

# intel quick sync

vaapi_device=/dev/dri/renderD128 vcodec=h264_vaapi qp=%quality acodec=flac

# Preview renderint

vf=format=nv12|vaapi,hwupload,scale_vaapi=w=1280:h=720 vaapi_device=/dev/dri/renderD128 vcodec=h264_vaapi qp=28


# config files are in folder share

//home/apham/.local/share/kdenlive/

/home/apham/.config/kdenlive-appimagerc

kdenlive-layoutsrc
