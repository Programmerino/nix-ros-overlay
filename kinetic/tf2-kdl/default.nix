
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, cmake-modules, catkin, tf2-ros, rostest, tf2, eigen }:
buildRosPackage {
  pname = "ros-kinetic-tf2-kdl";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_kdl/0.5.20-0.tar.gz;
    sha256 = "e31080e4c92067ac7a8120216e539d4414e659d3fcf29f5d8f28458f30334f46";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2 orocos-kdl tf2-ros eigen ];
  nativeBuildInputs = [ tf2 cmake-modules orocos-kdl eigen catkin tf2-ros ];

  meta = {
    description = ''KDL binding for tf2'';
    #license = lib.licenses.BSD;
  };
}
