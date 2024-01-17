#!/bin/bash
if (( $EUID != 0 )); then
    echo "[main_root.sh] Please run this script as root."
    exit 1
fi
bash ./base_system.sh
bash ./repos.sh

bash ./compilers_and_build_utils.sh
bash ./cpp_libs.sh
bash ./python_libs.sh

bash ./codecs.sh
bash ./graphics_libs.sh

bash ./styles.sh
bash ./useful_software.sh

echo -e "fastestmirror=True\nmax_parallel_downloads=10" >> /etc/dnf/dnf.conf

dnf update -y


