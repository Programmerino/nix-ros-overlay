
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-foxglove-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_foxglove_msgs-release/archive/release/rolling/foxglove_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "29e1e0d7cb63f1531f3183173d3d0a12dd62d202dcb097c3ad39ff47dd03eb7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''foxglove_msgs provides visualization messages that are supported by Foxglove Studio.'';
    license = with lib.licenses; [ mit ];
  };
}
