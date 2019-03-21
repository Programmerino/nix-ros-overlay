
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, catkin, rviz, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-description";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_description/0.3.1-0.tar.gz;
    sha256 = "debef5edf788e777acecf282eb4b771057b34f989b0e45539451b6ea369858a1";
  };

  propagatedBuildInputs = [ rviz joint-state-publisher robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulator_h_description package
    This package includes URDF model of ROBOTIS MANIPULATOR-H.
    Additionally, we provide full kinematics and dynamics information of each link.'';
    #license = lib.licenses.Apache 2.0;
  };
}
