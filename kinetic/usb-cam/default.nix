
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, camera-info-manager, image-transport, sensor-msgs, catkin, ffmpeg, std-msgs, roscpp, v4l_utils }:
buildRosPackage {
  pname = "ros-kinetic-usb-cam";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/usb_cam-release/archive/release/kinetic/usb_cam/0.3.5-0.tar.gz;
    sha256 = "43d0e60d5ed77191015411fbf3d0485f34dc2e2f6d3c60fc574f25c587c7c06b";
  };

  propagatedBuildInputs = [ std-srvs camera-info-manager std-msgs image-transport sensor-msgs roscpp v4l_utils ffmpeg ];
  nativeBuildInputs = [ std-srvs camera-info-manager catkin std-msgs image-transport sensor-msgs roscpp ffmpeg ];

  meta = {
    description = ''A ROS Driver for V4L USB Cameras'';
    #license = lib.licenses.BSD;
  };
}
