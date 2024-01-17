#!/bin/bash
if (( $EUID == 0 )); then
    echo "Please NOT run main.sh as root. "
    exit 1
fi
sudo bash ./main_root.sh
cp ./res/.bashrc_user ~/.bashrc
