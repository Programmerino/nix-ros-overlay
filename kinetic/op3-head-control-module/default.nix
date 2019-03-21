
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, sensor-msgs, catkin, roscpp, robotis-math, eigen, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-op3-head-control-module";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_head_control_module/0.2.1-0.tar.gz;
    sha256 = "e15b5e6bbd7f152fa92cb9a85361014f3c88defb93bddaab20fea1b72e254ab2";
  };

  propagatedBuildInputs = [ cmake-modules boost sensor-msgs roscpp robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ cmake-modules boost sensor-msgs catkin roscpp robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];

  meta = {
    description = ''The op3_head_control_module package'';
    #license = lib.licenses.Apache 2.0;
  };
}
