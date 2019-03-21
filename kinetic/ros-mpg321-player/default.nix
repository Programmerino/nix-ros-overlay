
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ros-mpg321-player";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-Utility-release/archive/release/kinetic/ros_mpg321_player/0.1.3-0.tar.gz;
    sha256 = "8d6783a5578afb7f436d8139c5b72bf8190882905738b9eaf055bc22ca91349a";
  };

  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ std-msgs catkin roscpp ];

  meta = {
    description = ''This package is a node that can playing mp3 file.
    This package is using mpg321 which is command-line mp3 player.'';
    #license = lib.licenses.Apache 2.0;
  };
}
