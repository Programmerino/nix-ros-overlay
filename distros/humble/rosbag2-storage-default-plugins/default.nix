
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-storage, rosbag2-test-common, sqlite3-vendor, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage-default-plugins";
  version = "0.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_storage_default_plugins/0.15.7-1.tar.gz";
    name = "0.15.7-1.tar.gz";
    sha256 = "c983f95374a1b388d387fa298d0f616d6082c969ac9e8ab3d846b004d5c3dd4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils rosbag2-storage sqlite3-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSBag2 SQLite3 storage plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}
