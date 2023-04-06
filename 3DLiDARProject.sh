#!/bin/bash
gnome-terminal --tab --command "source ~/gpm_project/devel/setup.bash" --command "rosrun car_motion_base car_motion_base"
# Forklift Controller
sleep 1
gnome-terminal --tab --command "source ~/3dlidar_ws/devel/setup.bash" --command "roslaunch velodyne_pointcloud VLP16_points.launch"
# 3D-LiDAR Driver
sleep 1
gnome-terminal --tab --command "source ~/3dlidar_ws/devel/setup.bash" --command "roslaunch hdl_graph_slam hdl_graph_navigation.launch"
# Localization
sleep 1
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch car_controller navigation_3DLiDAR.launch"
# Navigation
sleep 1
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch apriltag_ros Camera_Up_Down.launch"
# Realsense Up Down
sleep 1
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch apriltag_ros up_continuous_detection.launch"
# AprilTag Up
sleep 1
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch apriltag_ros down_continuous_detection.launch"
# AprilTag Down
sleep 1
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch forklift_server PBVS_server.launch"
# PBVS Server
sleep 1
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch forklift_server Topology_map.launch" --command "LD1"
# Topology Map 
sleep 1
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch forklift_server ctrl_server.launch"
# Control Server

