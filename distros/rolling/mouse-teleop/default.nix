
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-mouse-teleop";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/mouse_teleop/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "de07a73d38bda23a712868a68995a5f3e9d55330dbfaff06a3ab968f2512f351";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rclpy ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
