
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rcpputils, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mqtt-client";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/humble/mqtt_client/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a644d682d807ccfaaf1084c2b2793c9e39ab55b523da17f8fead561db69632b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ mqtt-client-interfaces paho-mqtt-c paho-mqtt-cpp rclcpp rcpputils ros-environment std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
