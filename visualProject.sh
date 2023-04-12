#!/bin/bash

# # 3D-LiDAR Driver
gnome-terminal -t "3D-LiDAR Driver" -x bash -c 'source ~/3dlidar_ws/devel/setup.bash;roslaunch velodyne_pointcloud VLP16_points.launch'
sleep 1

# Realsense 
gnome-terminal -t "Realsense" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch realsense2_camera rs_camera_agv.launch'
sleep 1

# Localization
gnome-terminal -t "Localization" -x bash -c 'source ~/visual_ws/devel/setup.bash;roslaunch rtabmap_ros agv.launch'
sleep 1

# Forklift Controller
gnome-terminal -t "Forklift Controller" -x bash -c 'source ~/gpm_project/devel/setup.bash;rosrun car_motion_base car_motion_base'
sleep 1

# Navigation
gnome-terminal -t "Navigation" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch car_controller navigation_Visual.launch'
sleep 1

# AprilTag Up
gnome-terminal -t "AprilTag Up" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch apriltag_ros up_continuous_detection.launch'
sleep 1

# AprilTag Down
gnome-terminal -t "AprilTag Down" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch apriltag_ros down_continuous_detection.launch'
sleep 1

# PBVS Server
gnome-terminal -t "PBVS Server" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server PBVS_server_visual.launch'
sleep 1

# Topology Map 
gnome-terminal -t "Topology Map" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server Topology_map_visual.launch;LD4'
sleep 1

# Control Server
gnome-terminal -t "Control Server" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server ctrl_server_visual.launch'


