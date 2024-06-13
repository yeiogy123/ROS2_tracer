#!/bin/bash
source ~/ros2_ws/src/ugv_sdk/scripts/bringup_can2usb_500k.bash
colcon build
source ~/ros2_ws/install/setup.bash
gnome-terminal -e "sh open_sensor.sh"
sleep 2
gnome-terminal -e "sh navigation.sh"
sleep 2
rviz2