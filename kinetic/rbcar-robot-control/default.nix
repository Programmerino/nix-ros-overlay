
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, sensor-msgs, catkin, robotnik-msgs, roscpp, diagnostic-updater, nav-msgs, diagnostic-msgs, tf, ackermann-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-robot-control";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_robot_control/1.0.4-1.tar.gz;
    sha256 = "cde4c04a409cb516dc98db02a20f54c8e72222aa28cdf82511125c4757f5cfaa";
  };

  propagatedBuildInputs = [ roscpp nav-msgs geometry-msgs sensor-msgs tf robotnik-msgs ackermann-msgs ];
  nativeBuildInputs = [ geometry-msgs tf sensor-msgs catkin robotnik-msgs diagnostic-updater nav-msgs diagnostic-msgs roscpp ackermann-msgs ];

  meta = {
    description = ''The rbcar_robot_control package'';
    #license = lib.licenses.BSD;
  };
}
