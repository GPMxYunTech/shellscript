#!/bin/bash
# Forklift Controller
gnome-terminal --tab --command "source ~/gpm_project/devel/setup.bash" --command "rosrun car_motion_base car_motion_base"
sleep 1

# 3D-LiDAR Driver
gnome-terminal --tab --command "source ~/3dlidar_ws/devel/setup.bash" --command "roslaunch velodyne_pointcloud VLP16_points.launch"
sleep 1

# Localization
gnome-terminal --tab --command "source ~/3dlidar_ws/devel/setup.bash" --command "roslaunch hdl_graph_slam hdl_graph_navigation.launch"
sleep 1

# Navigation
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch car_controller navigation_3DLiDAR.launch"
sleep 1

# Realsense Up Down
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch apriltag_ros Camera_Up_Down.launch"
sleep 1

# AprilTag Up
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch apriltag_ros up_continuous_detection.launch"
sleep 1

# AprilTag Down
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch apriltag_ros down_continuous_detection.launch"
sleep 1

# PBVS Server
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch forklift_server PBVS_server.launch"
sleep 1

# Topology Map 
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch forklift_server Topology_map.launch" --command "LD1"
sleep 1

# Control Server
gnome-terminal --tab --command "source ~/common_ws/devel/setup.bash" --command "roslaunch forklift_server ctrl_server.launch"


