
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, pybind11-vendor, python-cmake-module, pythonPackages, rcl-interfaces, rclpy, rosbag2-compression, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-transport, rosidl-runtime-py, rpyutils, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbag2-py";
  version = "0.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_py/0.15.7-1.tar.gz";
    name = "0.15.7-1.tar.gz";
    sha256 = "cfab04c1ccdf2b47c96bf0d97e5331da23cd8725174fde43958ed6a2cf8d81b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common pythonPackages.pytest rcl-interfaces rclpy rosbag2-storage-default-plugins rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ pybind11-vendor rosbag2-compression rosbag2-cpp rosbag2-storage rosbag2-transport rpyutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''Python API for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
