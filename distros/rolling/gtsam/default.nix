
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, tbb }:
buildRosPackage {
  pname = "ros-rolling-gtsam";
  version = "4.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam-release/archive/release/rolling/gtsam/4.2.0-4.tar.gz";
    name = "4.2.0-4.tar.gz";
    sha256 = "2a26bc1c17b89a7e1b412e0e596a4d2c6c9543d769ece271144b27136dd2593b";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake eigen tbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''gtsam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
