
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-rosidl-cli";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_cli/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "cf9355cf33e8b5b1b0f051a335b8e97d3a5866f2052fea654ce9aa2d4d3643f3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata ];

  meta = {
    description = ''Command line tools for ROS interface generation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
