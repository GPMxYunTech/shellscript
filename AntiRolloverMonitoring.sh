#!/bin/bash

# IMU
gnome-terminal -t "Navigation" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch realsense2_camera IMU_Camera.launch'
sleep 1

# Subproject4
gnome-terminal -t "Realsense" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server AntiRolloverMonitoring.launch'
sleep 1
