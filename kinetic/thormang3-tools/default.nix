
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, thormang3-offset-tuner-server, catkin, thormang3-action-editor }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-tools";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/thormang3_tools/0.2.0-0.tar.gz;
    sha256 = "55de89f8bbd4038866d2466cd72c1fcd7e8cfb0fe7fa30ec5586c1b88c6513a6";
  };

  propagatedBuildInputs = [ thormang3-offset-tuner-server thormang3-action-editor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_tools (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}
