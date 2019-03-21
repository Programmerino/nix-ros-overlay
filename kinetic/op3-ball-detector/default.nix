
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, usb-cam, boost, uvc-camera, libyamlcpp, image-transport, sensor-msgs, catkin, cv-bridge, roslib, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp, opencv3, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-ball-detector";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/op3_ball_detector/0.1.0-0.tar.gz;
    sha256 = "8bb00a403db528463977ca3d432f4be635d27c91366963b156f37116f1930e86";
  };

  propagatedBuildInputs = [ boost usb-cam uvc-camera libyamlcpp image-transport sensor-msgs cv-bridge roslib message-runtime dynamic-reconfigure std-msgs roscpp opencv3 geometry-msgs ];
  nativeBuildInputs = [ boost libyamlcpp image-transport sensor-msgs cv-bridge catkin roslib message-generation dynamic-reconfigure std-msgs roscpp opencv3 geometry-msgs ];

  meta = {
    description = ''This package implements a circle-like shape detector of the input image.
    It requires and input image and publish, at frame rate, a marked image
    and a stamped array of circle centers and radius.'';
    #license = lib.licenses.Apache 2.0;
  };
}
