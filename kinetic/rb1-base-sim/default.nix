
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rb1-base-gazebo, catkin, rb1-base-control, rb1-base-purepursuit, rb1-base-2dnav }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-sim";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/kinetic/rb1_base_sim/1.0.2-0.tar.gz;
    sha256 = "686efb3caeb68eca53580dcd53fbe68ba9293357193318404b27cc1f7b8902a9";
  };

  propagatedBuildInputs = [ rb1-base-control rb1-base-2dnav rb1-base-purepursuit rb1-base-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_sim metapackage'';
    #license = lib.licenses.BSD;
  };
}
