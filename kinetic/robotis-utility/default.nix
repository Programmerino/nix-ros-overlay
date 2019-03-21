
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-madplay-player, catkin, ros-mpg321-player }:
buildRosPackage {
  pname = "ros-kinetic-robotis-utility";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-Utility-release/archive/release/kinetic/robotis_utility/0.1.3-0.tar.gz;
    sha256 = "5247743fab258a1a79a71b20ad0b472e757b9d8762faba9c1941e07fb6ff8721";
  };

  propagatedBuildInputs = [ ros-madplay-player ros-mpg321-player ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the ROBOTIS Utility (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}
