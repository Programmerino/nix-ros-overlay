
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, libcurl-vendor, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ntrip-client-node";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/rolling/ntrip_client_node/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "575b331217a7f10f311eb4e511d934e94a382b198950aefcb04cdcb708cec92e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libcurl-vendor rclcpp rclcpp-components rtcm-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Publishes RTCM ntrip messages from an external mountpoint'';
    license = with lib.licenses; [ asl20 ];
  };
}
