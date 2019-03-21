
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, sensor-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-laptop-battery-monitor";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/kinetic/laptop_battery_monitor/0.2.0-0.tar.gz;
    sha256 = "eb337688407be5b0f8f30323d371dd0ab0dff36506cda1f1fd89d4b145b0693c";
  };

  propagatedBuildInputs = [ diagnostic-msgs sensor-msgs rospy ];
  nativeBuildInputs = [ diagnostic-msgs sensor-msgs catkin ];

  meta = {
    description = ''Simple script to check battery status'';
    #license = lib.licenses.BSD;
  };
}
