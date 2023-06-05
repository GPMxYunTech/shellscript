#!/bin/bash

# Subproject4
gnome-terminal -t "Realsense" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server AntiRolloverMonitoring.launch'
sleep 1
