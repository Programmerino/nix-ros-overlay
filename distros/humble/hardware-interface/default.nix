
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, ros2-control-test-assets, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-humble-hardware-interface";
  version = "2.31.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/hardware_interface/2.31.0-1.tar.gz";
    name = "2.31.0-1.tar.gz";
    sha256 = "c67b29d545b9bc6881b68072f605934c958570e2ccba8aa92a93692162624a7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs lifecycle-msgs pluginlib rclcpp-lifecycle rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2_control hardware interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
