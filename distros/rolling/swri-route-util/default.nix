
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, marti-common-msgs, marti-nav-msgs, rclcpp, swri-geometry-util, swri-math-util, swri-roscpp, swri-transform-util, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-swri-route-util";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_route_util/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "75898b6340fd45eb58888c20c79ad403e0d24cbd2beea413167bdc206b504829";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost marti-common-msgs marti-nav-msgs rclcpp swri-geometry-util swri-math-util swri-roscpp swri-transform-util tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
