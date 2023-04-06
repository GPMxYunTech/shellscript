#!/bin/bash
gnome-terminal --tab --command "cd ~/I7565H1H2_Linux_Library" --command "sudo ./I7565H1H2_install"
sleep 1
gnome-terminal --command "sudo chmod 777 /dev/ttyUSB0" --command "sudo chmod 777 /dev/ttyUSB1"