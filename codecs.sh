#!/bin/bash
dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-plugin-libav --exclude=gstreamer1-plugins-bad-free-devel --allowerasing --skip-broken
dnf install -y lame\* --exclude=lame-devel --allowerasing --skip-broken
dnf group upgrade -y --with-optional Multimedia --allowerasing --skip-broken
dnf install -y ffmpeg ffmpeg-libs