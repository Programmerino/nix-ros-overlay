
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-ros-wild";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/yuma-m/ros_wild-release/archive/release/kinetic/ros_wild/0.5.0-0.tar.gz;
    sha256 = "ea43f367a00c522865e27057ba95a348b032185da70b24d2da57e2c8b24d2d48";
  };

  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin rospy ];

  meta = {
    description = ''The ros_wild package'';
    #license = lib.licenses.BSD;
  };
}
