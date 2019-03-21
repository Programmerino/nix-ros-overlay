
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-kinetic-gencpp";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/gencpp-release/archive/release/kinetic/gencpp/0.6.0-0.tar.gz;
    sha256 = "666e560bae5fc371b3cff19f9943548c46caa665ae099f437f7dc2b8a0e665be";
  };

  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''C++ ROS message and service generators.'';
    #license = lib.licenses.BSD;
  };
}
