
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest }:
buildRosPackage {
  pname = "ros-humble-libcreate";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/libcreate-release/archive/release/humble/libcreate/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "3cf2407f36fe3114a8a64b99e7e24462a2c47542cb6f71269326fe92a25cb18e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ library for interfacing with iRobot's Create 1 and Create 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
