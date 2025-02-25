
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb }:
buildRosPackage {
  pname = "ros-humble-gtsam";
  version = "4.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/humble/gtsam/4.2.0-2.tar.gz";
    name = "4.2.0-2.tar.gz";
    sha256 = "97dff3599fc0054ee071aeb74be671a63d71ac05a9da4ef31995b3df2eb61983";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
