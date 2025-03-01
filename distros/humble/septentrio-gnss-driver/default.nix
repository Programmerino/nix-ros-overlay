
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-septentrio-gnss-driver";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/septentrio_gnss_driver_ros2-release/archive/release/humble/septentrio_gnss_driver/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "1978cb93f8d9f66781c60dc696a792bea148e07ca7ca72deff1e028516a4c931";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ boost diagnostic-msgs geographiclib geometry-msgs gps-msgs libpcap nav-msgs nmea-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSaic: C++ driver for Septentrio's mosaic receivers and beyond'';
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
