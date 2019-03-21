
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, trajectory-msgs, joint-limits-interface, catkin, realtime-tools, joint-trajectory-controller, diagnostic-updater, position-controllers, khi-robot-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-control";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_control/1.0.0-0.tar.gz;
    sha256 = "36bee6ec63885991601f72b31dcd0f2f4809874c785d9a73338c432b3bbc0337";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller trajectory-msgs joint-limits-interface joint-trajectory-controller diagnostic-updater position-controllers khi-robot-msgs transmission-interface ];
  nativeBuildInputs = [ controller-manager hardware-interface realtime-tools trajectory-msgs joint-limits-interface catkin diagnostic-updater khi-robot-msgs transmission-interface ];

  meta = {
    description = ''ROS KHI robot controller package based on ros_control'';
    #license = lib.licenses.BSD;
  };
}
