
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-control, catkin, robot-state-publisher, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-romeo-control";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-aldebaran/romeo_virtual-release/archive/release/kinetic/romeo_control/0.2.3-0.tar.gz;
    sha256 = "848e63185fa4e2a33d2dfc121418759f40ab710d81b6bb804cc92fcbc0dbb5d4";
  };

  propagatedBuildInputs = [ ros-control robot-state-publisher ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control for Aldebaran's ROMEO robot'';
    #license = lib.licenses.BSD;
  };
}
