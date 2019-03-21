
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nlopt, cmake-modules, euslisp }:
buildRosPackage {
  pname = "ros-kinetic-eus-nlopt";
  version = "0.1.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_control-release/archive/release/kinetic/eus_nlopt/0.1.14-0.tar.gz;
    sha256 = "8dc3bbf2d760f1b7640478ea00d86468f7d401ff9d453bb939cb42111d691db0";
  };

  propagatedBuildInputs = [ nlopt euslisp ];
  nativeBuildInputs = [ catkin nlopt cmake-modules ];

  meta = {
    description = ''eus_nlopt'';
    #license = lib.licenses.Apache License 2.0;
  };
}
