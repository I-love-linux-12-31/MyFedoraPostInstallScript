#!/bin/bash
if (( $EUID == 0 )); then
    echo "Please NOT run main.sh as root. "
    exit 1
fi

sudo bash ./main_root.sh

cp ./res/.bashrc_user ~/.bashrc

bash ./flatpack_software.sh

echo -e "\033[32mDone\033[0m. Reboot computer (recommended) or logout\n"