#!/bin/bash
gnome-terminal -t "Install Driver" --working-directory=/home/user/I7565H1H2_Linux_Library -e './I7565H1H2_install'
sleep 1
gnome-terminal -t "Give Permission" -x bash -c 'chmod 777 /dev/ttyUSB0;chmod 777 /dev/ttyUSB1'
sleep 1