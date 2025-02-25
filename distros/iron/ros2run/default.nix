
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-iron-ros2run";
  version = "0.25.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/iron/ros2run/0.25.3-1.tar.gz";
    name = "0.25.3-1.tar.gz";
    sha256 = "7dec4ce515a575e8c28ff868ad3282dcb95941e793a12be88d017199dddb7b32";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
