#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install libqt4-dev pkg-config -y
cd /usr/src
#wget http://developer.download.nvidia.com/embedded/L4T/r21_Release_v4.0/source/kernel_src.tbz2
#wget https://developer.nvidia.com/embedded/dlc/l4t-Jetson-TK1-Kernel-Sources-R21-5 -O ~/Downloads/kernel_src.tbz2
#tar -xvf ~/Downloads/kernel_src.tbz2
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.3.4/jetson-tk1-grinch-21.3.4-source.tar.bz2
sudo tar -C /usr/src -vxjf jetson-tk1-grinch-21.3.4-source.tar.bz2
sudo ln -s /usr/src/linux-grinch-21.3.4 /usr/src/kernel
cd kernel
zcat /proc/config.gz > .config
make xconfig



