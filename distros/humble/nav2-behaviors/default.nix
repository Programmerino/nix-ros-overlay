
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-nav2-behaviors";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_behaviors/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "8c744c19538fb858eb83d908bdb8f8d3339d14945b4631a544d1bf573d402819";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common tf2 tf2-geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
