#!/bin/bash

# For Fedora Server
dnf groupinstall -y GNOME Desktop Environment

dnf install -y openssh-server openssh mc htop python3 lm_sensors lm_sensors-libs java-latest-openjdk java-17-openjdk java-17-openjdk-headless java-17-openjdk-devel java-11-openjdk java-1.8.0-openjdk java-1.8.0-openjdk-openjfx java-1.8.0-openjdk-openjfx-devel
dnf install flatpack -y
dnf install -y NetworkManager-ssh-gnome NetworkManager-openvpn-gnome NetworkManager-vpnc-gnome NetworkManager-openconnect-gnome NetworkManager-l2tp-gnome
