
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-udp-msgs";
  version = "0.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/iron/udp_msgs/0.0.3-6.tar.gz";
    name = "0.0.3-6.tar.gz";
    sha256 = "ae5cdf27985fbb5be0a12aaf1e51df3edeb1f794417c43a8b742ce139a9f4888";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 udp_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
