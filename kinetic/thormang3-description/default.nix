
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urg-node, sensor-msgs, catkin, rviz, robot-state-publisher, roscpp, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-description";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Common-release/archive/release/kinetic/thormang3_description/0.2.0-0.tar.gz;
    sha256 = "19cb524c61e39215e833148d1ca807ea927d785178efdff954344f9586f7ff3f";
  };

  propagatedBuildInputs = [ urg-node rviz robot-state-publisher sensor-msgs roscpp joint-state-publisher ];
  nativeBuildInputs = [ sensor-msgs roscpp catkin ];

  meta = {
    description = ''3D models of the Thormang3 for simulation and visualization'';
    #license = lib.licenses.Apache 2.0;
  };
}
