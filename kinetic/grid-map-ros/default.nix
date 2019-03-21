
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, geometry-msgs, rosbag, cv-bridge, catkin, sensor-msgs, roscpp, nav-msgs, visualization-msgs, std-msgs, grid-map-msgs, tf, grid-map-cv }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-ros";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_ros/1.6.1-0.tar.gz;
    sha256 = "adc1ac725ccf3ecd3a0a537d21b12fd33d88b38e8a286d8566766a24dc26e1ac";
  };

  propagatedBuildInputs = [ grid-map-core geometry-msgs rosbag sensor-msgs cv-bridge roscpp nav-msgs visualization-msgs std-msgs grid-map-msgs tf grid-map-cv ];
  nativeBuildInputs = [ grid-map-core geometry-msgs rosbag sensor-msgs cv-bridge catkin roscpp nav-msgs visualization-msgs std-msgs grid-map-msgs tf grid-map-cv ];

  meta = {
    description = ''ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.'';
    #license = lib.licenses.BSD;
  };
}
