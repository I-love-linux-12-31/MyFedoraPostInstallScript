#!/bin/bash
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf group update core -y
dnf config-manager --set-enabled fedora-cisco-openh264 -y
dnf install gstreamer1-plugin-openh264 mozilla-openh264 -y