
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, cppzmq, dynamic-reconfigure, gtest, mrpt2, nav-msgs, protobuf, python3, python3Packages, pythonPackages, ros-environment, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-noetic-mvsim";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/noetic/mvsim/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "fcea023939c08670dcbc373c4f6f9cda2bd5f709d866ca56b6c6610eee9942b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost cppzmq dynamic-reconfigure mrpt2 nav-msgs protobuf python3 python3Packages.protobuf pythonPackages.pybind11 roscpp sensor-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''A lightweight multivehicle simulation framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
