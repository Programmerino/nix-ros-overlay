
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-geometry, laser-geometry, pcl-conversions, rclcpp, rclcpp-components, ros-environment, rtabmap, rtabmap-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-conversions";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_conversions/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "9ebb1f4b01982b7fb62cc0d5b29bae555328dcc822143f31f1494daa3e9799a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-geometry laser-geometry pcl-conversions rclcpp rclcpp-components rtabmap rtabmap-msgs sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's conversions package. This package can be used to convert rtabmap_msgs's msgs into RTAB-Map's library objects.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
