
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-delphi-mrr-msgs";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/rolling/delphi_mrr_msgs/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "2ef08886929646af6804ba0c880588226404ba2e986cb9b5ab4fba46ab0c4b62";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message definitions for the Delphi MRR'';
    license = with lib.licenses; [ mit ];
  };
}
