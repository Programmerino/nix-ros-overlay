
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, clang, cmake, doxygen, eigen, eigenpy, git, hpp-fcl, python3, python3Packages, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-pinocchio";
  version = "2.6.17-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/pinocchio-ros-release/archive/release/noetic/pinocchio/2.6.17-1.tar.gz";
    name = "2.6.17-1.tar.gz";
    sha256 = "98e07f341b3610441b36dd0aa1dc6bcf38b4cc381b364682778f999102a77d7b";
  };

  buildType = "cmake";
  buildInputs = [ clang cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen eigenpy hpp-fcl python3 python3Packages.numpy urdfdom ];
  nativeBuildInputs = [ clang cmake ];

  meta = {
    description = ''A fast and flexible implementation of Rigid Body Dynamics algorithms and their analytical derivatives.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
