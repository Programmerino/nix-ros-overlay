
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-dynamic-typesupport, rosidl-dynamic-typesupport-fastrtps, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-fastrtps-shared-cpp";
  version = "7.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/rolling/rmw_fastrtps_shared_cpp/7.5.0-1.tar.gz";
    name = "7.5.0-1.tar.gz";
    sha256 = "e62451a18f7cbc16e6f18e15a5b4ef2b168538eedc93899efb30a3cddde178b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-runtime-c ];
  checkInputs = [ ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common rosidl-dynamic-typesupport rosidl-dynamic-typesupport-fastrtps rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = ''Code shared on static and dynamic type support of rmw_fastrtps_cpp.'';
    license = with lib.licenses; [ asl20 ];
  };
}
