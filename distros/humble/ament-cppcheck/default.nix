
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cppcheck";
  version = "0.12.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cppcheck/0.12.7-2.tar.gz";
    name = "0.12.7-2.tar.gz";
    sha256 = "b7c9e0121f96db669be06730e44ed237ac378bb73c0b6f0923dc3419bf1d7c1a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
