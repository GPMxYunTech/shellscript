#!/bin/bash
# Forklift Controller
gnome-terminal -t "Forklift Controller" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch car_controller carlike_driver.launch'
sleep 1

# # 3D-LiDAR Driver
gnome-terminal -t "3D-LiDAR Driver" -x bash -c 'source ~/3dlidar_ws/devel/setup.bash;roslaunch velodyne_pointcloud VLP16_points.launch'
sleep 1

# Localization
gnome-terminal -t "Localization" -x bash -c 'source ~/3dlidar_ws/devel/setup.bash;roslaunch hdl_graph_slam Meteor_hdl_graph_navigation.launch'
sleep 1

# Navigation
gnome-terminal -t "Navigation" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch car_controller Meteor_navigation_3DLiDAR.launch'
sleep 1

# Realsense Up Down
gnome-terminal -t "Realsense" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch realsense2_camera LiDAR_meteor_2xD435.launch'
sleep 1

# AprilTag Up
gnome-terminal -t "AprilTag Up" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch apriltag_ros Meteor_up_continuous_detection.launch'
sleep 1

# AprilTag Down
gnome-terminal -t "AprilTag Down" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch apriltag_ros Meteor_down_continuous_detection.launch'
sleep 1

# PBVS Server
gnome-terminal -t "PBVS Server" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server PBVS_server_meteorcar.launch'
sleep 1

# Topology Map 
gnome-terminal -t "Topology Map" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server Topology_map_meteorcar.launch;LD4'
sleep 1

# Control Server
gnome-terminal -t "Control Server" -x bash -c 'source ~/common_ws/devel/setup.bash;roslaunch forklift_server ctrl_server_meteorcar.launch'


