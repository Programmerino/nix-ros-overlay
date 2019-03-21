
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, camera-info-manager, image-transport, sensor-msgs, catkin, diagnostic-updater, libfreenect, dynamic-reconfigure, nodelet, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-kinetic-freenect-camera";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/kinetic/freenect_camera/0.4.2-0.tar.gz;
    sha256 = "671ddb218106633626d497ab69fd7ccc2efaef187d2db5ae557ac9aa91873c7b";
  };

  propagatedBuildInputs = [ pluginlib camera-info-manager image-transport sensor-msgs diagnostic-updater libfreenect dynamic-reconfigure nodelet roscpp log4cxx ];
  nativeBuildInputs = [ pluginlib camera-info-manager image-transport sensor-msgs catkin diagnostic-updater libfreenect dynamic-reconfigure nodelet roscpp log4cxx ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect.  This is
    a port of the OpenNI driver that uses libfreenect instead, because
    on some systems with some devices it works better.'';
    #license = lib.licenses.BSD;
  };
}
